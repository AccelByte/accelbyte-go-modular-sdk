// Code generated by go-swagger; DO NOT EDIT.

package matchmakingclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsImportConfigResponse models import config response
//
// swagger:model models.ImportConfigResponse
type ModelsImportConfigResponse struct {

	// failed configs
	// Required: true
	FailedConfigs []string `json:"failedConfigs"`

	// ignored configs
	// Required: true
	IgnoredConfigs []string `json:"ignoredConfigs"`

	// new configs
	// Required: true
	NewConfigs []string `json:"newConfigs"`

	// replaced configs
	// Required: true
	ReplacedConfigs []string `json:"replacedConfigs"`
}

// Validate validates this models import config response
func (m *ModelsImportConfigResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFailedConfigs(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateIgnoredConfigs(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateNewConfigs(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateReplacedConfigs(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsImportConfigResponse) validateFailedConfigs(formats strfmt.Registry) error {

	if err := validate.Required("failedConfigs", "body", m.FailedConfigs); err != nil {
		return err
	}

	return nil
}

func (m *ModelsImportConfigResponse) validateIgnoredConfigs(formats strfmt.Registry) error {

	if err := validate.Required("ignoredConfigs", "body", m.IgnoredConfigs); err != nil {
		return err
	}

	return nil
}

func (m *ModelsImportConfigResponse) validateNewConfigs(formats strfmt.Registry) error {

	if err := validate.Required("newConfigs", "body", m.NewConfigs); err != nil {
		return err
	}

	return nil
}

func (m *ModelsImportConfigResponse) validateReplacedConfigs(formats strfmt.Registry) error {

	if err := validate.Required("replacedConfigs", "body", m.ReplacedConfigs); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsImportConfigResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsImportConfigResponse) UnmarshalBinary(b []byte) error {
	var res ModelsImportConfigResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
