// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// CancelRequest cancel request
//
// swagger:model CancelRequest
type CancelRequest struct {

	// immediate, default false
	Immediate bool `json:"immediate"`

	// cancel reason
	Reason string `json:"reason,omitempty"`
}

// Validate validates this cancel request
func (m *CancelRequest) Validate(formats strfmt.Registry) error {
	return nil
}

// MarshalBinary interface implementation
func (m *CancelRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CancelRequest) UnmarshalBinary(b []byte) error {
	var res CancelRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
