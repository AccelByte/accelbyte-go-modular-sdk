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

// ModelRoleAdminStatusResponse model role admin status response
//
// swagger:model model.RoleAdminStatusResponse
type ModelRoleAdminStatusResponse struct {

	// admin role
	// Required: true
	AdminRole *bool `json:"AdminRole"`
}

// Validate validates this model role admin status response
func (m *ModelRoleAdminStatusResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAdminRole(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelRoleAdminStatusResponse) validateAdminRole(formats strfmt.Registry) error {

	if err := validate.Required("AdminRole", "body", m.AdminRole); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelRoleAdminStatusResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelRoleAdminStatusResponse) UnmarshalBinary(b []byte) error {
	var res ModelRoleAdminStatusResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
