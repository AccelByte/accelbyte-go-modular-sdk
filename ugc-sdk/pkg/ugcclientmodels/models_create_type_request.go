// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package ugcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsCreateTypeRequest Models create type request
//
// swagger:model Models create type request.
type ModelsCreateTypeRequest struct {

	// subtype
	// Required: true
	Subtype []string `json:"subtype"`

	// type
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Models create type request
func (m *ModelsCreateTypeRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSubtype(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsCreateTypeRequest) validateSubtype(formats strfmt.Registry) error {

	if err := validate.Required("subtype", "body", m.Subtype); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateTypeRequest) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsCreateTypeRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsCreateTypeRequest) UnmarshalBinary(b []byte) error {
	var res ModelsCreateTypeRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
