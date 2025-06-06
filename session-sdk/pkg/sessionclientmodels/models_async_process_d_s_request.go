// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package sessionclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelsAsyncProcessDSRequest Models async process DS request
//
// swagger:model Models async process DS request.
type ModelsAsyncProcessDSRequest struct {

	// async
	Async bool `json:"async"`

	// timeout
	// Format: int64
	Timeout int64 `json:"timeout,omitempty"`
}

// Validate validates this Models async process DS request
func (m *ModelsAsyncProcessDSRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAsyncProcessDSRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAsyncProcessDSRequest) UnmarshalBinary(b []byte) error {
	var res ModelsAsyncProcessDSRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
