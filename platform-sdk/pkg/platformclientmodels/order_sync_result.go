// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// OrderSyncResult order sync result
//
// swagger:model OrderSyncResult
type OrderSyncResult struct {

	// next evaluated key
	NextEvaluatedKey string `json:"nextEvaluatedKey,omitempty"`

	// orders
	Orders []*Order `json:"orders"`
}

// Validate validates this order sync result
func (m *OrderSyncResult) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateOrders(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *OrderSyncResult) validateOrders(formats strfmt.Registry) error {

	if swag.IsZero(m.Orders) { // not required
		return nil
	}

	for i := 0; i < len(m.Orders); i++ {
		if swag.IsZero(m.Orders[i]) { // not required
			continue
		}

		if m.Orders[i] != nil {
			if err := m.Orders[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("orders" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *OrderSyncResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OrderSyncResult) UnmarshalBinary(b []byte) error {
	var res OrderSyncResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
