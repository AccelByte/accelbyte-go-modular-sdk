// Code generated by go-swagger; DO NOT EDIT.

package dsmcclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsStatusHistory models status history
//
// swagger:model models.StatusHistory
type ModelsStatusHistory struct {

	// status
	// Required: true
	Status *string `json:"status"`

	// time stamp
	// Required: true
	// Format: date-time
	TimeStamp strfmt.DateTime `json:"time_stamp"`
}

// Validate validates this models status history
func (m *ModelsStatusHistory) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateTimeStamp(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsStatusHistory) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ModelsStatusHistory) validateTimeStamp(formats strfmt.Registry) error {

	if err := validate.Required("time_stamp", "body", strfmt.DateTime(m.TimeStamp)); err != nil {
		return err
	}

	if err := validate.FormatOf("time_stamp", "body", "date-time", m.TimeStamp.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsStatusHistory) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsStatusHistory) UnmarshalBinary(b []byte) error {
	var res ModelsStatusHistory
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
