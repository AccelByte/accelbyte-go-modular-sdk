// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package inventoryclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsSaveItemToInventoryReq Apimodels save item to inventory req
//
// swagger:model Apimodels save item to inventory req.
type ApimodelsSaveItemToInventoryReq struct {

	// customattributes
	// Required: true
	CustomAttributes interface{} `json:"customAttributes"`

	// qty
	// Required: true
	// Format: int32
	Qty *int32 `json:"qty"`

	// servercustomattributes
	// Required: true
	ServerCustomAttributes interface{} `json:"serverCustomAttributes"`

	// slotid
	// Required: true
	SlotID *string `json:"slotId"`

	// slotused
	// Required: true
	// Format: int32
	SlotUsed *int32 `json:"slotUsed"`

	// source
	// Enum: ['ECOMMERCE', 'OTHER']
	// Required: true
	Source *string `json:"source"`

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

// Validate validates this Apimodels save item to inventory req
func (m *ApimodelsSaveItemToInventoryReq) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateQty(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSlotID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSlotUsed(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSource(formats); err != nil {
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

func (m *ApimodelsSaveItemToInventoryReq) validateQty(formats strfmt.Registry) error {

	if err := validate.Required("qty", "body", m.Qty); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsSaveItemToInventoryReq) validateSlotID(formats strfmt.Registry) error {

	if err := validate.Required("slotId", "body", m.SlotID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsSaveItemToInventoryReq) validateSlotUsed(formats strfmt.Registry) error {

	if err := validate.Required("slotUsed", "body", m.SlotUsed); err != nil {
		return err
	}

	return nil
}

var apimodelsSaveItemToInventoryReqTypeSourcePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ECOMMERCE", "OTHER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		apimodelsSaveItemToInventoryReqTypeSourcePropEnum = append(apimodelsSaveItemToInventoryReqTypeSourcePropEnum, v)
	}
}

const (

	// ApimodelsSaveItemToInventoryReqSourceECOMMERCE captures enum value "ECOMMERCE"
	ApimodelsSaveItemToInventoryReqSourceECOMMERCE string = "ECOMMERCE"

	// ApimodelsSaveItemToInventoryReqSourceOTHER captures enum value "OTHER"
	ApimodelsSaveItemToInventoryReqSourceOTHER string = "OTHER"
)

// prop value enum
func (m *ApimodelsSaveItemToInventoryReq) validateSourceEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, apimodelsSaveItemToInventoryReqTypeSourcePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ApimodelsSaveItemToInventoryReq) validateSource(formats strfmt.Registry) error {

	if err := validate.Required("source", "body", m.Source); err != nil {
		return err
	}

	// value enum
	if err := m.validateSourceEnum("source", "body", *m.Source); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsSaveItemToInventoryReq) validateSourceItemID(formats strfmt.Registry) error {

	if err := validate.Required("sourceItemId", "body", m.SourceItemID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsSaveItemToInventoryReq) validateTags(formats strfmt.Registry) error {

	if err := validate.Required("tags", "body", m.Tags); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsSaveItemToInventoryReq) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsSaveItemToInventoryReq) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsSaveItemToInventoryReq) UnmarshalBinary(b []byte) error {
	var res ApimodelsSaveItemToInventoryReq
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
