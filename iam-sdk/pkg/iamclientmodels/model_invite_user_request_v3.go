// Code generated by go-swagger; DO NOT EDIT.

package iamclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelInviteUserRequestV3 model invite user request v3
//
// swagger:model model.InviteUserRequestV3
type ModelInviteUserRequestV3 struct {

	// email addresses
	// Required: true
	EmailAddresses []string `json:"emailAddresses"`

	// is admin
	// Required: true
	IsAdmin *bool `json:"isAdmin"`

	// multi tenant studio namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// roles
	// Required: true
	Roles []string `json:"roles"`
}

// Validate validates this model invite user request v3
func (m *ModelInviteUserRequestV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEmailAddresses(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateIsAdmin(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateRoles(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelInviteUserRequestV3) validateEmailAddresses(formats strfmt.Registry) error {

	if err := validate.Required("emailAddresses", "body", m.EmailAddresses); err != nil {
		return err
	}

	return nil
}

func (m *ModelInviteUserRequestV3) validateIsAdmin(formats strfmt.Registry) error {

	if err := validate.Required("isAdmin", "body", m.IsAdmin); err != nil {
		return err
	}

	return nil
}

func (m *ModelInviteUserRequestV3) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelInviteUserRequestV3) validateRoles(formats strfmt.Registry) error {

	if err := validate.Required("roles", "body", m.Roles); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelInviteUserRequestV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelInviteUserRequestV3) UnmarshalBinary(b []byte) error {
	var res ModelInviteUserRequestV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
