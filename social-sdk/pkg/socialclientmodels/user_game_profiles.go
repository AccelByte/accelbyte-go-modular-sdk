// Code generated by go-swagger; DO NOT EDIT.

package socialclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// UserGameProfiles user game profiles
//
// swagger:model UserGameProfiles
type UserGameProfiles struct {

	// game profiles
	GameProfiles []*GameProfilePublicInfo `json:"gameProfiles"`

	// user Id
	UserID string `json:"userId,omitempty"`
}

// Validate validates this user game profiles
func (m *UserGameProfiles) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateGameProfiles(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *UserGameProfiles) validateGameProfiles(formats strfmt.Registry) error {

	if swag.IsZero(m.GameProfiles) { // not required
		return nil
	}

	for i := 0; i < len(m.GameProfiles); i++ {
		if swag.IsZero(m.GameProfiles[i]) { // not required
			continue
		}

		if m.GameProfiles[i] != nil {
			if err := m.GameProfiles[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("gameProfiles" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *UserGameProfiles) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UserGameProfiles) UnmarshalBinary(b []byte) error {
	var res UserGameProfiles
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
