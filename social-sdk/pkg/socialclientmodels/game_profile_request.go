// Code generated by go-swagger; DO NOT EDIT.

package socialclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// GameProfileRequest game profile request
//
// swagger:model GameProfileRequest
type GameProfileRequest struct {

	// achievements
	Achievements []string `json:"achievements"`

	// attributes
	Attributes map[string]string `json:"attributes,omitempty"`

	// avatar Url
	AvatarURL string `json:"avatarUrl,omitempty"`

	// inventories
	Inventories []string `json:"inventories"`

	// label
	Label string `json:"label,omitempty"`

	// profile name
	ProfileName string `json:"profileName,omitempty"`

	// statistics
	Statistics []string `json:"statistics"`

	// tags
	Tags []string `json:"tags"`
}

// Validate validates this game profile request
func (m *GameProfileRequest) Validate(formats strfmt.Registry) error {
	return nil
}

// MarshalBinary interface implementation
func (m *GameProfileRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GameProfileRequest) UnmarshalBinary(b []byte) error {
	var res GameProfileRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
