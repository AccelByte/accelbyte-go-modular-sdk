// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchmakingclientmodels

import (
	"fmt"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ResponseErrorV1 Response error V1
//
// swagger:model Response error V1.
type ResponseErrorV1 struct {

	// errorcode
	// Required: true
	// Format: int32
	ErrorCode int32 `json:"errorCode"`

	// errormessage
	// Required: true
	ErrorMessage string `json:"errorMessage"`
}

// Validate validates this Response error V1
func (m *ResponseErrorV1) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateErrorCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateErrorMessage(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ResponseErrorV1) validateErrorCode(formats strfmt.Registry) error {

	if err := validate.Required("errorCode", "body", m.ErrorCode); err != nil {
		return err
	}

	return nil
}

func (m *ResponseErrorV1) validateErrorMessage(formats strfmt.Registry) error {

	if err := validate.Required("errorMessage", "body", m.ErrorMessage); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ResponseErrorV1) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ResponseErrorV1) UnmarshalBinary(b []byte) error {
	var res ResponseErrorV1
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

func (m *ResponseErrorV1) TranslateToApiError() (*ApiError, error) {
	return &ApiError{Code: fmt.Sprint(m.ErrorCode), Message: m.ErrorMessage}, nil
}
