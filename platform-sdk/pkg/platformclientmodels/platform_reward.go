// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// PlatformReward platform reward
//
// swagger:model PlatformReward
type PlatformReward struct {

	// required if type is CURRENCY
	Currency *PlatformRewardCurrency `json:"currency,omitempty"`

	// required if type is ITEM, can be fulfilled by itemId or itemSku
	Item *PlatformRewardItem `json:"item,omitempty"`

	// quantity if type is ITEM, amount if type is CURRENCY
	Quantity int32 `json:"quantity,omitempty"`

	// reward type
	// Enum: [CURRENCY ITEM]
	Type string `json:"type,omitempty"`
}

// Validate validates this platform reward
func (m *PlatformReward) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCurrency(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateItem(formats); err != nil {
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

func (m *PlatformReward) validateCurrency(formats strfmt.Registry) error {

	if swag.IsZero(m.Currency) { // not required
		return nil
	}

	if m.Currency != nil {
		if err := m.Currency.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("currency")
			}
			return err
		}
	}

	return nil
}

func (m *PlatformReward) validateItem(formats strfmt.Registry) error {

	if swag.IsZero(m.Item) { // not required
		return nil
	}

	if m.Item != nil {
		if err := m.Item.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("item")
			}
			return err
		}
	}

	return nil
}

var platformRewardTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CURRENCY","ITEM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		platformRewardTypeTypePropEnum = append(platformRewardTypeTypePropEnum, v)
	}
}

const (

	// PlatformRewardTypeCURRENCY captures enum value "CURRENCY"
	PlatformRewardTypeCURRENCY string = "CURRENCY"

	// PlatformRewardTypeITEM captures enum value "ITEM"
	PlatformRewardTypeITEM string = "ITEM"
)

// prop value enum
func (m *PlatformReward) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, platformRewardTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PlatformReward) validateType(formats strfmt.Registry) error {

	if swag.IsZero(m.Type) { // not required
		return nil
	}

	// value enum
	if err := m.validateTypeEnum("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PlatformReward) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PlatformReward) UnmarshalBinary(b []byte) error {
	var res PlatformReward
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
