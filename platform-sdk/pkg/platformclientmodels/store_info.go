// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// StoreInfo Store info
//
// swagger:model Store info.
type StoreInfo struct {

	// Store created time
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// Default language
	// Required: true
	DefaultLanguage *string `json:"defaultLanguage"`

	// Default region
	// Required: true
	DefaultRegion *string `json:"defaultRegion"`

	// Store description
	Description string `json:"description,omitempty"`

	// The namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// If Store is published
	// Required: true
	Published *bool `json:"published"`

	// Store published time
	// Format: date-time
	PublishedTime *strfmt.DateTime `json:"publishedTime,omitempty"`

	// Store id
	// Required: true
	StoreID *string `json:"storeId"`

	// Store supported language
	// Required: true
	SupportedLanguages []string `json:"supportedLanguages"`

	// Store supported regions
	// Required: true
	SupportedRegions []string `json:"supportedRegions"`

	// Store title
	// Required: true
	Title *string `json:"title"`

	// Store updated time
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`
}

// Validate validates this Store info
func (m *StoreInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDefaultLanguage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDefaultRegion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePublished(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStoreID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSupportedLanguages(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSupportedRegions(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTitle(formats); err != nil {
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

func (m *StoreInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *StoreInfo) validateDefaultLanguage(formats strfmt.Registry) error {

	if err := validate.Required("defaultLanguage", "body", m.DefaultLanguage); err != nil {
		return err
	}

	return nil
}

func (m *StoreInfo) validateDefaultRegion(formats strfmt.Registry) error {

	if err := validate.Required("defaultRegion", "body", m.DefaultRegion); err != nil {
		return err
	}

	return nil
}

func (m *StoreInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *StoreInfo) validatePublished(formats strfmt.Registry) error {

	if err := validate.Required("published", "body", m.Published); err != nil {
		return err
	}

	return nil
}

func (m *StoreInfo) validateStoreID(formats strfmt.Registry) error {

	if err := validate.Required("storeId", "body", m.StoreID); err != nil {
		return err
	}

	return nil
}

func (m *StoreInfo) validateSupportedLanguages(formats strfmt.Registry) error {

	if err := validate.Required("supportedLanguages", "body", m.SupportedLanguages); err != nil {
		return err
	}

	return nil
}

func (m *StoreInfo) validateSupportedRegions(formats strfmt.Registry) error {

	if err := validate.Required("supportedRegions", "body", m.SupportedRegions); err != nil {
		return err
	}

	return nil
}

func (m *StoreInfo) validateTitle(formats strfmt.Registry) error {

	if err := validate.Required("title", "body", m.Title); err != nil {
		return err
	}

	return nil
}

func (m *StoreInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *StoreInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *StoreInfo) UnmarshalBinary(b []byte) error {
	var res StoreInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
