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

// TicketSaleDecrementRequest ticket sale decrement request
//
// swagger:model TicketSaleDecrementRequest
type TicketSaleDecrementRequest struct {

	// orderNo
	// Required: true
	OrderNo *string `json:"orderNo"`
}

// Validate validates this ticket sale decrement request
func (m *TicketSaleDecrementRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateOrderNo(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *TicketSaleDecrementRequest) validateOrderNo(formats strfmt.Registry) error {

	if err := validate.Required("orderNo", "body", m.OrderNo); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *TicketSaleDecrementRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *TicketSaleDecrementRequest) UnmarshalBinary(b []byte) error {
	var res TicketSaleDecrementRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
