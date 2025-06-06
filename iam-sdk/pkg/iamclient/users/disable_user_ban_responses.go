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

type DisableUserBanResponse struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.ModelUserBanResponse

	Error401 *iamclientmodels.RestErrorResponse
	Error403 string
	Error404 string
	Error500 string
}

func (m *DisableUserBanResponse) Unpack() (*iamclientmodels.ModelUserBanResponse, *iamclientmodels.ApiError) {
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

// DisableUserBanReader is a Reader for the DisableUserBan structure.
type DisableUserBanReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DisableUserBanReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDisableUserBanOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDisableUserBanUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDisableUserBanForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDisableUserBanNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDisableUserBanInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/namespaces/{namespace}/users/{userId}/bans/{banId}/disable returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDisableUserBanOK creates a DisableUserBanOK with default headers values
func NewDisableUserBanOK() *DisableUserBanOK {
	return &DisableUserBanOK{}
}

/*DisableUserBanOK handles this case with default header values.

  OK
*/
type DisableUserBanOK struct {
	Payload *iamclientmodels.ModelUserBanResponse
}

func (o *DisableUserBanOK) Error() string {
	return fmt.Sprintf("[PUT /iam/namespaces/{namespace}/users/{userId}/bans/{banId}/disable][%d] disableUserBanOK  %+v", 200, o.ToJSONString())
}

func (o *DisableUserBanOK) ToJSONString() string {
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

func (o *DisableUserBanOK) GetPayload() *iamclientmodels.ModelUserBanResponse {
	return o.Payload
}

func (o *DisableUserBanOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDisableUserBanUnauthorized creates a DisableUserBanUnauthorized with default headers values
func NewDisableUserBanUnauthorized() *DisableUserBanUnauthorized {
	return &DisableUserBanUnauthorized{}
}

/*DisableUserBanUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DisableUserBanUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DisableUserBanUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/namespaces/{namespace}/users/{userId}/bans/{banId}/disable][%d] disableUserBanUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DisableUserBanUnauthorized) ToJSONString() string {
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

func (o *DisableUserBanUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DisableUserBanUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDisableUserBanForbidden creates a DisableUserBanForbidden with default headers values
func NewDisableUserBanForbidden() *DisableUserBanForbidden {
	return &DisableUserBanForbidden{}
}

/*DisableUserBanForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10145</td><td>disallow game access publisher user's ban</td></tr></table>
*/
type DisableUserBanForbidden struct {
}

func (o *DisableUserBanForbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/namespaces/{namespace}/users/{userId}/bans/{banId}/disable][%d] disableUserBanForbidden ", 403)
}

func (o *DisableUserBanForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDisableUserBanNotFound creates a DisableUserBanNotFound with default headers values
func NewDisableUserBanNotFound() *DisableUserBanNotFound {
	return &DisableUserBanNotFound{}
}

/*DisableUserBanNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr><tr><td>10158</td><td>ban not found</td></tr></table>
*/
type DisableUserBanNotFound struct {
}

func (o *DisableUserBanNotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/namespaces/{namespace}/users/{userId}/bans/{banId}/disable][%d] disableUserBanNotFound ", 404)
}

func (o *DisableUserBanNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDisableUserBanInternalServerError creates a DisableUserBanInternalServerError with default headers values
func NewDisableUserBanInternalServerError() *DisableUserBanInternalServerError {
	return &DisableUserBanInternalServerError{}
}

/*DisableUserBanInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type DisableUserBanInternalServerError struct {
}

func (o *DisableUserBanInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /iam/namespaces/{namespace}/users/{userId}/bans/{banId}/disable][%d] disableUserBanInternalServerError ", 500)
}

func (o *DisableUserBanInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
