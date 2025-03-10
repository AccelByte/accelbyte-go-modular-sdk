// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclientmodels"
)

type CreateConfigResponse struct {
	basicclientmodels.ApiResponse
	Data *basicclientmodels.ConfigInfo

	Error400 *basicclientmodels.ValidationErrorEntity
	Error401 *basicclientmodels.ErrorEntity
	Error403 *basicclientmodels.ErrorEntity
	Error409 *basicclientmodels.ErrorEntity
}

func (m *CreateConfigResponse) Unpack() (*basicclientmodels.ConfigInfo, *basicclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 400:
			e, err := m.Error400.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		case 401:
			e, err := m.Error401.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		case 403:
			e, err := m.Error403.TranslateToApiError()
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

		default:
			return nil, &basicclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// CreateConfigReader is a Reader for the CreateConfig structure.
type CreateConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateConfigCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateConfigForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateConfigConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /basic/v1/admin/namespaces/{namespace}/configs returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateConfigCreated creates a CreateConfigCreated with default headers values
func NewCreateConfigCreated() *CreateConfigCreated {
	return &CreateConfigCreated{}
}

/*CreateConfigCreated handles this case with default header values.

  Successful operation
*/
type CreateConfigCreated struct {
	Payload *basicclientmodels.ConfigInfo
}

func (o *CreateConfigCreated) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/configs][%d] createConfigCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateConfigCreated) ToJSONString() string {
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

func (o *CreateConfigCreated) GetPayload() *basicclientmodels.ConfigInfo {
	return o.Payload
}

func (o *CreateConfigCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateConfigBadRequest creates a CreateConfigBadRequest with default headers values
func NewCreateConfigBadRequest() *CreateConfigBadRequest {
	return &CreateConfigBadRequest{}
}

/*CreateConfigBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type CreateConfigBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *CreateConfigBadRequest) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/configs][%d] createConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateConfigBadRequest) ToJSONString() string {
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

func (o *CreateConfigBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *CreateConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateConfigUnauthorized creates a CreateConfigUnauthorized with default headers values
func NewCreateConfigUnauthorized() *CreateConfigUnauthorized {
	return &CreateConfigUnauthorized{}
}

/*CreateConfigUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type CreateConfigUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *CreateConfigUnauthorized) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/configs][%d] createConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateConfigUnauthorized) ToJSONString() string {
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

func (o *CreateConfigUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateConfigForbidden creates a CreateConfigForbidden with default headers values
func NewCreateConfigForbidden() *CreateConfigForbidden {
	return &CreateConfigForbidden{}
}

/*CreateConfigForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type CreateConfigForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *CreateConfigForbidden) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/configs][%d] createConfigForbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateConfigForbidden) ToJSONString() string {
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

func (o *CreateConfigForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateConfigForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateConfigConflict creates a CreateConfigConflict with default headers values
func NewCreateConfigConflict() *CreateConfigConflict {
	return &CreateConfigConflict{}
}

/*CreateConfigConflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11771</td><td>Unable to {action}: Config already exists</td></tr></table>
*/
type CreateConfigConflict struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *CreateConfigConflict) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/configs][%d] createConfigConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateConfigConflict) ToJSONString() string {
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

func (o *CreateConfigConflict) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateConfigConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
