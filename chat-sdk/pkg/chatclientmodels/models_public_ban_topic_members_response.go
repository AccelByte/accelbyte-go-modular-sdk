// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package chatclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsPublicBanTopicMembersResponse Models public ban topic members response
//
// swagger:model Models public ban topic members response.
type ModelsPublicBanTopicMembersResponse struct {

	// userids
	// Required: true
	UserIDs []string `json:"userIDs"`
}

// Validate validates this Models public ban topic members response
func (m *ModelsPublicBanTopicMembersResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateUserIDs(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsPublicBanTopicMembersResponse) validateUserIDs(formats strfmt.Registry) error {

	if err := validate.Required("userIDs", "body", m.UserIDs); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPublicBanTopicMembersResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPublicBanTopicMembersResponse) UnmarshalBinary(b []byte) error {
	var res ModelsPublicBanTopicMembersResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
