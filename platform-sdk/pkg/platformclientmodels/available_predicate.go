// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"encoding/json"
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// AvailablePredicate available predicate object
//
// swagger:model AvailablePredicate
type AvailablePredicate struct {

	// available comparison list
	AvailableComparisons []*AvailableComparison `json:"availableComparisons"`

	// available predicate type
	// Enum: [EntitlementPredicate SeasonPassPredicate SeasonTierPredicate]
	PredicateType string `json:"predicateType,omitempty"`

	// whether show any of on config page
	ShowAnyOf bool `json:"showAnyOf"`

	// predicate value type
	// Enum: [List Number String]
	ValueType string `json:"valueType,omitempty"`
}

// Validate validates this available predicate
func (m *AvailablePredicate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAvailableComparisons(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePredicateType(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateValueType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AvailablePredicate) validateAvailableComparisons(formats strfmt.Registry) error {

	if swag.IsZero(m.AvailableComparisons) { // not required
		return nil
	}

	for i := 0; i < len(m.AvailableComparisons); i++ {
		if swag.IsZero(m.AvailableComparisons[i]) { // not required
			continue
		}

		if m.AvailableComparisons[i] != nil {
			if err := m.AvailableComparisons[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("availableComparisons" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

var availablePredicateTypePredicateTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EntitlementPredicate","SeasonPassPredicate","SeasonTierPredicate"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		availablePredicateTypePredicateTypePropEnum = append(availablePredicateTypePredicateTypePropEnum, v)
	}
}

const (

	// AvailablePredicatePredicateTypeEntitlementPredicate captures enum value "EntitlementPredicate"
	AvailablePredicatePredicateTypeEntitlementPredicate string = "EntitlementPredicate"

	// AvailablePredicatePredicateTypeSeasonPassPredicate captures enum value "SeasonPassPredicate"
	AvailablePredicatePredicateTypeSeasonPassPredicate string = "SeasonPassPredicate"

	// AvailablePredicatePredicateTypeSeasonTierPredicate captures enum value "SeasonTierPredicate"
	AvailablePredicatePredicateTypeSeasonTierPredicate string = "SeasonTierPredicate"
)

// prop value enum
func (m *AvailablePredicate) validatePredicateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, availablePredicateTypePredicateTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *AvailablePredicate) validatePredicateType(formats strfmt.Registry) error {

	if swag.IsZero(m.PredicateType) { // not required
		return nil
	}

	// value enum
	if err := m.validatePredicateTypeEnum("predicateType", "body", m.PredicateType); err != nil {
		return err
	}

	return nil
}

var availablePredicateTypeValueTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["List","Number","String"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		availablePredicateTypeValueTypePropEnum = append(availablePredicateTypeValueTypePropEnum, v)
	}
}

const (

	// AvailablePredicateValueTypeList captures enum value "List"
	AvailablePredicateValueTypeList string = "List"

	// AvailablePredicateValueTypeNumber captures enum value "Number"
	AvailablePredicateValueTypeNumber string = "Number"

	// AvailablePredicateValueTypeString captures enum value "String"
	AvailablePredicateValueTypeString string = "String"
)

// prop value enum
func (m *AvailablePredicate) validateValueTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, availablePredicateTypeValueTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *AvailablePredicate) validateValueType(formats strfmt.Registry) error {

	if swag.IsZero(m.ValueType) { // not required
		return nil
	}

	// value enum
	if err := m.validateValueTypeEnum("valueType", "body", m.ValueType); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AvailablePredicate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AvailablePredicate) UnmarshalBinary(b []byte) error {
	var res AvailablePredicate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
