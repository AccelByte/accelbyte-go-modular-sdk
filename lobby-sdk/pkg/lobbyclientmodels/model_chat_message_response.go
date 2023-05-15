// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelChatMessageResponse Model chat message response
//
// swagger:model Model chat message response.
type ModelChatMessageResponse struct {

	// from
	// Required: true
	From *string `json:"from"`

	// id
	// Required: true
	ID *string `json:"id"`

	// payload
	// Required: true
	Payload *string `json:"payload"`

	// receivedat
	// Required: true
	// Format: int64
	ReceivedAt *int64 `json:"receivedAt"`

	// to
	// Required: true
	To *string `json:"to"`
}

// Validate validates this Model chat message response
func (m *ModelChatMessageResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFrom(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePayload(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReceivedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTo(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelChatMessageResponse) validateFrom(formats strfmt.Registry) error {

	if err := validate.Required("from", "body", m.From); err != nil {
		return err
	}

	return nil
}

func (m *ModelChatMessageResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ModelChatMessageResponse) validatePayload(formats strfmt.Registry) error {

	if err := validate.Required("payload", "body", m.Payload); err != nil {
		return err
	}

	return nil
}

func (m *ModelChatMessageResponse) validateReceivedAt(formats strfmt.Registry) error {

	if err := validate.Required("receivedAt", "body", m.ReceivedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelChatMessageResponse) validateTo(formats strfmt.Registry) error {

	if err := validate.Required("to", "body", m.To); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelChatMessageResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelChatMessageResponse) UnmarshalBinary(b []byte) error {
	var res ModelChatMessageResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
