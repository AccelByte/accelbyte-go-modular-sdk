// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// SteamIAPConfig steam IAP config
//
// swagger:model SteamIAPConfig
type SteamIAPConfig struct {

	// app Id
	AppID string `json:"appId,omitempty"`

	// created at
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// publisher authentication key
	PublisherAuthenticationKey string `json:"publisherAuthenticationKey,omitempty"`

	// rvn
	Rvn int32 `json:"rvn,omitempty"`

	// updated at
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`
}

// Validate validates this steam IAP config
func (m *SteamIAPConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *SteamIAPConfig) validateCreatedAt(formats strfmt.Registry) error {

	if swag.IsZero(m.CreatedAt) { // not required
		return nil
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *SteamIAPConfig) validateUpdatedAt(formats strfmt.Registry) error {

	if swag.IsZero(m.UpdatedAt) { // not required
		return nil
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *SteamIAPConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SteamIAPConfig) UnmarshalBinary(b []byte) error {
	var res SteamIAPConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
