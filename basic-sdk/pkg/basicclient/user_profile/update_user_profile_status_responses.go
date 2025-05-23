// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_profile

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

type UpdateUserProfileStatusResponse struct {
	basicclientmodels.ApiResponse
	Data *basicclientmodels.UserProfilePrivateInfo

	Error400 *basicclientmodels.ValidationErrorEntity
	Error401 *basicclientmodels.ErrorEntity
	Error403 *basicclientmodels.ErrorEntity
	Error404 *basicclientmodels.ErrorEntity
}

func (m *UpdateUserProfileStatusResponse) Unpack() (*basicclientmodels.UserProfilePrivateInfo, *basicclientmodels.ApiError) {
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

		case 404:
			e, err := m.Error404.TranslateToApiError()
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

// UpdateUserProfileStatusReader is a Reader for the UpdateUserProfileStatus structure.
type UpdateUserProfileStatusReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateUserProfileStatusReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateUserProfileStatusOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateUserProfileStatusBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateUserProfileStatusUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateUserProfileStatusForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateUserProfileStatusNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/status returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateUserProfileStatusOK creates a UpdateUserProfileStatusOK with default headers values
func NewUpdateUserProfileStatusOK() *UpdateUserProfileStatusOK {
	return &UpdateUserProfileStatusOK{}
}

/*UpdateUserProfileStatusOK handles this case with default header values.

  successful operation
*/
type UpdateUserProfileStatusOK struct {
	Payload *basicclientmodels.UserProfilePrivateInfo
}

func (o *UpdateUserProfileStatusOK) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/status][%d] updateUserProfileStatusOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateUserProfileStatusOK) ToJSONString() string {
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

func (o *UpdateUserProfileStatusOK) GetPayload() *basicclientmodels.UserProfilePrivateInfo {
	return o.Payload
}

func (o *UpdateUserProfileStatusOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.UserProfilePrivateInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateUserProfileStatusBadRequest creates a UpdateUserProfileStatusBadRequest with default headers values
func NewUpdateUserProfileStatusBadRequest() *UpdateUserProfileStatusBadRequest {
	return &UpdateUserProfileStatusBadRequest{}
}

/*UpdateUserProfileStatusBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type UpdateUserProfileStatusBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *UpdateUserProfileStatusBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/status][%d] updateUserProfileStatusBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateUserProfileStatusBadRequest) ToJSONString() string {
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

func (o *UpdateUserProfileStatusBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdateUserProfileStatusBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateUserProfileStatusUnauthorized creates a UpdateUserProfileStatusUnauthorized with default headers values
func NewUpdateUserProfileStatusUnauthorized() *UpdateUserProfileStatusUnauthorized {
	return &UpdateUserProfileStatusUnauthorized{}
}

/*UpdateUserProfileStatusUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type UpdateUserProfileStatusUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UpdateUserProfileStatusUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/status][%d] updateUserProfileStatusUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateUserProfileStatusUnauthorized) ToJSONString() string {
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

func (o *UpdateUserProfileStatusUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateUserProfileStatusUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateUserProfileStatusForbidden creates a UpdateUserProfileStatusForbidden with default headers values
func NewUpdateUserProfileStatusForbidden() *UpdateUserProfileStatusForbidden {
	return &UpdateUserProfileStatusForbidden{}
}

/*UpdateUserProfileStatusForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type UpdateUserProfileStatusForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UpdateUserProfileStatusForbidden) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/status][%d] updateUserProfileStatusForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateUserProfileStatusForbidden) ToJSONString() string {
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

func (o *UpdateUserProfileStatusForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateUserProfileStatusForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateUserProfileStatusNotFound creates a UpdateUserProfileStatusNotFound with default headers values
func NewUpdateUserProfileStatusNotFound() *UpdateUserProfileStatusNotFound {
	return &UpdateUserProfileStatusNotFound{}
}

/*UpdateUserProfileStatusNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11440</td><td>Unable to {action}: User profile not found in namespace [{namespace}]</td></tr></table>
*/
type UpdateUserProfileStatusNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UpdateUserProfileStatusNotFound) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/status][%d] updateUserProfileStatusNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateUserProfileStatusNotFound) ToJSONString() string {
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

func (o *UpdateUserProfileStatusNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateUserProfileStatusNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
