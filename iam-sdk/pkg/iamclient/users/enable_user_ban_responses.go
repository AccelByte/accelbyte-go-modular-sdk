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

type EnableUserBanResponse struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.ModelUserBanResponse

	Error401 *iamclientmodels.RestErrorResponse
	Error403 string
	Error404 string
	Error500 string
}

func (m *EnableUserBanResponse) Unpack() (*iamclientmodels.ModelUserBanResponse, *iamclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 401:
			e, err := m.Error401.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		case 403:
			return nil, &iamclientmodels.ApiError{Code: "403", Message: m.Error403}

		case 404:
			return nil, &iamclientmodels.ApiError{Code: "404", Message: m.Error404}

		case 500:
			return nil, &iamclientmodels.ApiError{Code: "500", Message: m.Error500}

		default:
			return nil, &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// EnableUserBanReader is a Reader for the EnableUserBan structure.
type EnableUserBanReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *EnableUserBanReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewEnableUserBanOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewEnableUserBanUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewEnableUserBanForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewEnableUserBanNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewEnableUserBanInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/namespaces/{namespace}/users/{userId}/bans/{banId}/enable returns an error %d: %s", response.Code(), string(data))
	}
}

// NewEnableUserBanOK creates a EnableUserBanOK with default headers values
func NewEnableUserBanOK() *EnableUserBanOK {
	return &EnableUserBanOK{}
}

/*EnableUserBanOK handles this case with default header values.

  OK
*/
type EnableUserBanOK struct {
	Payload *iamclientmodels.ModelUserBanResponse
}

func (o *EnableUserBanOK) Error() string {
	return fmt.Sprintf("[PUT /iam/namespaces/{namespace}/users/{userId}/bans/{banId}/enable][%d] enableUserBanOK  %+v", 200, o.ToJSONString())
}

func (o *EnableUserBanOK) ToJSONString() string {
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

func (o *EnableUserBanOK) GetPayload() *iamclientmodels.ModelUserBanResponse {
	return o.Payload
}

func (o *EnableUserBanOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserBanResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewEnableUserBanUnauthorized creates a EnableUserBanUnauthorized with default headers values
func NewEnableUserBanUnauthorized() *EnableUserBanUnauthorized {
	return &EnableUserBanUnauthorized{}
}

/*EnableUserBanUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type EnableUserBanUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *EnableUserBanUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/namespaces/{namespace}/users/{userId}/bans/{banId}/enable][%d] enableUserBanUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *EnableUserBanUnauthorized) ToJSONString() string {
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

func (o *EnableUserBanUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *EnableUserBanUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewEnableUserBanForbidden creates a EnableUserBanForbidden with default headers values
func NewEnableUserBanForbidden() *EnableUserBanForbidden {
	return &EnableUserBanForbidden{}
}

/*EnableUserBanForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10145</td><td>disallow game access publisher user's ban</td></tr></table>
*/
type EnableUserBanForbidden struct {
}

func (o *EnableUserBanForbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/namespaces/{namespace}/users/{userId}/bans/{banId}/enable][%d] enableUserBanForbidden ", 403)
}

func (o *EnableUserBanForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewEnableUserBanNotFound creates a EnableUserBanNotFound with default headers values
func NewEnableUserBanNotFound() *EnableUserBanNotFound {
	return &EnableUserBanNotFound{}
}

/*EnableUserBanNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr><tr><td>10158</td><td>ban not found</td></tr><tr><td>10144</td><td>user has no bans</td></tr></table>
*/
type EnableUserBanNotFound struct {
}

func (o *EnableUserBanNotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/namespaces/{namespace}/users/{userId}/bans/{banId}/enable][%d] enableUserBanNotFound ", 404)
}

func (o *EnableUserBanNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewEnableUserBanInternalServerError creates a EnableUserBanInternalServerError with default headers values
func NewEnableUserBanInternalServerError() *EnableUserBanInternalServerError {
	return &EnableUserBanInternalServerError{}
}

/*EnableUserBanInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type EnableUserBanInternalServerError struct {
}

func (o *EnableUserBanInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /iam/namespaces/{namespace}/users/{userId}/bans/{banId}/enable][%d] enableUserBanInternalServerError ", 500)
}

func (o *EnableUserBanInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
