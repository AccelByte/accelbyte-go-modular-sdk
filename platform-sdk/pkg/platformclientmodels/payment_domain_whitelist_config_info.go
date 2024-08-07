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

// PaymentDomainWhitelistConfigInfo Payment domain whitelist config info
//
// swagger:model Payment domain whitelist config info.
type PaymentDomainWhitelistConfigInfo struct {

	// domains
	// Required: true
	Domains []string `json:"domains"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`
}

// Validate validates this Payment domain whitelist config info
func (m *PaymentDomainWhitelistConfigInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDomains(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *PaymentDomainWhitelistConfigInfo) validateDomains(formats strfmt.Registry) error {

	if err := validate.Required("domains", "body", m.Domains); err != nil {
		return err
	}

	return nil
}

func (m *PaymentDomainWhitelistConfigInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PaymentDomainWhitelistConfigInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentDomainWhitelistConfigInfo) UnmarshalBinary(b []byte) error {
	var res PaymentDomainWhitelistConfigInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
