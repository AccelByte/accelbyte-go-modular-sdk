// Code generated by go-swagger; DO NOT EDIT.

package reportingclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// RestapiSubmitReportResponse restapi submit report response
//
// swagger:model restapi.submitReportResponse
type RestapiSubmitReportResponse struct {

	// category
	// Required: true
	// Enum: [CHAT EXTENSION UGC USER]
	Category *string `json:"category"`

	// created at
	// Required: true
	CreatedAt *string `json:"createdAt"`

	// extension category
	ExtensionCategory string `json:"extensionCategory,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// object Id
	// Required: true
	ObjectID *string `json:"objectId"`

	// object type
	// Required: true
	ObjectType *string `json:"objectType"`

	// status
	// Required: true
	// Enum: [AUTO_MODERATED CLOSED OPEN UNKNOWN]
	Status *string `json:"status"`

	// ticket Id
	// Required: true
	TicketID *string `json:"ticketId"`

	// updated at
	// Required: true
	UpdatedAt *string `json:"updatedAt"`

	// user Id
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this restapi submit report response
func (m *RestapiSubmitReportResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCategory(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateObjectID(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateObjectType(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateTicketID(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateUpdatedAt(formats); err != nil {
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

var restapiSubmitReportResponseTypeCategoryPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CHAT","EXTENSION","UGC","USER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		restapiSubmitReportResponseTypeCategoryPropEnum = append(restapiSubmitReportResponseTypeCategoryPropEnum, v)
	}
}

const (

	// RestapiSubmitReportResponseCategoryCHAT captures enum value "CHAT"
	RestapiSubmitReportResponseCategoryCHAT string = "CHAT"

	// RestapiSubmitReportResponseCategoryEXTENSION captures enum value "EXTENSION"
	RestapiSubmitReportResponseCategoryEXTENSION string = "EXTENSION"

	// RestapiSubmitReportResponseCategoryUGC captures enum value "UGC"
	RestapiSubmitReportResponseCategoryUGC string = "UGC"

	// RestapiSubmitReportResponseCategoryUSER captures enum value "USER"
	RestapiSubmitReportResponseCategoryUSER string = "USER"
)

// prop value enum
func (m *RestapiSubmitReportResponse) validateCategoryEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, restapiSubmitReportResponseTypeCategoryPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *RestapiSubmitReportResponse) validateCategory(formats strfmt.Registry) error {

	if err := validate.Required("category", "body", m.Category); err != nil {
		return err
	}

	// value enum
	if err := m.validateCategoryEnum("category", "body", *m.Category); err != nil {
		return err
	}

	return nil
}

func (m *RestapiSubmitReportResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *RestapiSubmitReportResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *RestapiSubmitReportResponse) validateObjectID(formats strfmt.Registry) error {

	if err := validate.Required("objectId", "body", m.ObjectID); err != nil {
		return err
	}

	return nil
}

func (m *RestapiSubmitReportResponse) validateObjectType(formats strfmt.Registry) error {

	if err := validate.Required("objectType", "body", m.ObjectType); err != nil {
		return err
	}

	return nil
}

var restapiSubmitReportResponseTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["AUTO_MODERATED","CLOSED","OPEN","UNKNOWN"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		restapiSubmitReportResponseTypeStatusPropEnum = append(restapiSubmitReportResponseTypeStatusPropEnum, v)
	}
}

const (

	// RestapiSubmitReportResponseStatusAUTOMODERATED captures enum value "AUTO_MODERATED"
	RestapiSubmitReportResponseStatusAUTOMODERATED string = "AUTO_MODERATED"

	// RestapiSubmitReportResponseStatusCLOSED captures enum value "CLOSED"
	RestapiSubmitReportResponseStatusCLOSED string = "CLOSED"

	// RestapiSubmitReportResponseStatusOPEN captures enum value "OPEN"
	RestapiSubmitReportResponseStatusOPEN string = "OPEN"

	// RestapiSubmitReportResponseStatusUNKNOWN captures enum value "UNKNOWN"
	RestapiSubmitReportResponseStatusUNKNOWN string = "UNKNOWN"
)

// prop value enum
func (m *RestapiSubmitReportResponse) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, restapiSubmitReportResponseTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *RestapiSubmitReportResponse) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *RestapiSubmitReportResponse) validateTicketID(formats strfmt.Registry) error {

	if err := validate.Required("ticketId", "body", m.TicketID); err != nil {
		return err
	}

	return nil
}

func (m *RestapiSubmitReportResponse) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
		return err
	}

	return nil
}

func (m *RestapiSubmitReportResponse) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RestapiSubmitReportResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RestapiSubmitReportResponse) UnmarshalBinary(b []byte) error {
	var res RestapiSubmitReportResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
