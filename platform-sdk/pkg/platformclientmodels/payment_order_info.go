// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// PaymentOrderInfo Payment order info
//
// swagger:model Payment order info.
type PaymentOrderInfo struct {

	// The time of the order authorised
	// Format: date-time
	AuthorisedTime *strfmt.DateTime `json:"authorisedTime,omitempty"`

	// Payment order channel: EXTERNAL or INTERNAL
	// Enum: ['EXTERNAL', 'INTERNAL']
	// Required: true
	Channel *string `json:"channel"`

	// The time of the order chargeback reversed time
	// Format: date-time
	ChargebackReversedTime *strfmt.DateTime `json:"chargebackReversedTime,omitempty"`

	// The time of the order chargeback time
	// Format: date-time
	ChargebackTime *strfmt.DateTime `json:"chargebackTime,omitempty"`

	// The time of the order charged
	// Format: date-time
	ChargedTime *strfmt.DateTime `json:"chargedTime,omitempty"`

	// if charging is true, means user have finished transaction, platform is waiting for payment notification
	Charging bool `json:"charging"`

	// createdAt
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// The time of the order created
	// Format: date-time
	CreatedTime *strfmt.DateTime `json:"createdTime,omitempty"`

	// Payment order currency info
	// Required: true
	Currency *CurrencySummary `json:"currency"`

	// User custom parameters
	CustomParameters interface{} `json:"customParameters,omitempty"`

	// Order description
	Description string `json:"description,omitempty"`

	// External order number
	// Required: true
	ExtOrderNo *string `json:"extOrderNo"`

	// optional, external user id, can be the character id
	ExtUserID string `json:"extUserId,omitempty"`

	// Order item type
	// Enum: ['APP', 'BUNDLE', 'CODE', 'COINS', 'EXTENSION', 'INGAMEITEM', 'LOOTBOX', 'MEDIA', 'OPTIONBOX', 'SEASON', 'SUBSCRIPTION']
	ItemType string `json:"itemType,omitempty"`

	// Payment user language
	Language string `json:"language,omitempty"`

	// metadata
	Metadata map[string]string `json:"metadata,omitempty"`

	// Payment order namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// The notify url if customized
	NotifyURL string `json:"notifyUrl,omitempty"`

	// TEST PURPOSE, if set it will not send async notification to the API invoker, only can set true while this payment is sandbox
	OmitNotification bool `json:"omitNotification"`

	// Payment method
	PaymentMethod string `json:"paymentMethod,omitempty"`

	// Payment method fee
	// Format: int32
	PaymentMethodFee int32 `json:"paymentMethodFee,omitempty"`

	// Payment order number
	// Required: true
	PaymentOrderNo *string `json:"paymentOrderNo"`

	// Payment provider
	// Enum: ['ADYEN', 'ALIPAY', 'CHECKOUT', 'NEONPAY', 'PAYPAL', 'STRIPE', 'WALLET', 'WXPAY', 'XSOLLA']
	PaymentProvider string `json:"paymentProvider,omitempty"`

	// Payment provider fee
	// Format: int32
	PaymentProviderFee int32 `json:"paymentProviderFee,omitempty"`

	// Payment url
	PaymentStationURL string `json:"paymentStationUrl,omitempty"`

	// Payment order price
	// Required: true
	// Format: int32
	Price *int32 `json:"price"`

	// recurring payment order which has recurring token, will do recurring payment if present, otherwise start normal payment flow
	RecurringPaymentOrderNo string `json:"recurringPaymentOrderNo,omitempty"`

	// The time of the order refunded
	// Format: date-time
	RefundedTime *strfmt.DateTime `json:"refundedTime,omitempty"`

	// Payment user region
	Region string `json:"region,omitempty"`

	// The return url if customized
	ReturnURL string `json:"returnUrl,omitempty"`

	// Payment order sales tax
	// Format: int32
	SalesTax int32 `json:"salesTax,omitempty"`

	// isSandbox, indicate if order is sandbox
	// Required: true
	Sandbox *bool `json:"sandbox"`

	// optional, unique identity for the item
	Sku string `json:"sku,omitempty"`

	// Payment order status
	// Enum: ['AUTHORISED', 'AUTHORISE_FAILED', 'CHARGEBACK', 'CHARGEBACK_REVERSED', 'CHARGED', 'CHARGE_FAILED', 'DELETED', 'INIT', 'NOTIFICATION_OF_CHARGEBACK', 'REFUNDED', 'REFUNDING', 'REFUND_FAILED', 'REQUEST_FOR_INFORMATION']
	// Required: true
	Status *string `json:"status"`

	// Payment order status reason
	StatusReason string `json:"statusReason,omitempty"`

	// subscriptionId, payment token will be saved for recurring payment
	SubscriptionID string `json:"subscriptionId,omitempty"`

	// subtotal price
	// Format: int32
	SubtotalPrice int32 `json:"subtotalPrice,omitempty"`

	// The game namespace if it's an external in-game-purchase that resides in publisher namespace
	TargetNamespace string `json:"targetNamespace,omitempty"`

	// The user id in game namespace if it's an external in-game-purchase that resides in publisher namespace
	TargetUserID string `json:"targetUserId,omitempty"`

	// Payment total tax
	// Format: int32
	Tax int32 `json:"tax,omitempty"`

	// Order title
	// Required: true
	Title *string `json:"title"`

	// total price
	// Format: int32
	TotalPrice int32 `json:"totalPrice,omitempty"`

	// total tax
	// Format: int32
	TotalTax int32 `json:"totalTax,omitempty"`

	// Payment order transactions
	Transactions []*Transaction `json:"transactions,omitempty"`

	// updatedAt
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// User id
	// Required: true
	UserID *string `json:"userId"`

	// Payment order VAT
	// Format: int32
	Vat int32 `json:"vat,omitempty"`
}

