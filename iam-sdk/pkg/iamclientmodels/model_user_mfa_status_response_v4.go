// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelUserMFAStatusResponseV4 Model user MFA status response V4
//
// swagger:model Model user MFA status response V4.
type ModelUserMFAStatusResponseV4 struct {

	// defaultfactor
	DefaultFactor string `json:"defaultFactor,omitempty"`

	// enabled
	// Required: true
	Enabled *bool `json:"enabled"`

	// enabledfactors
	EnabledFactors []string `json:"enabledFactors,omitempty"`
}

// Validate validates this Model user MFA status response V4
func (m *ModelUserMFAStatusResponseV4) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEnabled(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUserMFAStatusResponseV4) validateEnabled(formats strfmt.Registry) error {

	if err := validate.Required("enabled", "body", m.Enabled); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserMFAStatusResponseV4) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserMFAStatusResponseV4) UnmarshalBinary(b []byte) error {
	var res ModelUserMFAStatusResponseV4
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
