// Code generated by go-swagger; DO NOT EDIT.

package legalclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// RetrieveAcceptedAgreementResponse retrieve accepted agreement response
//
// swagger:model RetrieveAcceptedAgreementResponse
type RetrieveAcceptedAgreementResponse struct {

	// country code
	CountryCode string `json:"countryCode,omitempty"`

	// created at
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// display version
	DisplayVersion string `json:"displayVersion,omitempty"`

	// id
	// Required: true
	ID *string `json:"id"`

	// is accepted
	IsAccepted bool `json:"isAccepted"`

	// localized policy version
	LocalizedPolicyVersion *LocalizedPolicyVersionObject `json:"localizedPolicyVersion,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// policy Id
	PolicyID string `json:"policyId,omitempty"`

	// policy name
	PolicyName string `json:"policyName,omitempty"`

	// policy type
	PolicyType string `json:"policyType,omitempty"`

	// signing date
	// Format: date-time
	SigningDate *strfmt.DateTime `json:"signingDate,omitempty"`

	// updated at
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`

	// user Id
	UserID string `json:"userId,omitempty"`
}

// Validate validates this retrieve accepted agreement response
func (m *RetrieveAcceptedAgreementResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateLocalizedPolicyVersion(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateSigningDate(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RetrieveAcceptedAgreementResponse) validateCreatedAt(formats strfmt.Registry) error {

	if swag.IsZero(m.CreatedAt) { // not required
		return nil
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *RetrieveAcceptedAgreementResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *RetrieveAcceptedAgreementResponse) validateLocalizedPolicyVersion(formats strfmt.Registry) error {

	if swag.IsZero(m.LocalizedPolicyVersion) { // not required
		return nil
	}

	if m.LocalizedPolicyVersion != nil {
		if err := m.LocalizedPolicyVersion.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("localizedPolicyVersion")
			}
			return err
		}
	}

	return nil
}

func (m *RetrieveAcceptedAgreementResponse) validateSigningDate(formats strfmt.Registry) error {

	if swag.IsZero(m.SigningDate) { // not required
		return nil
	}

	if err := validate.FormatOf("signingDate", "body", "date-time", m.SigningDate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *RetrieveAcceptedAgreementResponse) validateUpdatedAt(formats strfmt.Registry) error {

	if swag.IsZero(m.UpdatedAt) { // not required
		return nil
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RetrieveAcceptedAgreementResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RetrieveAcceptedAgreementResponse) UnmarshalBinary(b []byte) error {
	var res RetrieveAcceptedAgreementResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
