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

// ApimodelsUpdateItem Apimodels update item
//
// swagger:model Apimodels update item.
type ApimodelsUpdateItem struct {

	// customattributes
	// Required: true
	CustomAttributes interface{} `json:"customAttributes"`

	// inventoryid
	// Required: true
	InventoryID *string `json:"inventoryId"`

	// servercustomattributes
	// Required: true
	ServerCustomAttributes interface{} `json:"serverCustomAttributes"`

	// slotid
	// Required: true
	SlotID *string `json:"slotId"`

	// sourceitemid
	// Required: true
	SourceItemID *string `json:"sourceItemId"`

	// tags
	// Required: true
	Tags []string `json:"tags"`

	// type
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Apimodels update item
func (m *ApimodelsUpdateItem) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateInventoryID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSlotID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSourceItemID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTags(formats); err != nil {
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

func (m *ApimodelsUpdateItem) validateInventoryID(formats strfmt.Registry) error {

	if err := validate.Required("inventoryId", "body", m.InventoryID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateItem) validateSlotID(formats strfmt.Registry) error {

	if err := validate.Required("slotId", "body", m.SlotID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateItem) validateSourceItemID(formats strfmt.Registry) error {

	if err := validate.Required("sourceItemId", "body", m.SourceItemID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateItem) validateTags(formats strfmt.Registry) error {

	if err := validate.Required("tags", "body", m.Tags); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateItem) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsUpdateItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsUpdateItem) UnmarshalBinary(b []byte) error {
	var res ApimodelsUpdateItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
