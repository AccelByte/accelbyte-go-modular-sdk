// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// BillingAccount billing account
//
// swagger:model BillingAccount
type BillingAccount struct {

	// payment addition data
	AdditionalData *AdditionalData `json:"additionalData,omitempty"`

	// payment method
	PaymentMethod string `json:"paymentMethod,omitempty"`

	// payment provider
	// Enum: [ADYEN ALIPAY CHECKOUT PAYPAL STRIPE WALLET WXPAY XSOLLA]
	PaymentProvider string `json:"paymentProvider,omitempty"`
}

// Validate validates this billing account
func (m *BillingAccount) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAdditionalData(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePaymentProvider(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *BillingAccount) validateAdditionalData(formats strfmt.Registry) error {

	if swag.IsZero(m.AdditionalData) { // not required
		return nil
	}

	if m.AdditionalData != nil {
		if err := m.AdditionalData.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("additionalData")
			}
			return err
		}
	}

	return nil
}

var billingAccountTypePaymentProviderPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ADYEN","ALIPAY","CHECKOUT","PAYPAL","STRIPE","WALLET","WXPAY","XSOLLA"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		billingAccountTypePaymentProviderPropEnum = append(billingAccountTypePaymentProviderPropEnum, v)
	}
}

const (

	// BillingAccountPaymentProviderADYEN captures enum value "ADYEN"
	BillingAccountPaymentProviderADYEN string = "ADYEN"

	// BillingAccountPaymentProviderALIPAY captures enum value "ALIPAY"
	BillingAccountPaymentProviderALIPAY string = "ALIPAY"

	// BillingAccountPaymentProviderCHECKOUT captures enum value "CHECKOUT"
	BillingAccountPaymentProviderCHECKOUT string = "CHECKOUT"

	// BillingAccountPaymentProviderPAYPAL captures enum value "PAYPAL"
	BillingAccountPaymentProviderPAYPAL string = "PAYPAL"

	// BillingAccountPaymentProviderSTRIPE captures enum value "STRIPE"
	BillingAccountPaymentProviderSTRIPE string = "STRIPE"

	// BillingAccountPaymentProviderWALLET captures enum value "WALLET"
	BillingAccountPaymentProviderWALLET string = "WALLET"

	// BillingAccountPaymentProviderWXPAY captures enum value "WXPAY"
	BillingAccountPaymentProviderWXPAY string = "WXPAY"

	// BillingAccountPaymentProviderXSOLLA captures enum value "XSOLLA"
	BillingAccountPaymentProviderXSOLLA string = "XSOLLA"
)

// prop value enum
func (m *BillingAccount) validatePaymentProviderEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, billingAccountTypePaymentProviderPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *BillingAccount) validatePaymentProvider(formats strfmt.Registry) error {

	if swag.IsZero(m.PaymentProvider) { // not required
		return nil
	}

	// value enum
	if err := m.validatePaymentProviderEnum("paymentProvider", "body", m.PaymentProvider); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *BillingAccount) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *BillingAccount) UnmarshalBinary(b []byte) error {
	var res BillingAccount
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
