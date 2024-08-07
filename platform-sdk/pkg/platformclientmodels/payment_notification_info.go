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

// PaymentNotificationInfo Payment notification info
//
// swagger:model Payment notification info.
type PaymentNotificationInfo struct {

	// createdAt
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// external id
	ExternalID string `json:"externalId,omitempty"`

	// id
	// Required: true
	ID *string `json:"id"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// notification payload
	// Required: true
	Notification interface{} `json:"notification"`

	// payment provider
	// Enum: ['ADYEN', 'ALIPAY', 'CHECKOUT', 'NEONPAY', 'PAYPAL', 'STRIPE', 'WALLET', 'WXPAY', 'XSOLLA']
	// Required: true
	NotificationSource *string `json:"notificationSource"`

	// notification type
	// Required: true
	NotificationType *string `json:"notificationType"`

	// payment order No
	// Required: true
	PaymentOrderNo *string `json:"paymentOrderNo"`

	// status
	// Enum: ['ERROR', 'IGNORED', 'PROCESSED', 'WARN']
	// Required: true
	Status *string `json:"status"`

	// status reason
	StatusReason string `json:"statusReason,omitempty"`

	// updatedAt
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`
}

// Validate validates this Payment notification info
func (m *PaymentNotificationInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNotificationSource(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNotificationType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePaymentOrderNo(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
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

func (m *PaymentNotificationInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *PaymentNotificationInfo) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *PaymentNotificationInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var paymentNotificationInfoTypeNotificationSourcePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ADYEN", "ALIPAY", "CHECKOUT", "NEONPAY", "PAYPAL", "STRIPE", "WALLET", "WXPAY", "XSOLLA"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentNotificationInfoTypeNotificationSourcePropEnum = append(paymentNotificationInfoTypeNotificationSourcePropEnum, v)
	}
}

const (

	// PaymentNotificationInfoNotificationSourceADYEN captures enum value "ADYEN"
	PaymentNotificationInfoNotificationSourceADYEN string = "ADYEN"

	// PaymentNotificationInfoNotificationSourceALIPAY captures enum value "ALIPAY"
	PaymentNotificationInfoNotificationSourceALIPAY string = "ALIPAY"

	// PaymentNotificationInfoNotificationSourceCHECKOUT captures enum value "CHECKOUT"
	PaymentNotificationInfoNotificationSourceCHECKOUT string = "CHECKOUT"

	// PaymentNotificationInfoNotificationSourceNEONPAY captures enum value "NEONPAY"
	PaymentNotificationInfoNotificationSourceNEONPAY string = "NEONPAY"

	// PaymentNotificationInfoNotificationSourcePAYPAL captures enum value "PAYPAL"
	PaymentNotificationInfoNotificationSourcePAYPAL string = "PAYPAL"

	// PaymentNotificationInfoNotificationSourceSTRIPE captures enum value "STRIPE"
	PaymentNotificationInfoNotificationSourceSTRIPE string = "STRIPE"

	// PaymentNotificationInfoNotificationSourceWALLET captures enum value "WALLET"
	PaymentNotificationInfoNotificationSourceWALLET string = "WALLET"

	// PaymentNotificationInfoNotificationSourceWXPAY captures enum value "WXPAY"
	PaymentNotificationInfoNotificationSourceWXPAY string = "WXPAY"

	// PaymentNotificationInfoNotificationSourceXSOLLA captures enum value "XSOLLA"
	PaymentNotificationInfoNotificationSourceXSOLLA string = "XSOLLA"
)

// prop value enum
func (m *PaymentNotificationInfo) validateNotificationSourceEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentNotificationInfoTypeNotificationSourcePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PaymentNotificationInfo) validateNotificationSource(formats strfmt.Registry) error {

	if err := validate.Required("notificationSource", "body", m.NotificationSource); err != nil {
		return err
	}

	// value enum
	if err := m.validateNotificationSourceEnum("notificationSource", "body", *m.NotificationSource); err != nil {
		return err
	}

	return nil
}

func (m *PaymentNotificationInfo) validateNotificationType(formats strfmt.Registry) error {

	if err := validate.Required("notificationType", "body", m.NotificationType); err != nil {
		return err
	}

	return nil
}

func (m *PaymentNotificationInfo) validatePaymentOrderNo(formats strfmt.Registry) error {

	if err := validate.Required("paymentOrderNo", "body", m.PaymentOrderNo); err != nil {
		return err
	}

	return nil
}

var paymentNotificationInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ERROR", "IGNORED", "PROCESSED", "WARN"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		paymentNotificationInfoTypeStatusPropEnum = append(paymentNotificationInfoTypeStatusPropEnum, v)
	}
}

const (

	// PaymentNotificationInfoStatusERROR captures enum value "ERROR"
	PaymentNotificationInfoStatusERROR string = "ERROR"

	// PaymentNotificationInfoStatusIGNORED captures enum value "IGNORED"
	PaymentNotificationInfoStatusIGNORED string = "IGNORED"

	// PaymentNotificationInfoStatusPROCESSED captures enum value "PROCESSED"
	PaymentNotificationInfoStatusPROCESSED string = "PROCESSED"

	// PaymentNotificationInfoStatusWARN captures enum value "WARN"
	PaymentNotificationInfoStatusWARN string = "WARN"
)

// prop value enum
func (m *PaymentNotificationInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, paymentNotificationInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *PaymentNotificationInfo) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *PaymentNotificationInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PaymentNotificationInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PaymentNotificationInfo) UnmarshalBinary(b []byte) error {
	var res PaymentNotificationInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
