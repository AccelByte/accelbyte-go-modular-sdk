// Code generated by go-swagger; DO NOT EDIT.

package ugcclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsCreateContentResponse models create content response
//
// swagger:model models.CreateContentResponse
type ModelsCreateContentResponse struct {

	// channel Id
	// Required: true
	ChannelID *string `json:"channelId"`

	// content type
	ContentType string `json:"contentType,omitempty"`

	// created time
	// Required: true
	CreatedTime *string `json:"createdTime"`

	// Creator Name is deprecated
	// Required: true
	CreatorName *string `json:"creatorName"`

	// custom attributes
	CustomAttributes interface{} `json:"customAttributes,omitempty"`

	// file extension
	// Required: true
	FileExtension *string `json:"fileExtension"`

	// id
	// Required: true
	ID *string `json:"id"`

	// is hidden
	// Required: true
	IsHidden *bool `json:"isHidden"`

	// is official
	// Required: true
	IsOfficial *bool `json:"isOfficial"`

	// name
	// Required: true
	Name *string `json:"name"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// parent namespace
	// Required: true
	ParentNamespace *string `json:"parentNamespace"`

	// payload URL
	PayloadURL []*ModelsPayloadURL `json:"payloadURL"`

	// Preview is legacy code, please use Screenshot instead
	// Required: true
	Preview *string `json:"preview"`

	// preview URL
	PreviewURL []*ModelsPreviewURL `json:"previewURL"`

	// share code
	// Required: true
	ShareCode *string `json:"shareCode"`

	// sub type
	// Required: true
	SubType *string `json:"subType"`

	// tags
	// Required: true
	Tags []string `json:"tags"`

	// type
	// Required: true
	Type *string `json:"type"`

	// updated time
	// Required: true
	UpdatedTime *string `json:"updatedTime"`

	// user Id
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this models create content response
func (m *ModelsCreateContentResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateChannelID(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateCreatedTime(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateCreatorName(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateFileExtension(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateIsHidden(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateIsOfficial(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateParentNamespace(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePayloadURL(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePreview(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePreviewURL(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateShareCode(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateSubType(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateTags(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateType(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateUpdatedTime(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsCreateContentResponse) validateChannelID(formats strfmt.Registry) error {

	if err := validate.Required("channelId", "body", m.ChannelID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateContentResponse) validateCreatedTime(formats strfmt.Registry) error {

	if err := validate.Required("createdTime", "body", m.CreatedTime); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateContentResponse) validateCreatorName(formats strfmt.Registry) error {

	if err := validate.Required("creatorName", "body", m.CreatorName); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateContentResponse) validateFileExtension(formats strfmt.Registry) error {

	if err := validate.Required("fileExtension", "body", m.FileExtension); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateContentResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateContentResponse) validateIsHidden(formats strfmt.Registry) error {

	if err := validate.Required("isHidden", "body", m.IsHidden); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateContentResponse) validateIsOfficial(formats strfmt.Registry) error {

	if err := validate.Required("isOfficial", "body", m.IsOfficial); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateContentResponse) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateContentResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateContentResponse) validateParentNamespace(formats strfmt.Registry) error {

	if err := validate.Required("parentNamespace", "body", m.ParentNamespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateContentResponse) validatePayloadURL(formats strfmt.Registry) error {

	if swag.IsZero(m.PayloadURL) { // not required
		return nil
	}

	for i := 0; i < len(m.PayloadURL); i++ {
		if swag.IsZero(m.PayloadURL[i]) { // not required
			continue
		}

		if m.PayloadURL[i] != nil {
			if err := m.PayloadURL[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("payloadURL" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsCreateContentResponse) validatePreview(formats strfmt.Registry) error {

	if err := validate.Required("preview", "body", m.Preview); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateContentResponse) validatePreviewURL(formats strfmt.Registry) error {

	if swag.IsZero(m.PreviewURL) { // not required
		return nil
	}

	for i := 0; i < len(m.PreviewURL); i++ {
		if swag.IsZero(m.PreviewURL[i]) { // not required
			continue
		}

		if m.PreviewURL[i] != nil {
			if err := m.PreviewURL[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("previewURL" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsCreateContentResponse) validateShareCode(formats strfmt.Registry) error {

	if err := validate.Required("shareCode", "body", m.ShareCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateContentResponse) validateSubType(formats strfmt.Registry) error {

	if err := validate.Required("subType", "body", m.SubType); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateContentResponse) validateTags(formats strfmt.Registry) error {

	if err := validate.Required("tags", "body", m.Tags); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateContentResponse) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateContentResponse) validateUpdatedTime(formats strfmt.Registry) error {

	if err := validate.Required("updatedTime", "body", m.UpdatedTime); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateContentResponse) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsCreateContentResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsCreateContentResponse) UnmarshalBinary(b []byte) error {
	var res ModelsCreateContentResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
