// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// HierarchicalCategoryInfo Hierarchical category info
//
// swagger:model Hierarchical category info.
type HierarchicalCategoryInfo struct {

	// Category path
	// Required: true
	CategoryPath *string `json:"categoryPath"`

	// Child category list
	// Required: true
	ChildCategories []*HierarchicalCategoryInfo `json:"childCategories"`

	// Category created time
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// Category display name
	// Required: true
	DisplayName *string `json:"displayName"`

	// Category namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// Parent category path
	// Required: true
	ParentCategoryPath *string `json:"parentCategoryPath"`

	// root
	Root bool `json:"root"`

	// Category updated time
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`
}

// Validate validates this Hierarchical category info
func (m *HierarchicalCategoryInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCategoryPath(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateChildCategories(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDisplayName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateParentCategoryPath(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *HierarchicalCategoryInfo) validateCategoryPath(formats strfmt.Registry) error {

	if err := validate.Required("categoryPath", "body", m.CategoryPath); err != nil {
		return err
	}

	return nil
}

func (m *HierarchicalCategoryInfo) validateChildCategories(formats strfmt.Registry) error {

	if err := validate.Required("childCategories", "body", m.ChildCategories); err != nil {
		return err
	}

	for i := 0; i < len(m.ChildCategories); i++ {
		if swag.IsZero(m.ChildCategories[i]) { // not required
			continue
		}

		if m.ChildCategories[i] != nil {
			if err := m.ChildCategories[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("childCategories" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *HierarchicalCategoryInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *HierarchicalCategoryInfo) validateDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("displayName", "body", m.DisplayName); err != nil {
		return err
	}

	return nil
}

func (m *HierarchicalCategoryInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *HierarchicalCategoryInfo) validateParentCategoryPath(formats strfmt.Registry) error {

	if err := validate.Required("parentCategoryPath", "body", m.ParentCategoryPath); err != nil {
		return err
	}

	return nil
}

func (m *HierarchicalCategoryInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *HierarchicalCategoryInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *HierarchicalCategoryInfo) UnmarshalBinary(b []byte) error {
	var res HierarchicalCategoryInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
