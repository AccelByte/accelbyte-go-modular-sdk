// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ImportStoreCategoryInfo Import store category info
//
// swagger:model Import store category info.
type ImportStoreCategoryInfo struct {

	// category id
	CategoryID string `json:"categoryId,omitempty"`

	// category path
	CategoryPath string `json:"categoryPath,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`
}

// Validate validates this Import store category info
func (m *ImportStoreCategoryInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ImportStoreCategoryInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ImportStoreCategoryInfo) UnmarshalBinary(b []byte) error {
	var res ImportStoreCategoryInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
