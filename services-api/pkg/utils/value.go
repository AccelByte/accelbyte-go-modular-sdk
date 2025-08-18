// Copyright (c) 2025 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

// Ptr returns a pointer to the given value.
func Ptr[T any](v T) *T {
	return &v
}

// Val returns the value of the given pointer.
// If the pointer is nil, it returns the zero value of T.
func Val[T any](p *T) T {
	if p == nil {
		var zero T

		return zero
	}

	return *p
}

// ValOr returns the value of the given pointer.
// If the pointer is nil, it returns the provided default value.
func ValOr[T any](p *T, def T) T {
	if p == nil {
		return def
	}

	return *p
}

// Ptrs converts a slice of values into a slice of pointers.
func Ptrs[T any](vals []T) []*T {
	res := make([]*T, len(vals))
	for i := range vals {
		res[i] = &vals[i]
	}

	return res
}

// Vals converts a slice of pointers into a slice of values.
// Nil pointers are replaced with the zero value of T.
func Vals[T any](ptrs []*T) []T {
	res := make([]T, len(ptrs))
	for i, p := range ptrs {
		if p != nil {
			res[i] = *p
		} else {
			var zero T
			res[i] = zero
		}
	}

	return res
}

// ValsOr converts a slice of pointers into a slice of values.
// Nil pointers are replaced with the provided default value.
func ValsOr[T any](ptrs []*T, def T) []T {
	res := make([]T, len(ptrs))
	for i, p := range ptrs {
		if p != nil {
			res[i] = *p
		} else {
			res[i] = def
		}
	}

	return res
}

// PtrMap converts a map of values into a map of pointers.
func PtrMap[K comparable, V any](vals map[K]V) map[K]*V {
	res := make(map[K]*V, len(vals))
	for k, v := range vals {
		valCopy := v // prevent pointer reuse
		res[k] = &valCopy
	}

	return res
}

// ValMap converts a map of pointers into a map of values.
// Nil pointers are replaced with the zero value of V.
func ValMap[K comparable, V any](ptrs map[K]*V) map[K]V {
	res := make(map[K]V, len(ptrs))
	for k, p := range ptrs {
		if p != nil {
			res[k] = *p
		} else {
			var zero V
			res[k] = zero
		}
	}

	return res
}

// ValMapOr converts a map of pointers into a map of values.
// Nil pointers are replaced with the provided default value.
func ValMapOr[K comparable, V any](ptrs map[K]*V, def V) map[K]V {
	res := make(map[K]V, len(ptrs))
	for k, p := range ptrs {
		if p != nil {
			res[k] = *p
		} else {
			res[k] = def
		}
	}

	return res
}
