// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// GoogleIAPReceipt google IAP receipt
//
// swagger:model GoogleIAPReceipt
type GoogleIAPReceipt struct {

	// If invoke Google play's Acknowledge after sync & fulfill item
	AutoAck bool `json:"autoAck"`

	// language value from language tag, allowed format: en, en-US.<p>Supported language tag : [RFC5646](https://gist.github.com/msikma/8912e62ed866778ff8cd) and [IETF](https://datahub.io/core/language-codes#resource-ietf-language-tags)</p>
	// Pattern: ^[A-Za-z]{2,4}([_-][A-Za-z]{4})?([_-]([A-Za-z]{2}|[0-9]{3}))?$
	Language string `json:"language,omitempty"`

	// OrderId returned from google play
	// Required: true
	OrderID *string `json:"orderId"`

	// App package name
	// Required: true
	PackageName *string `json:"packageName"`

	// Product id (SKU)
	// Required: true
	ProductID *string `json:"productId"`

	// Purchase time returned from google play
	// Required: true
	PurchaseTime *int64 `json:"purchaseTime"`

	// Google play purchase token returned from google play
	// Required: true
	PurchaseToken *string `json:"purchaseToken"`

	// country value from ISO countries
	Region string `json:"region,omitempty"`
}

// Validate validates this google IAP receipt
func (m *GoogleIAPReceipt) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLanguage(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateOrderID(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePackageName(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateProductID(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePurchaseTime(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePurchaseToken(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *GoogleIAPReceipt) validateLanguage(formats strfmt.Registry) error {

	if swag.IsZero(m.Language) { // not required
		return nil
	}

	if err := validate.Pattern("language", "body", string(m.Language), `^[A-Za-z]{2,4}([_-][A-Za-z]{4})?([_-]([A-Za-z]{2}|[0-9]{3}))?$`); err != nil {
		return err
	}

	return nil
}

func (m *GoogleIAPReceipt) validateOrderID(formats strfmt.Registry) error {

	if err := validate.Required("orderId", "body", m.OrderID); err != nil {
		return err
	}

	return nil
}

func (m *GoogleIAPReceipt) validatePackageName(formats strfmt.Registry) error {

	if err := validate.Required("packageName", "body", m.PackageName); err != nil {
		return err
	}

	return nil
}

func (m *GoogleIAPReceipt) validateProductID(formats strfmt.Registry) error {

	if err := validate.Required("productId", "body", m.ProductID); err != nil {
		return err
	}

	return nil
}

func (m *GoogleIAPReceipt) validatePurchaseTime(formats strfmt.Registry) error {

	if err := validate.Required("purchaseTime", "body", m.PurchaseTime); err != nil {
		return err
	}

	return nil
}

func (m *GoogleIAPReceipt) validatePurchaseToken(formats strfmt.Registry) error {

	if err := validate.Required("purchaseToken", "body", m.PurchaseToken); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *GoogleIAPReceipt) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GoogleIAPReceipt) UnmarshalBinary(b []byte) error {
	var res GoogleIAPReceipt
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
