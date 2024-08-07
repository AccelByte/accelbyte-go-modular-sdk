// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelUserBanWithStatus Model user ban with status
//
// swagger:model Model user ban with status.
type ModelUserBanWithStatus struct {

	// active
	// Required: true
	Active *bool `json:"active"`

	// ban
	// Required: true
	Ban *string `json:"ban"`

	// banid
	// Required: true
	BanID *string `json:"banId"`

	// bannedby
	// Required: true
	BannedBy *AccountcommonBannedByV3 `json:"bannedBy"`

	// comment
	// Required: true
	Comment *string `json:"comment"`

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// disableddate
	// Required: true
	// Format: date-time
	DisabledDate strfmt.DateTime `json:"disabledDate"`

	// enabled
	// Required: true
	Enabled *bool `json:"enabled"`

	// enddate
	// Required: true
	// Format: date-time
	EndDate strfmt.DateTime `json:"endDate"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// reason
	// Required: true
	Reason *string `json:"reason"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Model user ban with status
func (m *ModelUserBanWithStatus) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateActive(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBan(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBanID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBannedBy(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateComment(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDisabledDate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEnabled(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEndDate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReason(formats); err != nil {
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

func (m *ModelUserBanWithStatus) validateActive(formats strfmt.Registry) error {

	if err := validate.Required("active", "body", m.Active); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserBanWithStatus) validateBan(formats strfmt.Registry) error {

	if err := validate.Required("ban", "body", m.Ban); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserBanWithStatus) validateBanID(formats strfmt.Registry) error {

	if err := validate.Required("banId", "body", m.BanID); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserBanWithStatus) validateBannedBy(formats strfmt.Registry) error {

	if err := validate.Required("bannedBy", "body", m.BannedBy); err != nil {
		return err
	}

	if m.BannedBy != nil {
		if err := m.BannedBy.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("bannedBy")
			}
			return err
		}
	}

	return nil
}

func (m *ModelUserBanWithStatus) validateComment(formats strfmt.Registry) error {

	if err := validate.Required("comment", "body", m.Comment); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserBanWithStatus) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserBanWithStatus) validateDisabledDate(formats strfmt.Registry) error {

	if err := validate.Required("disabledDate", "body", strfmt.DateTime(m.DisabledDate)); err != nil {
		return err
	}

	if err := validate.FormatOf("disabledDate", "body", "date-time", m.DisabledDate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserBanWithStatus) validateEnabled(formats strfmt.Registry) error {

	if err := validate.Required("enabled", "body", m.Enabled); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserBanWithStatus) validateEndDate(formats strfmt.Registry) error {

	if err := validate.Required("endDate", "body", strfmt.DateTime(m.EndDate)); err != nil {
		return err
	}

	if err := validate.FormatOf("endDate", "body", "date-time", m.EndDate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserBanWithStatus) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserBanWithStatus) validateReason(formats strfmt.Registry) error {

	if err := validate.Required("reason", "body", m.Reason); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserBanWithStatus) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserBanWithStatus) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserBanWithStatus) UnmarshalBinary(b []byte) error {
	var res ModelUserBanWithStatus
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
