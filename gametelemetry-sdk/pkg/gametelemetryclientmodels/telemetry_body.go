// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gametelemetryclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// TelemetryBody Telemetry body
//
// swagger:model Telemetry body.
type TelemetryBody struct {

	// clienttimestamp
	// Format: date-time
	ClientTimestamp *strfmt.DateTime `json:"ClientTimestamp,omitempty"`

	// Adding this `EventID` field in the request body does not override the `EventID` generated by server which is saved in the data lake
	EventID string `json:"EventId,omitempty"`

	// eventname
	// Required: true
	EventName *string `json:"EventName"`

	// eventnamespace
	// Required: true
	EventNamespace *string `json:"EventNamespace"`

	// Adding this `EventTimestamp` field in the request body does not override the `EventTimestamp` generated by server which is saved in the data lake. To add specific timestamp of your telemetry data, please add it to ClientTimestamp field OR a new subfield in the `payload` field
	// Format: date-time
	EventTimestamp *strfmt.DateTime `json:"EventTimestamp,omitempty"`

	// payload
	// Required: true
	Payload interface{} `json:"Payload"`
}

// Validate validates this Telemetry body
func (m *TelemetryBody) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEventName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEventNamespace(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *TelemetryBody) validateEventName(formats strfmt.Registry) error {

	if err := validate.Required("EventName", "body", m.EventName); err != nil {
		return err
	}

	return nil
}

func (m *TelemetryBody) validateEventNamespace(formats strfmt.Registry) error {

	if err := validate.Required("EventNamespace", "body", m.EventNamespace); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *TelemetryBody) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *TelemetryBody) UnmarshalBinary(b []byte) error {
	var res TelemetryBody
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
