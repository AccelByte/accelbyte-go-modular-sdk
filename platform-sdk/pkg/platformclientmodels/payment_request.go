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

// PaymentRequest A DTO for wallet's payment
//
// swagger:model PaymentRequest
type PaymentRequest struct {

	// amount
	// Required: true
	// Minimum: 0
	Amount *int64 `json:"amount"`

	// wallet platform, base on platform wallet rule to payment wallet
	// Enum: [Epic GooglePlay IOS Nintendo Other Playstation Steam Xbox]
	WalletPlatform string `json:"walletPlatform,omitempty"`
}

// Validate validates this payment request
func (m *PaymentRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAmount(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateWalletPlatform(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *PaymentRequest) validateAmount(formats strfmt.Registry) error {

	if err := validate.Required("amount", "body", m.Amount); err != nil {
		return err
	}

	if err := validate.MinimumInt("amount", "body", int64(*m.Amount), 0, false); err != nil {
		return err
	}

	return nil
}

var paymentRequestTypeWalletPlatformPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["Epic","GooglePlay","IOS","Nintendo","Other","Playstation","Steam","Xbox"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentRequestTypeWalletPlatformPropEnum = append(paymentRequestTypeWalletPlatformPropEnum, v)
	}
}

const (

	// PaymentRequestWalletPlatformEpic captures enum value "Epic"
	PaymentRequestWalletPlatformEpic string = "Epic"

	// PaymentRequestWalletPlatformGooglePlay captures enum value "GooglePlay"
	PaymentRequestWalletPlatformGooglePlay string = "GooglePlay"

	// PaymentRequestWalletPlatformIOS captures enum value "IOS"
	PaymentRequestWalletPlatformIOS string = "IOS"

	// PaymentRequestWalletPlatformNintendo captures enum value "Nintendo"
	PaymentRequestWalletPlatformNintendo string = "Nintendo"

	// PaymentRequestWalletPlatformOther captures enum value "Other"
	PaymentRequestWalletPlatformOther string = "Other"

	// PaymentRequestWalletPlatformPlaystation captures enum value "Playstation"
	PaymentRequestWalletPlatformPlaystation string = "Playstation"

	// PaymentRequestWalletPlatformSteam captures enum value "Steam"
	PaymentRequestWalletPlatformSteam string = "Steam"

	// PaymentRequestWalletPlatformXbox captures enum value "Xbox"
	PaymentRequestWalletPlatformXbox string = "Xbox"
)

// prop value enum
func (m *PaymentRequest) validateWalletPlatformEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentRequestTypeWalletPlatformPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PaymentRequest) validateWalletPlatform(formats strfmt.Registry) error {

	if swag.IsZero(m.WalletPlatform) { // not required
		return nil
	}

	// value enum
	if err := m.validateWalletPlatformEnum("walletPlatform", "body", m.WalletPlatform); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PaymentRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentRequest) UnmarshalBinary(b []byte) error {
	var res PaymentRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
