// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package achievementclientmodels

import (
	"fmt"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsErrorDetails Models error details
//
// swagger:model Models error details.
type ModelsErrorDetails struct {

	// errorcode
	// Required: true
	// Format: int32
	ErrorCode *int32 `json:"errorCode"`

	// errormessage
	// Required: true
	ErrorMessage *string `json:"errorMessage"`

	// thirdpartyreferenceid
	ThirdPartyReferenceID string `json:"thirdPartyReferenceId,omitempty"`
}

// Validate validates this Models error details
func (m *ModelsErrorDetails) Validate(formats strfmt.Registry) error {
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

func (m *ModelsErrorDetails) validateErrorCode(formats strfmt.Registry) error {

	if err := validate.Required("errorCode", "body", m.ErrorCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsErrorDetails) validateErrorMessage(formats strfmt.Registry) error {

	if err := validate.Required("errorMessage", "body", m.ErrorMessage); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsErrorDetails) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsErrorDetails) UnmarshalBinary(b []byte) error {
	var res ModelsErrorDetails
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}

func (m *ModelsErrorDetails) TranslateToApiError() (*ApiError, error) {
	return &ApiError{Code: fmt.Sprint(*m.ErrorCode), Message: *m.ErrorMessage}, nil
}
