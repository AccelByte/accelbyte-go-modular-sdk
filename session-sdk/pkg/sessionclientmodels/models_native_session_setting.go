// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package sessionclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsNativeSessionSetting Models native session setting
//
// swagger:model Models native session setting.
type ModelsNativeSessionSetting struct {

	// psndisablesystemuimenu
	// Enum: ['KICK', 'PROMOTE_TO_LEADER', 'UPDATE_INVITABLE_USER_TYPE', 'UPDATE_JOINABLE_USER_TYPE']
	PSNDisableSystemUIMenu []string `json:"PSNDisableSystemUIMenu,omitempty"`

	// psnservicelabel
	// Required: true
	// Format: int32
	PSNServiceLabel *int32 `json:"PSNServiceLabel"`

	// psnsupportedplatforms
	PSNSupportedPlatforms []string `json:"PSNSupportedPlatforms,omitempty"`

	// sessiontitle
	// Required: true
	SessionTitle *string `json:"SessionTitle"`

	// shouldsync
	ShouldSync bool `json:"ShouldSync"`

	// xboxallowcrossplatform
	// Required: true
	XboxAllowCrossPlatform *bool `json:"XboxAllowCrossPlatform"`

	// xboxsandboxid
	// Required: true
	XboxSandboxID *string `json:"XboxSandboxID"`

	// xboxserviceconfigid
	// Required: true
	XboxServiceConfigID *string `json:"XboxServiceConfigID"`

	// xboxsessiontemplatename
	// Required: true
	XboxSessionTemplateName *string `json:"XboxSessionTemplateName"`

	// xboxtitleid
	// Required: true
	XboxTitleID *string `json:"XboxTitleID"`

	// localizedsessionname
	LocalizedSessionName interface{} `json:"localizedSessionName,omitempty"`
}

// Validate validates this Models native session setting
func (m *ModelsNativeSessionSetting) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePSNServiceLabel(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionTitle(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateXboxAllowCrossPlatform(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateXboxSandboxID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateXboxServiceConfigID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateXboxSessionTemplateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateXboxTitleID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var modelsNativeSessionSettingTypePSNDisableSystemUIMenuItemsEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["KICK", "PROMOTE_TO_LEADER", "UPDATE_INVITABLE_USER_TYPE", "UPDATE_JOINABLE_USER_TYPE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsNativeSessionSettingTypePSNDisableSystemUIMenuItemsEnum = append(modelsNativeSessionSettingTypePSNDisableSystemUIMenuItemsEnum, v)
	}
}

const (

	// ModelsNativeSessionSettingPSNDisableSystemUIMenuKICK captures enum value "KICK"
	ModelsNativeSessionSettingPSNDisableSystemUIMenuKICK string = "KICK"

	// ModelsNativeSessionSettingPSNDisableSystemUIMenuPROMOTETOLEADER captures enum value "PROMOTE_TO_LEADER"
	ModelsNativeSessionSettingPSNDisableSystemUIMenuPROMOTETOLEADER string = "PROMOTE_TO_LEADER"

	// ModelsNativeSessionSettingPSNDisableSystemUIMenuUPDATEINVITABLEUSERTYPE captures enum value "UPDATE_INVITABLE_USER_TYPE"
	ModelsNativeSessionSettingPSNDisableSystemUIMenuUPDATEINVITABLEUSERTYPE string = "UPDATE_INVITABLE_USER_TYPE"

	// ModelsNativeSessionSettingPSNDisableSystemUIMenuUPDATEJOINABLEUSERTYPE captures enum value "UPDATE_JOINABLE_USER_TYPE"
	ModelsNativeSessionSettingPSNDisableSystemUIMenuUPDATEJOINABLEUSERTYPE string = "UPDATE_JOINABLE_USER_TYPE"
)

func (m *ModelsNativeSessionSetting) validatePSNDisableSystemUIMenuItemsEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsNativeSessionSettingTypePSNDisableSystemUIMenuItemsEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsNativeSessionSetting) validatePSNServiceLabel(formats strfmt.Registry) error {

	if err := validate.Required("PSNServiceLabel", "body", m.PSNServiceLabel); err != nil {
		return err
	}

	return nil
}

func (m *ModelsNativeSessionSetting) validateSessionTitle(formats strfmt.Registry) error {

	if err := validate.Required("SessionTitle", "body", m.SessionTitle); err != nil {
		return err
	}

	return nil
}

func (m *ModelsNativeSessionSetting) validateXboxAllowCrossPlatform(formats strfmt.Registry) error {

	if err := validate.Required("XboxAllowCrossPlatform", "body", m.XboxAllowCrossPlatform); err != nil {
		return err
	}

	return nil
}

func (m *ModelsNativeSessionSetting) validateXboxSandboxID(formats strfmt.Registry) error {

	if err := validate.Required("XboxSandboxID", "body", m.XboxSandboxID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsNativeSessionSetting) validateXboxServiceConfigID(formats strfmt.Registry) error {

	if err := validate.Required("XboxServiceConfigID", "body", m.XboxServiceConfigID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsNativeSessionSetting) validateXboxSessionTemplateName(formats strfmt.Registry) error {

	if err := validate.Required("XboxSessionTemplateName", "body", m.XboxSessionTemplateName); err != nil {
		return err
	}

	return nil
}

func (m *ModelsNativeSessionSetting) validateXboxTitleID(formats strfmt.Registry) error {

	if err := validate.Required("XboxTitleID", "body", m.XboxTitleID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsNativeSessionSetting) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsNativeSessionSetting) UnmarshalBinary(b []byte) error {
	var res ModelsNativeSessionSetting
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
