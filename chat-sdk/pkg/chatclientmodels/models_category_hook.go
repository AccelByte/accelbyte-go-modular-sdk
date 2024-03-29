// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package chatclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsCategoryHook Models category hook
//
// swagger:model Models category hook.
type ModelsCategoryHook struct {

	// driver
	// Enum: ['KAFKA']
	Driver string `json:"driver,omitempty"`

	// params
	Params interface{} `json:"params,omitempty"`
}

// Validate validates this Models category hook
func (m *ModelsCategoryHook) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var modelsCategoryHookTypeDriverPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["KAFKA"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsCategoryHookTypeDriverPropEnum = append(modelsCategoryHookTypeDriverPropEnum, v)
	}
}

const (

	// ModelsCategoryHookDriverKAFKA captures enum value "KAFKA"
	ModelsCategoryHookDriverKAFKA string = "KAFKA"
)

// prop value enum
func (m *ModelsCategoryHook) validateDriverEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsCategoryHookTypeDriverPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsCategoryHook) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsCategoryHook) UnmarshalBinary(b []byte) error {
	var res ModelsCategoryHook
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
