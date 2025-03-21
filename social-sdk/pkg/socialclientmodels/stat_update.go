// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package socialclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// StatUpdate Stat update
//
// swagger:model Stat update.
type StatUpdate struct {

	// The field used to define cap behavior of stat cycle min/max override. If set to false, all stat cycle and stat item will continue as is if one stat cycle is capped on its min/max. If set to true, all stat cycle and stat item cannot continue if one of stat cycle is capped on its min/max
	CapCycleOverride bool `json:"capCycleOverride"`

	// cycleids
	// Unique: true
	CycleIds []string `json:"cycleIds"`

	// cycleoverrides
	// Unique: true
	CycleOverrides []*CycleOverrideRequest `json:"cycleOverrides"`

	// defaultvalue
	// Format: double
	DefaultValue float64 `json:"defaultValue,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// globalaggregationmethod
	// Enum: ['LAST', 'MAX', 'MIN', 'TOTAL']
	GlobalAggregationMethod string `json:"globalAggregationMethod,omitempty"`

	// ignoreadditionaldataonvaluerejected
	IgnoreAdditionalDataOnValueRejected bool `json:"ignoreAdditionalDataOnValueRejected"`

	// ispublic
	IsPublic bool `json:"isPublic"`

	// name
	Name string `json:"name,omitempty"`

	// tags
	// Unique: true
	Tags []string `json:"tags"`

	// visibility
	// Enum: ['SERVERONLY', 'SHOWALL']
	Visibility string `json:"visibility,omitempty"`
}

// Validate validates this Stat update
func (m *StatUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var statUpdateTypeGlobalAggregationMethodPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["LAST", "MAX", "MIN", "TOTAL"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		statUpdateTypeGlobalAggregationMethodPropEnum = append(statUpdateTypeGlobalAggregationMethodPropEnum, v)
	}
}

const (

	// StatUpdateGlobalAggregationMethodLAST captures enum value "LAST"
	StatUpdateGlobalAggregationMethodLAST string = "LAST"

	// StatUpdateGlobalAggregationMethodMAX captures enum value "MAX"
	StatUpdateGlobalAggregationMethodMAX string = "MAX"

	// StatUpdateGlobalAggregationMethodMIN captures enum value "MIN"
	StatUpdateGlobalAggregationMethodMIN string = "MIN"

	// StatUpdateGlobalAggregationMethodTOTAL captures enum value "TOTAL"
	StatUpdateGlobalAggregationMethodTOTAL string = "TOTAL"
)

// prop value enum
func (m *StatUpdate) validateGlobalAggregationMethodEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, statUpdateTypeGlobalAggregationMethodPropEnum, true); err != nil {
		return err
	}
	return nil
}

var statUpdateTypeVisibilityPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["SERVERONLY", "SHOWALL"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		statUpdateTypeVisibilityPropEnum = append(statUpdateTypeVisibilityPropEnum, v)
	}
}

const (

	// StatUpdateVisibilitySERVERONLY captures enum value "SERVERONLY"
	StatUpdateVisibilitySERVERONLY string = "SERVERONLY"

	// StatUpdateVisibilitySHOWALL captures enum value "SHOWALL"
	StatUpdateVisibilitySHOWALL string = "SHOWALL"
)

// prop value enum
func (m *StatUpdate) validateVisibilityEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, statUpdateTypeVisibilityPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *StatUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *StatUpdate) UnmarshalBinary(b []byte) error {
	var res StatUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
