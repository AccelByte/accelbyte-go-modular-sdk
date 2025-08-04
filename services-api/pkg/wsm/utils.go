package wsm

import (
	"encoding/json"
	"fmt"
	"reflect"
	"strings"
)

// region Convert

// ConvertValueIntoType attempts to convert an interface{} to a value of type T.
//
// Parameters:
// - v: the input value of any type.
// - checkPointer: if true, allows de-referencing if v is a *T.
func ConvertValueIntoType[T any](v interface{}, checkPointer bool) (T, bool) {
	var zero T

	if value, ok := v.(T); ok {
		return value, true
	}

	if checkPointer {
		val := reflect.ValueOf(v)
		if val.Kind() == reflect.Ptr && !val.IsNil() {
			elem := val.Elem()
			if elem.Type().AssignableTo(reflect.TypeOf(zero)) {
				return elem.Interface().(T), true
			}
		}
	}

	return zero, false
}

func ConvertMapToString(v any) (string, error) {
	j, err := json.Marshal(v)
	if err != nil {
		return "", err
	}

	return string(j), nil
}

func ConvertSliceToString(elem []string) string {
	return strings.Join(elem, ",")
}

// endregion Convert

// region ExtractMap

func ExtractMap[T any](m map[string]interface{}, key string, coerce bool, conv func(interface{}) (T, bool)) (map[string]T, bool, error) {
	var zero T

	raw, exists := m[key]
	if !exists {
		return nil, false, nil
	}

	var temp map[string]interface{}

	switch val := raw.(type) {
	case map[string]interface{}:
		temp = val
	case string:
		if coerce {
			if err := json.Unmarshal([]byte(val), &temp); err != nil {
				return nil, true, fmt.Errorf("value for key %q is a string but is not valid JSON string: %v", key, err)
			}
		} else {
			return nil, true, fmt.Errorf("value for key %q is a string but coercion is disabled", key)
		}
	default:
		rv := reflect.ValueOf(raw)
		if rv.Kind() != reflect.Map || rv.Type().Key().Kind() != reflect.String {
			temp = make(map[string]interface{}, rv.Len())
			for _, mapKey := range rv.MapKeys() {
				k := mapKey.String()
				v := rv.MapIndex(mapKey).Interface()
				temp[k] = v
			}
		} else {
			return nil, true, fmt.Errorf("value for key %q is not a valid map or a JSON string: %T", key, raw)
		}
	}

	result := make(map[string]T, len(temp))
	for k, v := range temp {
		converted, ok := conv(v)
		if !ok {
			return nil, true, fmt.Errorf("error converting value <%v> from %T into %T for key %q", v, v, zero, k)
		}

		result[k] = converted
	}

	return result, true, nil
}

func ExtractAnyMap(m map[string]interface{}, key string, coerce bool) (map[string]interface{}, bool, error) {
	return ExtractMap(m, key, coerce, func(v interface{}) (interface{}, bool) {
		return v, true
	})
}

func ExtractInt64Map(m map[string]interface{}, key string, coerce bool) (map[string]int64, bool, error) {
	return ExtractMap(m, key, coerce, func(v interface{}) (int64, bool) {
		return ConvertValueIntoType[int64](v, true)
	})
}

func ExtractUint64Map(m map[string]interface{}, key string, coerce bool) (map[string]uint64, bool, error) {
	return ExtractMap(m, key, coerce, func(v interface{}) (uint64, bool) {
		return ConvertValueIntoType[uint64](v, true)
	})
}

func ExtractStringMap(m map[string]interface{}, key string, coerce bool) (map[string]string, bool, error) {
	return ExtractMap(m, key, coerce, func(v interface{}) (string, bool) {
		return ConvertValueIntoType[string](v, true)
	})
}

// endregion ExtractMap

// region ExtractSlice

func ExtractSlice[T any](m map[string]interface{}, key string, coerce bool, conv func(interface{}) (T, bool)) ([]T, bool, error) {
	raw, exists := m[key]
	if !exists {
		return nil, false, nil
	}

	var temp []interface{}

	switch val := raw.(type) {
	case []interface{}:
		temp = val
	case string:
		if coerce {
			s := strings.TrimSpace(val)
			if len(s) < 2 || s[0] != '[' || s[len(s)-1] != ']' {
				return nil, true, fmt.Errorf("value for key %q is a string but is not in expected [a,b,c] format", key)
			}
			s = s[1 : len(s)-1]
			if strings.TrimSpace(s) == "" {
				temp = []interface{}{}
			} else {
				parts := strings.Split(s, ",")
				temp = make([]interface{}, len(parts))
				for index, part := range parts {
					temp[index] = strings.TrimSpace(part)
				}
			}
		} else {
			return nil, true, fmt.Errorf("value for key %q is a string but coercion is disabled", key)
		}
	default:
		return nil, true, fmt.Errorf("value for key %q is not an array or coercible string: %T", key, raw)
	}

	result := make([]T, 0, len(temp))
	for index, element := range temp {
		if elem, ok := conv(element); ok {
			result = append(result, elem)
		} else {
			return nil, true, fmt.Errorf("element at index %d in key %q has invalid type: %T", index, key, elem)
		}
	}

	return result, true, nil
}

func ExtractAnySlice(m map[string]interface{}, key string, coerce bool) ([]interface{}, bool, error) {
	return ExtractSlice[interface{}](m, key, coerce, func(v interface{}) (interface{}, bool) {
		return v, true
	})
}

func ExtractInt64Slice(m map[string]interface{}, key string, coerce bool) ([]int64, bool, error) {
	return ExtractSlice[int64](m, key, coerce, func(v interface{}) (int64, bool) {
		return ConvertValueIntoType[int64](v, true)
	})
}

func ExtractUint64Slice(m map[string]interface{}, key string, coerce bool) ([]uint64, bool, error) {
	return ExtractSlice[uint64](m, key, coerce, func(v interface{}) (uint64, bool) {
		return ConvertValueIntoType[uint64](v, true)
	})
}

func ExtractStringSlice(m map[string]interface{}, key string, coerce bool) ([]string, bool, error) {
	return ExtractSlice[string](m, key, coerce, func(v interface{}) (string, bool) {
		return ConvertValueIntoType[string](v, true)
	})
}

// endregion ExtractSlice

func ExtractValue[T any](m map[string]interface{}, key string) (T, bool, error) {
	var zero T

	if t1, exists := m[key]; exists {
		if t2, ok := ConvertValueIntoType[T](t1, true); ok {
			return t2, true, nil
		} else {
			return zero, true, fmt.Errorf("failed to convert %v (%T) into %T", t1, t1, zero)
		}
	}

	return zero, false, nil
}

func SplitMessageIntoMap(s string) (map[string]interface{}, error) {
	result := make(map[string]interface{})
	s = strings.TrimSpace(s)
	s = strings.ReplaceAll(s, "\r\n", "\n")
	lines := strings.Split(s, "\n")
	for index, line := range lines {
		line = strings.TrimSpace(line)
		if line == "" {
			continue
		}
		parts := strings.SplitN(line, ":", 2)
		if len(parts) != 2 {
			return nil, fmt.Errorf("invalid (key: value) format at line %d: %s", index, line)
		}
		key := strings.TrimSpace(parts[0])
		value := strings.TrimSpace(parts[1])
		result[key] = value
	}

	return result, nil
}

type LegacyCommand struct {
	Name  string
	Alias string
	Short string
}
