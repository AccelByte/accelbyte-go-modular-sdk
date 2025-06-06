// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
)

type EnableUserResponse struct {
	iamclientmodels.ApiResponse

	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 string
	Error500 string
}

func (m *EnableUserResponse) Unpack() *iamclientmodels.ApiError {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 401:
			e, err := m.Error401.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 403:
			e, err := m.Error403.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 404:
			return &iamclientmodels.ApiError{Code: "404", Message: m.Error404}

		case 500:
			return &iamclientmodels.ApiError{Code: "500", Message: m.Error500}

		default:
			return &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// EnableUserReader is a Reader for the EnableUser structure.
type EnableUserReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *EnableUserReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewEnableUserNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewEnableUserUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewEnableUserForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewEnableUserNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewEnableUserInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/namespaces/{namespace}/users/{userId}/enable returns an error %d: %s", response.Code(), string(data))
	}
}

// NewEnableUserNoContent creates a EnableUserNoContent with default headers values
func NewEnableUserNoContent() *EnableUserNoContent {
	return &EnableUserNoContent{}
}

/*EnableUserNoContent handles this case with default header values.

  Operation succeeded
*/
type EnableUserNoContent struct {
}

func (o *EnableUserNoContent) Error() string {
	return fmt.Sprintf("[PUT /iam/namespaces/{namespace}/users/{userId}/enable][%d] enableUserNoContent ", 204)
}

func (o *EnableUserNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewEnableUserUnauthorized creates a EnableUserUnauthorized with default headers values
func NewEnableUserUnauthorized() *EnableUserUnauthorized {
	return &EnableUserUnauthorized{}
}

/*EnableUserUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type EnableUserUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *EnableUserUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/namespaces/{namespace}/users/{userId}/enable][%d] enableUserUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *EnableUserUnauthorized) ToJSONString() string {
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

func (o *EnableUserUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *EnableUserUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewEnableUserForbidden creates a EnableUserForbidden with default headers values
func NewEnableUserForbidden() *EnableUserForbidden {
	return &EnableUserForbidden{}
}

/*EnableUserForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type EnableUserForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *EnableUserForbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/namespaces/{namespace}/users/{userId}/enable][%d] enableUserForbidden  %+v", 403, o.ToJSONString())
}

func (o *EnableUserForbidden) ToJSONString() string {
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

func (o *EnableUserForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *EnableUserForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewEnableUserNotFound creates a EnableUserNotFound with default headers values
func NewEnableUserNotFound() *EnableUserNotFound {
	return &EnableUserNotFound{}
}

/*EnableUserNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type EnableUserNotFound struct {
}

func (o *EnableUserNotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/namespaces/{namespace}/users/{userId}/enable][%d] enableUserNotFound ", 404)
}

func (o *EnableUserNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewEnableUserInternalServerError creates a EnableUserInternalServerError with default headers values
func NewEnableUserInternalServerError() *EnableUserInternalServerError {
	return &EnableUserInternalServerError{}
}

/*EnableUserInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type EnableUserInternalServerError struct {
}

func (o *EnableUserInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /iam/namespaces/{namespace}/users/{userId}/enable][%d] enableUserInternalServerError ", 500)
}

func (o *EnableUserInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
