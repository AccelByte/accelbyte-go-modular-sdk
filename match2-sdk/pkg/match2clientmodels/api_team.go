// Code generated by go-swagger; DO NOT EDIT.

package match2clientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// APITeam api team
//
// swagger:model api.Team
type APITeam struct {

	// parties
	Parties []*APIParty `json:"parties"`

	// user i ds
	UserIDs []string `json:"userIDs"`
}

// Validate validates this api team
func (m *APITeam) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateParties(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APITeam) validateParties(formats strfmt.Registry) error {

	if swag.IsZero(m.Parties) { // not required
		return nil
	}

	for i := 0; i < len(m.Parties); i++ {
		if swag.IsZero(m.Parties[i]) { // not required
			continue
		}

		if m.Parties[i] != nil {
			if err := m.Parties[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("parties" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *APITeam) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APITeam) UnmarshalBinary(b []byte) error {
	var res APITeam
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
