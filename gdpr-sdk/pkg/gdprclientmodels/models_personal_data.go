// Code generated by go-swagger; DO NOT EDIT.

package gdprclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsPersonalData models personal data
//
// swagger:model models.PersonalData
type ModelsPersonalData struct {

	// data expiration date
	// Required: true
	// Format: date-time
	DataExpirationDate strfmt.DateTime `json:"DataExpirationDate"`

	// display name
	// Required: true
	DisplayName *string `json:"DisplayName"`

	// request date
	// Required: true
	// Format: date-time
	RequestDate strfmt.DateTime `json:"RequestDate"`

	// service errors
	// Required: true
	ServiceErrors map[string]string `json:"ServiceErrors"`

	// service statuses
	// Required: true
	ServiceStatuses map[string]string `json:"ServiceStatuses"`

	// status
	// Required: true
	Status *string `json:"Status"`

	// user ID
	// Required: true
	UserID *string `json:"UserID"`
}

// Validate validates this models personal data
func (m *ModelsPersonalData) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDataExpirationDate(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateDisplayName(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateRequestDate(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateServiceErrors(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateServiceStatuses(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsPersonalData) validateDataExpirationDate(formats strfmt.Registry) error {

	if err := validate.Required("DataExpirationDate", "body", strfmt.DateTime(m.DataExpirationDate)); err != nil {
		return err
	}

	if err := validate.FormatOf("DataExpirationDate", "body", "date-time", m.DataExpirationDate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPersonalData) validateDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("DisplayName", "body", m.DisplayName); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPersonalData) validateRequestDate(formats strfmt.Registry) error {

	if err := validate.Required("RequestDate", "body", strfmt.DateTime(m.RequestDate)); err != nil {
		return err
	}

	if err := validate.FormatOf("RequestDate", "body", "date-time", m.RequestDate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPersonalData) validateServiceErrors(formats strfmt.Registry) error {

	return nil
}

func (m *ModelsPersonalData) validateServiceStatuses(formats strfmt.Registry) error {

	return nil
}

func (m *ModelsPersonalData) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("Status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPersonalData) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("UserID", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPersonalData) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPersonalData) UnmarshalBinary(b []byte) error {
	var res ModelsPersonalData
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
