// Code generated by go-swagger; DO NOT EDIT.

package basicclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// Action A DTO object for equ8 action.
//
// swagger:model Action
type Action struct {

	// color
	Color string `json:"color,omitempty"`

	// action description
	Description string `json:"description,omitempty"`

	// action duration
	Duration int64 `json:"duration,omitempty"`

	// icon
	Icon string `json:"icon,omitempty"`

	// action id
	ID int32 `json:"id,omitempty"`

	// action name
	Name string `json:"name,omitempty"`

	// action priority
	Priority int32 `json:"priority,omitempty"`
}

// Validate validates this action
func (m *Action) Validate(formats strfmt.Registry) error {
	return nil
}

// MarshalBinary interface implementation
func (m *Action) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *Action) UnmarshalBinary(b []byte) error {
	var res Action
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
