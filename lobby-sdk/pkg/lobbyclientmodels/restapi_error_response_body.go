// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package lobbyclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// RestapiErrorResponseBody Restapi error response body
//
// swagger:model Restapi error response body.
type RestapiErrorResponseBody struct {

	// errorcode
	// Required: true
	// Format: int32
	ErrorCode *int32 `json:"ErrorCode"`

	// errormessage
	// Required: true
	ErrorMessage *string `json:"ErrorMessage"`
}

// Validate validates this Restapi error response body
func (m *RestapiErrorResponseBody) Validate(formats strfmt.Registry) error {
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

func (m *RestapiErrorResponseBody) validateErrorCode(formats strfmt.Registry) error {

	if err := validate.Required("ErrorCode", "body", m.ErrorCode); err != nil {
		return err
	}

	return nil
}

func (m *RestapiErrorResponseBody) validateErrorMessage(formats strfmt.Registry) error {

	if err := validate.Required("ErrorMessage", "body", m.ErrorMessage); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RestapiErrorResponseBody) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RestapiErrorResponseBody) UnmarshalBinary(b []byte) error {
	var res RestapiErrorResponseBody
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
