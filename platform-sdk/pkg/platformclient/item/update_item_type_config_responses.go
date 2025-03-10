// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package item

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
)

type UpdateItemTypeConfigResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.ItemTypeConfigInfo

	Error404 *platformclientmodels.ErrorEntity
	Error409 *platformclientmodels.ErrorEntity
	Error422 *platformclientmodels.ValidationErrorEntity
}

func (m *UpdateItemTypeConfigResponse) Unpack() (*platformclientmodels.ItemTypeConfigInfo, *platformclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 404:
			e, err := m.Error404.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		case 409:
			e, err := m.Error409.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		case 422:
			e, err := m.Error422.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		default:
			return nil, &platformclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// UpdateItemTypeConfigReader is a Reader for the UpdateItemTypeConfig structure.
type UpdateItemTypeConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateItemTypeConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateItemTypeConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateItemTypeConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdateItemTypeConfigConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUpdateItemTypeConfigUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/items/configs/{id} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateItemTypeConfigOK creates a UpdateItemTypeConfigOK with default headers values
func NewUpdateItemTypeConfigOK() *UpdateItemTypeConfigOK {
	return &UpdateItemTypeConfigOK{}
}

/*UpdateItemTypeConfigOK handles this case with default header values.

  successful operation
*/
type UpdateItemTypeConfigOK struct {
	Payload *platformclientmodels.ItemTypeConfigInfo
}

func (o *UpdateItemTypeConfigOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/items/configs/{id}][%d] updateItemTypeConfigOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateItemTypeConfigOK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *UpdateItemTypeConfigOK) GetPayload() *platformclientmodels.ItemTypeConfigInfo {
	return o.Payload
}

func (o *UpdateItemTypeConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ItemTypeConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateItemTypeConfigNotFound creates a UpdateItemTypeConfigNotFound with default headers values
func NewUpdateItemTypeConfigNotFound() *UpdateItemTypeConfigNotFound {
	return &UpdateItemTypeConfigNotFound{}
}

/*UpdateItemTypeConfigNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30541</td><td>Item type config [{id}] doesn't exist</td></tr></table>
*/
type UpdateItemTypeConfigNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateItemTypeConfigNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/items/configs/{id}][%d] updateItemTypeConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateItemTypeConfigNotFound) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *UpdateItemTypeConfigNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateItemTypeConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateItemTypeConfigConflict creates a UpdateItemTypeConfigConflict with default headers values
func NewUpdateItemTypeConfigConflict() *UpdateItemTypeConfigConflict {
	return &UpdateItemTypeConfigConflict{}
}

/*UpdateItemTypeConfigConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30371</td><td>Item type config for type [{itemType}] and clazz [{clazz}] already exists</td></tr></table>
*/
type UpdateItemTypeConfigConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateItemTypeConfigConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/items/configs/{id}][%d] updateItemTypeConfigConflict  %+v", 409, o.ToJSONString())
}

func (o *UpdateItemTypeConfigConflict) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *UpdateItemTypeConfigConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateItemTypeConfigConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateItemTypeConfigUnprocessableEntity creates a UpdateItemTypeConfigUnprocessableEntity with default headers values
func NewUpdateItemTypeConfigUnprocessableEntity() *UpdateItemTypeConfigUnprocessableEntity {
	return &UpdateItemTypeConfigUnprocessableEntity{}
}

/*UpdateItemTypeConfigUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdateItemTypeConfigUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *UpdateItemTypeConfigUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/items/configs/{id}][%d] updateItemTypeConfigUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UpdateItemTypeConfigUnprocessableEntity) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *UpdateItemTypeConfigUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdateItemTypeConfigUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