// Validate validates this Payment order info
func (m *PaymentOrderInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateChannel(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrency(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExtOrderNo(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePaymentOrderNo(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePrice(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSandbox(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTitle(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
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

var paymentOrderInfoTypeChannelPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EXTERNAL", "INTERNAL"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentOrderInfoTypeChannelPropEnum = append(paymentOrderInfoTypeChannelPropEnum, v)
	}
}

const (

	// PaymentOrderInfoChannelEXTERNAL captures enum value "EXTERNAL"
	PaymentOrderInfoChannelEXTERNAL string = "EXTERNAL"

	// PaymentOrderInfoChannelINTERNAL captures enum value "INTERNAL"
	PaymentOrderInfoChannelINTERNAL string = "INTERNAL"
)

// prop value enum
func (m *PaymentOrderInfo) validateChannelEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentOrderInfoTypeChannelPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PaymentOrderInfo) validateChannel(formats strfmt.Registry) error {

	if err := validate.Required("channel", "body", m.Channel); err != nil {
		return err
	}

	// value enum
	if err := m.validateChannelEnum("channel", "body", *m.Channel); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderInfo) validateCurrency(formats strfmt.Registry) error {

	if err := validate.Required("currency", "body", m.Currency); err != nil {
		return err
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

func (m *PaymentOrderInfo) validateExtOrderNo(formats strfmt.Registry) error {

	if err := validate.Required("extOrderNo", "body", m.ExtOrderNo); err != nil {
		return err
	}

	return nil
}

var paymentOrderInfoTypeItemTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "BUNDLE", "CODE", "COINS", "EXTENSION", "INGAMEITEM", "LOOTBOX", "MEDIA", "OPTIONBOX", "SEASON", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentOrderInfoTypeItemTypePropEnum = append(paymentOrderInfoTypeItemTypePropEnum, v)
	}
}

const (

	// PaymentOrderInfoItemTypeAPP captures enum value "APP"
	PaymentOrderInfoItemTypeAPP string = "APP"

	// PaymentOrderInfoItemTypeBUNDLE captures enum value "BUNDLE"
	PaymentOrderInfoItemTypeBUNDLE string = "BUNDLE"

	// PaymentOrderInfoItemTypeCODE captures enum value "CODE"
	PaymentOrderInfoItemTypeCODE string = "CODE"

	// PaymentOrderInfoItemTypeCOINS captures enum value "COINS"
	PaymentOrderInfoItemTypeCOINS string = "COINS"

	// PaymentOrderInfoItemTypeEXTENSION captures enum value "EXTENSION"
	PaymentOrderInfoItemTypeEXTENSION string = "EXTENSION"

	// PaymentOrderInfoItemTypeINGAMEITEM captures enum value "INGAMEITEM"
	PaymentOrderInfoItemTypeINGAMEITEM string = "INGAMEITEM"

	// PaymentOrderInfoItemTypeLOOTBOX captures enum value "LOOTBOX"
	PaymentOrderInfoItemTypeLOOTBOX string = "LOOTBOX"

	// PaymentOrderInfoItemTypeMEDIA captures enum value "MEDIA"
	PaymentOrderInfoItemTypeMEDIA string = "MEDIA"

	// PaymentOrderInfoItemTypeOPTIONBOX captures enum value "OPTIONBOX"
	PaymentOrderInfoItemTypeOPTIONBOX string = "OPTIONBOX"

	// PaymentOrderInfoItemTypeSEASON captures enum value "SEASON"
	PaymentOrderInfoItemTypeSEASON string = "SEASON"

	// PaymentOrderInfoItemTypeSUBSCRIPTION captures enum value "SUBSCRIPTION"
	PaymentOrderInfoItemTypeSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *PaymentOrderInfo) validateItemTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentOrderInfoTypeItemTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PaymentOrderInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderInfo) validatePaymentOrderNo(formats strfmt.Registry) error {

	if err := validate.Required("paymentOrderNo", "body", m.PaymentOrderNo); err != nil {
		return err
	}

	return nil
}

var paymentOrderInfoTypePaymentProviderPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ADYEN", "ALIPAY", "CHECKOUT", "NEONPAY", "PAYPAL", "STRIPE", "WALLET", "WXPAY", "XSOLLA"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentOrderInfoTypePaymentProviderPropEnum = append(paymentOrderInfoTypePaymentProviderPropEnum, v)
	}
}

const (

	// PaymentOrderInfoPaymentProviderADYEN captures enum value "ADYEN"
	PaymentOrderInfoPaymentProviderADYEN string = "ADYEN"

	// PaymentOrderInfoPaymentProviderALIPAY captures enum value "ALIPAY"
	PaymentOrderInfoPaymentProviderALIPAY string = "ALIPAY"

	// PaymentOrderInfoPaymentProviderCHECKOUT captures enum value "CHECKOUT"
	PaymentOrderInfoPaymentProviderCHECKOUT string = "CHECKOUT"

	// PaymentOrderInfoPaymentProviderNEONPAY captures enum value "NEONPAY"
	PaymentOrderInfoPaymentProviderNEONPAY string = "NEONPAY"

	// PaymentOrderInfoPaymentProviderPAYPAL captures enum value "PAYPAL"
	PaymentOrderInfoPaymentProviderPAYPAL string = "PAYPAL"

	// PaymentOrderInfoPaymentProviderSTRIPE captures enum value "STRIPE"
	PaymentOrderInfoPaymentProviderSTRIPE string = "STRIPE"

	// PaymentOrderInfoPaymentProviderWALLET captures enum value "WALLET"
	PaymentOrderInfoPaymentProviderWALLET string = "WALLET"

	// PaymentOrderInfoPaymentProviderWXPAY captures enum value "WXPAY"
	PaymentOrderInfoPaymentProviderWXPAY string = "WXPAY"

	// PaymentOrderInfoPaymentProviderXSOLLA captures enum value "XSOLLA"
	PaymentOrderInfoPaymentProviderXSOLLA string = "XSOLLA"
)

// prop value enum
func (m *PaymentOrderInfo) validatePaymentProviderEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentOrderInfoTypePaymentProviderPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PaymentOrderInfo) validatePrice(formats strfmt.Registry) error {

	if err := validate.Required("price", "body", m.Price); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderInfo) validateSandbox(formats strfmt.Registry) error {

	if err := validate.Required("sandbox", "body", m.Sandbox); err != nil {
		return err
	}

	return nil
}

var paymentOrderInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["AUTHORISED", "AUTHORISE_FAILED", "CHARGEBACK", "CHARGEBACK_REVERSED", "CHARGED", "CHARGE_FAILED", "DELETED", "INIT", "NOTIFICATION_OF_CHARGEBACK", "REFUNDED", "REFUNDING", "REFUND_FAILED", "REQUEST_FOR_INFORMATION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentOrderInfoTypeStatusPropEnum = append(paymentOrderInfoTypeStatusPropEnum, v)
	}
}

