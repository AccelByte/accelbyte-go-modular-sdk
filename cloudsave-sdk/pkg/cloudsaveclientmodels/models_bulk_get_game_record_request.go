// Code generated by go-swagger; DO NOT EDIT.

package cloudsaveclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsBulkGetGameRecordRequest models bulk get game record request
//
// swagger:model models.BulkGetGameRecordRequest
type ModelsBulkGetGameRecordRequest struct {

	// keys
	// Required: true
	Keys []string `json:"keys"`
}

// Validate validates this models bulk get game record request
func (m *ModelsBulkGetGameRecordRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateKeys(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsBulkGetGameRecordRequest) validateKeys(formats strfmt.Registry) error {

	if err := validate.Required("keys", "body", m.Keys); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsBulkGetGameRecordRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsBulkGetGameRecordRequest) UnmarshalBinary(b []byte) error {
	var res ModelsBulkGetGameRecordRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
