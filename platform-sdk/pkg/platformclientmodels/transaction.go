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

// Transaction transaction
//
// swagger:model Transaction
type Transaction struct {

	// additional data
	AdditionalData *AdditionalData `json:"additionalData,omitempty"`

	// amount
	Amount int32 `json:"amount,omitempty"`

	// currency
	Currency *CurrencySummary `json:"currency,omitempty"`

	// ext message
	ExtMessage string `json:"extMessage,omitempty"`

	// ext status code
	ExtStatusCode string `json:"extStatusCode,omitempty"`

	// ext tx Id
	ExtTxID string `json:"extTxId,omitempty"`

	// merchant Id
	MerchantID string `json:"merchantId,omitempty"`

	// notified
	Notified bool `json:"notified"`

	// payment method
	PaymentMethod string `json:"paymentMethod,omitempty"`

	// payment method fee
	PaymentMethodFee int32 `json:"paymentMethodFee,omitempty"`

	// payment provider fee
	PaymentProviderFee int32 `json:"paymentProviderFee,omitempty"`

	// provider
	// Enum: [ADYEN ALIPAY CHECKOUT PAYPAL STRIPE WALLET WXPAY XSOLLA]
	Provider string `json:"provider,omitempty"`

	// sales tax
	SalesTax int32 `json:"salesTax,omitempty"`

	// status
	// Enum: [FAILED FINISHED]
	Status string `json:"status,omitempty"`

	// tax
	Tax int32 `json:"tax,omitempty"`

	// tx end time
	// Format: date-time
	TxEndTime *strfmt.DateTime `json:"txEndTime,omitempty"`

	// tx Id
	TxID string `json:"txId,omitempty"`

	// type
	// Enum: [AUTHORISATION CHARGE CHARGEBACK CHARGEBACK_REVERSED CHARGE_FAILED NOTIFICATION_OF_CHARGEBACK REFUND REFUND_FAILED REQUEST_FOR_INFORMATION]
	Type string `json:"type,omitempty"`

	// vat
	Vat int32 `json:"vat,omitempty"`
}

// Validate validates this transaction
func (m *Transaction) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAdditionalData(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateCurrency(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateProvider(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateTxEndTime(formats); err != nil {
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

func (m *Transaction) validateAdditionalData(formats strfmt.Registry) error {

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

func (m *Transaction) validateCurrency(formats strfmt.Registry) error {

	if swag.IsZero(m.Currency) { // not required
		return nil
	}

	if m.Currency != nil {
		if err := m.Currency.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("currency")
			}
			return err
		}
	}

	return nil
}

var transactionTypeProviderPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ADYEN","ALIPAY","CHECKOUT","PAYPAL","STRIPE","WALLET","WXPAY","XSOLLA"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		transactionTypeProviderPropEnum = append(transactionTypeProviderPropEnum, v)
	}
}

const (

	// TransactionProviderADYEN captures enum value "ADYEN"
	TransactionProviderADYEN string = "ADYEN"

	// TransactionProviderALIPAY captures enum value "ALIPAY"
	TransactionProviderALIPAY string = "ALIPAY"

	// TransactionProviderCHECKOUT captures enum value "CHECKOUT"
	TransactionProviderCHECKOUT string = "CHECKOUT"

	// TransactionProviderPAYPAL captures enum value "PAYPAL"
	TransactionProviderPAYPAL string = "PAYPAL"

	// TransactionProviderSTRIPE captures enum value "STRIPE"
	TransactionProviderSTRIPE string = "STRIPE"

	// TransactionProviderWALLET captures enum value "WALLET"
	TransactionProviderWALLET string = "WALLET"

	// TransactionProviderWXPAY captures enum value "WXPAY"
	TransactionProviderWXPAY string = "WXPAY"

	// TransactionProviderXSOLLA captures enum value "XSOLLA"
	TransactionProviderXSOLLA string = "XSOLLA"
)

// prop value enum
func (m *Transaction) validateProviderEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, transactionTypeProviderPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *Transaction) validateProvider(formats strfmt.Registry) error {

	if swag.IsZero(m.Provider) { // not required
		return nil
	}

	// value enum
	if err := m.validateProviderEnum("provider", "body", m.Provider); err != nil {
		return err
	}

	return nil
}

var transactionTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FAILED","FINISHED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		transactionTypeStatusPropEnum = append(transactionTypeStatusPropEnum, v)
	}
}

const (

	// TransactionStatusFAILED captures enum value "FAILED"
	TransactionStatusFAILED string = "FAILED"

	// TransactionStatusFINISHED captures enum value "FINISHED"
	TransactionStatusFINISHED string = "FINISHED"
)

// prop value enum
func (m *Transaction) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, transactionTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *Transaction) validateStatus(formats strfmt.Registry) error {

	if swag.IsZero(m.Status) { // not required
		return nil
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

func (m *Transaction) validateTxEndTime(formats strfmt.Registry) error {

	if swag.IsZero(m.TxEndTime) { // not required
		return nil
	}

	if err := validate.FormatOf("txEndTime", "body", "date-time", m.TxEndTime.String(), formats); err != nil {
		return err
	}

	return nil
}

var transactionTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["AUTHORISATION","CHARGE","CHARGEBACK","CHARGEBACK_REVERSED","CHARGE_FAILED","NOTIFICATION_OF_CHARGEBACK","REFUND","REFUND_FAILED","REQUEST_FOR_INFORMATION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		transactionTypeTypePropEnum = append(transactionTypeTypePropEnum, v)
	}
}

const (

	// TransactionTypeAUTHORISATION captures enum value "AUTHORISATION"
	TransactionTypeAUTHORISATION string = "AUTHORISATION"

	// TransactionTypeCHARGE captures enum value "CHARGE"
	TransactionTypeCHARGE string = "CHARGE"

	// TransactionTypeCHARGEBACK captures enum value "CHARGEBACK"
	TransactionTypeCHARGEBACK string = "CHARGEBACK"

	// TransactionTypeCHARGEBACKREVERSED captures enum value "CHARGEBACK_REVERSED"
	TransactionTypeCHARGEBACKREVERSED string = "CHARGEBACK_REVERSED"

	// TransactionTypeCHARGEFAILED captures enum value "CHARGE_FAILED"
	TransactionTypeCHARGEFAILED string = "CHARGE_FAILED"

	// TransactionTypeNOTIFICATIONOFCHARGEBACK captures enum value "NOTIFICATION_OF_CHARGEBACK"
	TransactionTypeNOTIFICATIONOFCHARGEBACK string = "NOTIFICATION_OF_CHARGEBACK"

	// TransactionTypeREFUND captures enum value "REFUND"
	TransactionTypeREFUND string = "REFUND"

	// TransactionTypeREFUNDFAILED captures enum value "REFUND_FAILED"
	TransactionTypeREFUNDFAILED string = "REFUND_FAILED"

	// TransactionTypeREQUESTFORINFORMATION captures enum value "REQUEST_FOR_INFORMATION"
	TransactionTypeREQUESTFORINFORMATION string = "REQUEST_FOR_INFORMATION"
)

// prop value enum
func (m *Transaction) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, transactionTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *Transaction) validateType(formats strfmt.Registry) error {

	if swag.IsZero(m.Type) { // not required
		return nil
	}

	// value enum
	if err := m.validateTypeEnum("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *Transaction) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *Transaction) UnmarshalBinary(b []byte) error {
	var res Transaction
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
