// Code generated by go-swagger; DO NOT EDIT.

package sessionclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsUpdateConfigurationTemplateRequest apimodels update configuration template request
//
// swagger:model apimodels.UpdateConfigurationTemplateRequest
type ApimodelsUpdateConfigurationTemplateRequest struct {

	// client version
	// Required: true
	ClientVersion *string `json:"clientVersion"`

	// deployment
	// Required: true
	Deployment *string `json:"deployment"`

	// inactive timeout
	// Required: true
	InactiveTimeout *int32 `json:"inactiveTimeout"`

	// invite timeout
	// Required: true
	InviteTimeout *int32 `json:"inviteTimeout"`

	// joinability
	// Required: true
	Joinability *string `json:"joinability"`

	// max players
	// Required: true
	MaxPlayers *int32 `json:"maxPlayers"`

	// min players
	// Required: true
	MinPlayers *int32 `json:"minPlayers"`

	// name
	// Required: true
	Name *string `json:"name"`

	// requested regions
	// Required: true
	RequestedRegions []string `json:"requestedRegions"`

	// text chat
	// Required: true
	TextChat *bool `json:"textChat"`

	// type
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this apimodels update configuration template request
func (m *ApimodelsUpdateConfigurationTemplateRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateClientVersion(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateDeployment(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateInactiveTimeout(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateInviteTimeout(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateJoinability(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateMaxPlayers(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateMinPlayers(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateRequestedRegions(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateTextChat(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsUpdateConfigurationTemplateRequest) validateClientVersion(formats strfmt.Registry) error {

	if err := validate.Required("clientVersion", "body", m.ClientVersion); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateConfigurationTemplateRequest) validateDeployment(formats strfmt.Registry) error {

	if err := validate.Required("deployment", "body", m.Deployment); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateConfigurationTemplateRequest) validateInactiveTimeout(formats strfmt.Registry) error {

	if err := validate.Required("inactiveTimeout", "body", m.InactiveTimeout); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateConfigurationTemplateRequest) validateInviteTimeout(formats strfmt.Registry) error {

	if err := validate.Required("inviteTimeout", "body", m.InviteTimeout); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateConfigurationTemplateRequest) validateJoinability(formats strfmt.Registry) error {

	if err := validate.Required("joinability", "body", m.Joinability); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateConfigurationTemplateRequest) validateMaxPlayers(formats strfmt.Registry) error {

	if err := validate.Required("maxPlayers", "body", m.MaxPlayers); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateConfigurationTemplateRequest) validateMinPlayers(formats strfmt.Registry) error {

	if err := validate.Required("minPlayers", "body", m.MinPlayers); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateConfigurationTemplateRequest) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateConfigurationTemplateRequest) validateRequestedRegions(formats strfmt.Registry) error {

	if err := validate.Required("requestedRegions", "body", m.RequestedRegions); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateConfigurationTemplateRequest) validateTextChat(formats strfmt.Registry) error {

	if err := validate.Required("textChat", "body", m.TextChat); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateConfigurationTemplateRequest) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsUpdateConfigurationTemplateRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsUpdateConfigurationTemplateRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelsUpdateConfigurationTemplateRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
