// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package inventoryclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsCreateInventoryReq Apimodels create inventory req
//
// swagger:model Apimodels create inventory req.
type ApimodelsCreateInventoryReq struct {

	// inventoryconfigurationcode
	// Required: true
	InventoryConfigurationCode *string `json:"inventoryConfigurationCode"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Apimodels create inventory req
func (m *ApimodelsCreateInventoryReq) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateInventoryConfigurationCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsCreateInventoryReq) validateInventoryConfigurationCode(formats strfmt.Registry) error {

	if err := validate.Required("inventoryConfigurationCode", "body", m.InventoryConfigurationCode); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateInventoryReq) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsCreateInventoryReq) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsCreateInventoryReq) UnmarshalBinary(b []byte) error {
	var res ApimodelsCreateInventoryReq
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
