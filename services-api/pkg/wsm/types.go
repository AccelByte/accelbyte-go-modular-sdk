// Copyright (c) 2025 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package wsm

import (
	"fmt"
)

type Message interface {
	Type() string
	String() string
	SafeString() (string, error)
}

type NewMessageFromMapFunc func(m map[string]interface{}) (Message, error)

func WrapNewMessageFromMapFunc[T any](fn func(map[string]interface{}) (*T, error)) NewMessageFromMapFunc {
	return func(m map[string]interface{}) (Message, error) {
		msg, err := fn(m)
		if err != nil {
			return nil, err
		}

		if result, ok := any(msg).(Message); ok {
			return result, nil
		}

		return nil, fmt.Errorf("*%T does not implement Message", msg)
	}
}

type NewMessageFromMap map[string]NewMessageFromMapFunc

func (r NewMessageFromMap) New(typeName string, m map[string]interface{}) (Message, error) {
	fn, exists := r[typeName]
	if !exists {
		return nil, fmt.Errorf("unknown message type: %s", typeName)
	}

	return fn(m)
}

type MissingFieldError struct {
	GoField    string
	GoType     string
	JSONField  string
	StructName string
}

func (e MissingFieldError) Error() string {
	return fmt.Sprintf("missing required field %q (%s) [%s] in struct %q", e.GoField, e.JSONField, e.GoType, e.StructName)
}

func NewMissingFieldError(goField, goType, jsonField, structName string) MissingFieldError {
	return MissingFieldError{
		GoField:    goField,
		GoType:     goType,
		JSONField:  jsonField,
		StructName: structName,
	}
}