const (

	// PaymentOrderInfoStatusAUTHORISED captures enum value "AUTHORISED"
	PaymentOrderInfoStatusAUTHORISED string = "AUTHORISED"

	// PaymentOrderInfoStatusAUTHORISEFAILED captures enum value "AUTHORISE_FAILED"
	PaymentOrderInfoStatusAUTHORISEFAILED string = "AUTHORISE_FAILED"

	// PaymentOrderInfoStatusCHARGEBACK captures enum value "CHARGEBACK"
	PaymentOrderInfoStatusCHARGEBACK string = "CHARGEBACK"

	// PaymentOrderInfoStatusCHARGEBACKREVERSED captures enum value "CHARGEBACK_REVERSED"
	PaymentOrderInfoStatusCHARGEBACKREVERSED string = "CHARGEBACK_REVERSED"

	// PaymentOrderInfoStatusCHARGED captures enum value "CHARGED"
	PaymentOrderInfoStatusCHARGED string = "CHARGED"

	// PaymentOrderInfoStatusCHARGEFAILED captures enum value "CHARGE_FAILED"
	PaymentOrderInfoStatusCHARGEFAILED string = "CHARGE_FAILED"

	// PaymentOrderInfoStatusDELETED captures enum value "DELETED"
	PaymentOrderInfoStatusDELETED string = "DELETED"

	// PaymentOrderInfoStatusINIT captures enum value "INIT"
	PaymentOrderInfoStatusINIT string = "INIT"

	// PaymentOrderInfoStatusNOTIFICATIONOFCHARGEBACK captures enum value "NOTIFICATION_OF_CHARGEBACK"
	PaymentOrderInfoStatusNOTIFICATIONOFCHARGEBACK string = "NOTIFICATION_OF_CHARGEBACK"

	// PaymentOrderInfoStatusREFUNDED captures enum value "REFUNDED"
	PaymentOrderInfoStatusREFUNDED string = "REFUNDED"

	// PaymentOrderInfoStatusREFUNDING captures enum value "REFUNDING"
	PaymentOrderInfoStatusREFUNDING string = "REFUNDING"

	// PaymentOrderInfoStatusREFUNDFAILED captures enum value "REFUND_FAILED"
	PaymentOrderInfoStatusREFUNDFAILED string = "REFUND_FAILED"

	// PaymentOrderInfoStatusREQUESTFORINFORMATION captures enum value "REQUEST_FOR_INFORMATION"
	PaymentOrderInfoStatusREQUESTFORINFORMATION string = "REQUEST_FOR_INFORMATION"
)

// prop value enum
func (m *PaymentOrderInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentOrderInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PaymentOrderInfo) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderInfo) validateTitle(formats strfmt.Registry) error {

	if err := validate.Required("title", "body", m.Title); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *PaymentOrderInfo) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PaymentOrderInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentOrderInfo) UnmarshalBinary(b []byte) error {
	var res PaymentOrderInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
