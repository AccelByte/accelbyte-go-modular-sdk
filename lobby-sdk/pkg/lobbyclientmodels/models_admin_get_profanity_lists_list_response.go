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

// ModelsAdminGetProfanityListsListResponse Models admin get profanity lists list response
//
// swagger:model Models admin get profanity lists list response.
type ModelsAdminGetProfanityListsListResponse struct {

	// isenabled
	// Required: true
	IsEnabled *bool `json:"isEnabled"`

	// ismandatory
	// Required: true
	IsMandatory *bool `json:"isMandatory"`

	// name
	// Required: true
	Name *string `json:"name"`
}

// Validate validates this Models admin get profanity lists list response
func (m *ModelsAdminGetProfanityListsListResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateIsEnabled(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsMandatory(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsAdminGetProfanityListsListResponse) validateIsEnabled(formats strfmt.Registry) error {

	if err := validate.Required("isEnabled", "body", m.IsEnabled); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAdminGetProfanityListsListResponse) validateIsMandatory(formats strfmt.Registry) error {

	if err := validate.Required("isMandatory", "body", m.IsMandatory); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAdminGetProfanityListsListResponse) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAdminGetProfanityListsListResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAdminGetProfanityListsListResponse) UnmarshalBinary(b []byte) error {
	var res ModelsAdminGetProfanityListsListResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
