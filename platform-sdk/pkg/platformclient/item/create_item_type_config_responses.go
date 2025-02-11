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

type CreateItemTypeConfigResponse struct {
	platformclientmodels.ApiResponse

	Error400 *platformclientmodels.ErrorEntity
	Error409 *platformclientmodels.ErrorEntity
	Error422 *platformclientmodels.ValidationErrorEntity
}

func (m *CreateItemTypeConfigResponse) Unpack() *platformclientmodels.ApiError {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 400:
			e, err := m.Error400.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 409:
			e, err := m.Error409.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 422:
			e, err := m.Error422.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		default:
			return &platformclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// CreateItemTypeConfigReader is a Reader for the CreateItemTypeConfig structure.
type CreateItemTypeConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateItemTypeConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateItemTypeConfigCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateItemTypeConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateItemTypeConfigConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewCreateItemTypeConfigUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/items/configs returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateItemTypeConfigCreated creates a CreateItemTypeConfigCreated with default headers values
func NewCreateItemTypeConfigCreated() *CreateItemTypeConfigCreated {
	return &CreateItemTypeConfigCreated{}
}

/*CreateItemTypeConfigCreated handles this case with default header values.

  item type config created
*/
type CreateItemTypeConfigCreated struct {
}

func (o *CreateItemTypeConfigCreated) Error() string {
	return fmt.Sprintf("[POST /platform/admin/items/configs][%d] createItemTypeConfigCreated ", 201)
}

func (o *CreateItemTypeConfigCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewCreateItemTypeConfigBadRequest creates a CreateItemTypeConfigBadRequest with default headers values
func NewCreateItemTypeConfigBadRequest() *CreateItemTypeConfigBadRequest {
	return &CreateItemTypeConfigBadRequest{}
}

/*CreateItemTypeConfigBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30336</td><td>Item type [{itemType}] does not support</td></tr></table>
*/
type CreateItemTypeConfigBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CreateItemTypeConfigBadRequest) Error() string {
	return fmt.Sprintf("[POST /platform/admin/items/configs][%d] createItemTypeConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateItemTypeConfigBadRequest) ToJSONString() string {
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

func (o *CreateItemTypeConfigBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateItemTypeConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateItemTypeConfigConflict creates a CreateItemTypeConfigConflict with default headers values
func NewCreateItemTypeConfigConflict() *CreateItemTypeConfigConflict {
	return &CreateItemTypeConfigConflict{}
}

/*CreateItemTypeConfigConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30371</td><td>Item type config for type [{itemType}] and clazz [{clazz}] already exists</td></tr></table>
*/
type CreateItemTypeConfigConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CreateItemTypeConfigConflict) Error() string {
	return fmt.Sprintf("[POST /platform/admin/items/configs][%d] createItemTypeConfigConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateItemTypeConfigConflict) ToJSONString() string {
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

func (o *CreateItemTypeConfigConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateItemTypeConfigConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateItemTypeConfigUnprocessableEntity creates a CreateItemTypeConfigUnprocessableEntity with default headers values
func NewCreateItemTypeConfigUnprocessableEntity() *CreateItemTypeConfigUnprocessableEntity {
	return &CreateItemTypeConfigUnprocessableEntity{}
}

/*CreateItemTypeConfigUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type CreateItemTypeConfigUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *CreateItemTypeConfigUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /platform/admin/items/configs][%d] createItemTypeConfigUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *CreateItemTypeConfigUnprocessableEntity) ToJSONString() string {
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

func (o *CreateItemTypeConfigUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *CreateItemTypeConfigUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
