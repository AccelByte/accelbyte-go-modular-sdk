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

// CatalogChangeStatistics catalog change statistics
//
// swagger:model CatalogChangeStatistics
type CatalogChangeStatistics struct {

	// all change count
	// Required: true
	Count *int64 `json:"count"`

	// selected change count
	// Required: true
	SelectedCount *int64 `json:"selectedCount"`
}

// Validate validates this catalog change statistics
func (m *CatalogChangeStatistics) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCount(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateSelectedCount(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *CatalogChangeStatistics) validateCount(formats strfmt.Registry) error {

	if err := validate.Required("count", "body", m.Count); err != nil {
		return err
	}

	return nil
}

func (m *CatalogChangeStatistics) validateSelectedCount(formats strfmt.Registry) error {

	if err := validate.Required("selectedCount", "body", m.SelectedCount); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *CatalogChangeStatistics) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CatalogChangeStatistics) UnmarshalBinary(b []byte) error {
	var res CatalogChangeStatistics
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
