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

type DeleteUserProfileResponse struct {
	basicclientmodels.ApiResponse
	Data *basicclientmodels.UserProfilePrivateInfo

	Error400 *basicclientmodels.ValidationErrorEntity
	Error401 *basicclientmodels.ErrorEntity
	Error403 *basicclientmodels.ErrorEntity
	Error404 *basicclientmodels.ErrorEntity
}

func (m *DeleteUserProfileResponse) Unpack() (*basicclientmodels.UserProfilePrivateInfo, *basicclientmodels.ApiError) {
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

// DeleteUserProfileReader is a Reader for the DeleteUserProfile structure.
type DeleteUserProfileReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteUserProfileReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDeleteUserProfileOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteUserProfileBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteUserProfileUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteUserProfileForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteUserProfileNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteUserProfileOK creates a DeleteUserProfileOK with default headers values
func NewDeleteUserProfileOK() *DeleteUserProfileOK {
	return &DeleteUserProfileOK{}
}

/*DeleteUserProfileOK handles this case with default header values.

  successful operation
*/
type DeleteUserProfileOK struct {
	Payload *basicclientmodels.UserProfilePrivateInfo
}

func (o *DeleteUserProfileOK) Error() string {
	return fmt.Sprintf("[DELETE /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles][%d] deleteUserProfileOK  %+v", 200, o.ToJSONString())
}

func (o *DeleteUserProfileOK) ToJSONString() string {
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

func (o *DeleteUserProfileOK) GetPayload() *basicclientmodels.UserProfilePrivateInfo {
	return o.Payload
}

func (o *DeleteUserProfileOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteUserProfileBadRequest creates a DeleteUserProfileBadRequest with default headers values
func NewDeleteUserProfileBadRequest() *DeleteUserProfileBadRequest {
	return &DeleteUserProfileBadRequest{}
}

/*DeleteUserProfileBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type DeleteUserProfileBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *DeleteUserProfileBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles][%d] deleteUserProfileBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteUserProfileBadRequest) ToJSONString() string {
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

func (o *DeleteUserProfileBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *DeleteUserProfileBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteUserProfileUnauthorized creates a DeleteUserProfileUnauthorized with default headers values
func NewDeleteUserProfileUnauthorized() *DeleteUserProfileUnauthorized {
	return &DeleteUserProfileUnauthorized{}
}

/*DeleteUserProfileUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type DeleteUserProfileUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *DeleteUserProfileUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles][%d] deleteUserProfileUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteUserProfileUnauthorized) ToJSONString() string {
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

func (o *DeleteUserProfileUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteUserProfileUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteUserProfileForbidden creates a DeleteUserProfileForbidden with default headers values
func NewDeleteUserProfileForbidden() *DeleteUserProfileForbidden {
	return &DeleteUserProfileForbidden{}
}

/*DeleteUserProfileForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type DeleteUserProfileForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *DeleteUserProfileForbidden) Error() string {
	return fmt.Sprintf("[DELETE /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles][%d] deleteUserProfileForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteUserProfileForbidden) ToJSONString() string {
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

func (o *DeleteUserProfileForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteUserProfileForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteUserProfileNotFound creates a DeleteUserProfileNotFound with default headers values
func NewDeleteUserProfileNotFound() *DeleteUserProfileNotFound {
	return &DeleteUserProfileNotFound{}
}

/*DeleteUserProfileNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11440</td><td>Unable to {action}: User profile not found in namespace [{namespace}]</td></tr></table>
*/
type DeleteUserProfileNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *DeleteUserProfileNotFound) Error() string {
	return fmt.Sprintf("[DELETE /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles][%d] deleteUserProfileNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteUserProfileNotFound) ToJSONString() string {
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

func (o *DeleteUserProfileNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteUserProfileNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
