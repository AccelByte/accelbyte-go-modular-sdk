// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ugcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsCreatorOverviewResponse Models creator overview response
//
// swagger:model Models creator overview response.
type ModelsCreatorOverviewResponse struct {

	// Number of followers
	// Required: true
	// Format: int32
	FollowCount *int32 `json:"followCount"`

	// Number of following
	// Required: true
	// Format: int32
	FollowingCount *int32 `json:"followingCount"`

	// id
	// Required: true
	ID *string `json:"id"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// parentnamespace
	// Required: true
	ParentNamespace *string `json:"parentNamespace"`

	// Total all other user's like to creator content
	// Required: true
	// Format: integer
	TotalLikedContent *int64 `json:"totalLikedContent"`
}

// Validate validates this Models creator overview response
func (m *ModelsCreatorOverviewResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFollowCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFollowingCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateParentNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTotalLikedContent(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsCreatorOverviewResponse) validateFollowCount(formats strfmt.Registry) error {

	if err := validate.Required("followCount", "body", m.FollowCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreatorOverviewResponse) validateFollowingCount(formats strfmt.Registry) error {

	if err := validate.Required("followingCount", "body", m.FollowingCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreatorOverviewResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreatorOverviewResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreatorOverviewResponse) validateParentNamespace(formats strfmt.Registry) error {

	if err := validate.Required("parentNamespace", "body", m.ParentNamespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreatorOverviewResponse) validateTotalLikedContent(formats strfmt.Registry) error {

	if err := validate.Required("totalLikedContent", "body", m.TotalLikedContent); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsCreatorOverviewResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsCreatorOverviewResponse) UnmarshalBinary(b []byte) error {
	var res ModelsCreatorOverviewResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
