// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// WalletInfo Wallet info
//
// swagger:model Wallet info.
type WalletInfo struct {

	// total balance, include effective time-limited balance
	// Required: true
	// Format: int64
	Balance *int64 `json:"balance"`

	// origin of balance
	// Required: true
	BalanceOrigin *string `json:"balanceOrigin"`

	// created at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// currency code
	// Required: true
	CurrencyCode *string `json:"currencyCode"`

	// currency symbol
	// Required: true
	CurrencySymbol *string `json:"currencySymbol"`

	// wallet id
	// Required: true
	ID *string `json:"id"`

	// wallet namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// status
	// Enum: ['ACTIVE', 'INACTIVE']
	// Required: true
	Status *string `json:"status"`

	// time-limited balances info
	TimeLimitedBalances []*TimeLimitedBalance `json:"timeLimitedBalances,omitempty"`

	// total permanent balance
	// Format: int64
	TotalPermanentBalance int64 `json:"totalPermanentBalance,omitempty"`

	// total time limited balance
	// Format: int64
	TotalTimeLimitedBalance int64 `json:"totalTimeLimitedBalance,omitempty"`

	// updated at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// user id
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Wallet info
func (m *WalletInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBalance(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBalanceOrigin(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrencyCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrencySymbol(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
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

func (m *WalletInfo) validateBalance(formats strfmt.Registry) error {

	if err := validate.Required("balance", "body", m.Balance); err != nil {
		return err
	}

	return nil
}

func (m *WalletInfo) validateBalanceOrigin(formats strfmt.Registry) error {

	if err := validate.Required("balanceOrigin", "body", m.BalanceOrigin); err != nil {
		return err
	}

	return nil
}

func (m *WalletInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *WalletInfo) validateCurrencyCode(formats strfmt.Registry) error {

	if err := validate.Required("currencyCode", "body", m.CurrencyCode); err != nil {
		return err
	}

	return nil
}

func (m *WalletInfo) validateCurrencySymbol(formats strfmt.Registry) error {

	if err := validate.Required("currencySymbol", "body", m.CurrencySymbol); err != nil {
		return err
	}

	return nil
}

func (m *WalletInfo) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *WalletInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var walletInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "INACTIVE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		walletInfoTypeStatusPropEnum = append(walletInfoTypeStatusPropEnum, v)
	}
}

const (

	// WalletInfoStatusACTIVE captures enum value "ACTIVE"
	WalletInfoStatusACTIVE string = "ACTIVE"

	// WalletInfoStatusINACTIVE captures enum value "INACTIVE"
	WalletInfoStatusINACTIVE string = "INACTIVE"
)

// prop value enum
func (m *WalletInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, walletInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *WalletInfo) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *WalletInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *WalletInfo) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *WalletInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *WalletInfo) UnmarshalBinary(b []byte) error {
	var res WalletInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
