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

// ModelsAllianceFlexingRule models alliance flexing rule
//
// swagger:model models.AllianceFlexingRule
type ModelsAllianceFlexingRule struct {

	// combination
	// Required: true
	Combination *ModelsCombination `json:"combination"`

	// duration
	// Required: true
	Duration *int64 `json:"duration"`

	// max number
	// Required: true
	MaxNumber *int32 `json:"max_number"`

	// min number
	// Required: true
	MinNumber *int32 `json:"min_number"`

	// player max number
	// Required: true
	PlayerMaxNumber *int32 `json:"player_max_number"`

	// player min number
	// Required: true
	PlayerMinNumber *int32 `json:"player_min_number"`
}

// Validate validates this models alliance flexing rule
func (m *ModelsAllianceFlexingRule) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCombination(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateDuration(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateMaxNumber(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateMinNumber(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePlayerMaxNumber(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePlayerMinNumber(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsAllianceFlexingRule) validateCombination(formats strfmt.Registry) error {

	if err := validate.Required("combination", "body", m.Combination); err != nil {
		return err
	}

	if m.Combination != nil {
		if err := m.Combination.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("combination")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsAllianceFlexingRule) validateDuration(formats strfmt.Registry) error {

	if err := validate.Required("duration", "body", m.Duration); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAllianceFlexingRule) validateMaxNumber(formats strfmt.Registry) error {

	if err := validate.Required("max_number", "body", m.MaxNumber); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAllianceFlexingRule) validateMinNumber(formats strfmt.Registry) error {

	if err := validate.Required("min_number", "body", m.MinNumber); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAllianceFlexingRule) validatePlayerMaxNumber(formats strfmt.Registry) error {

	if err := validate.Required("player_max_number", "body", m.PlayerMaxNumber); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAllianceFlexingRule) validatePlayerMinNumber(formats strfmt.Registry) error {

	if err := validate.Required("player_min_number", "body", m.PlayerMinNumber); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAllianceFlexingRule) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAllianceFlexingRule) UnmarshalBinary(b []byte) error {
	var res ModelsAllianceFlexingRule
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
