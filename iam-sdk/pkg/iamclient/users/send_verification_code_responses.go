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

type SendVerificationCodeResponse struct {
	iamclientmodels.ApiResponse

	Error400 string
	Error401 *iamclientmodels.RestErrorResponse
	Error403 string
	Error404 string
	Error409 string
	Error429 string
	Error500 string
}

func (m *SendVerificationCodeResponse) Unpack() *iamclientmodels.ApiError {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 400:
			return &iamclientmodels.ApiError{Code: "400", Message: m.Error400}

		case 401:
			e, err := m.Error401.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 403:
			return &iamclientmodels.ApiError{Code: "403", Message: m.Error403}

		case 404:
			return &iamclientmodels.ApiError{Code: "404", Message: m.Error404}

		case 409:
			return &iamclientmodels.ApiError{Code: "409", Message: m.Error409}

		case 429:
			return &iamclientmodels.ApiError{Code: "429", Message: m.Error429}

		case 500:
			return &iamclientmodels.ApiError{Code: "500", Message: m.Error500}

		default:
			return &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// SendVerificationCodeReader is a Reader for the SendVerificationCode structure.
type SendVerificationCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SendVerificationCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewSendVerificationCodeNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSendVerificationCodeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSendVerificationCodeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewSendVerificationCodeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSendVerificationCodeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewSendVerificationCodeConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 429:
		result := NewSendVerificationCodeTooManyRequests()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSendVerificationCodeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/namespaces/{namespace}/users/{userId}/verificationcode returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSendVerificationCodeNoContent creates a SendVerificationCodeNoContent with default headers values
func NewSendVerificationCodeNoContent() *SendVerificationCodeNoContent {
	return &SendVerificationCodeNoContent{}
}

/*SendVerificationCodeNoContent handles this case with default header values.

  Operation succeeded
*/
type SendVerificationCodeNoContent struct {
}

func (o *SendVerificationCodeNoContent) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/verificationcode][%d] sendVerificationCodeNoContent ", 204)
}

func (o *SendVerificationCodeNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSendVerificationCodeBadRequest creates a SendVerificationCodeBadRequest with default headers values
func NewSendVerificationCodeBadRequest() *SendVerificationCodeBadRequest {
	return &SendVerificationCodeBadRequest{}
}

/*SendVerificationCodeBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type SendVerificationCodeBadRequest struct {
}

func (o *SendVerificationCodeBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/verificationcode][%d] sendVerificationCodeBadRequest ", 400)
}

func (o *SendVerificationCodeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSendVerificationCodeUnauthorized creates a SendVerificationCodeUnauthorized with default headers values
func NewSendVerificationCodeUnauthorized() *SendVerificationCodeUnauthorized {
	return &SendVerificationCodeUnauthorized{}
}

/*SendVerificationCodeUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type SendVerificationCodeUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *SendVerificationCodeUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/verificationcode][%d] sendVerificationCodeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *SendVerificationCodeUnauthorized) ToJSONString() string {
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

func (o *SendVerificationCodeUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *SendVerificationCodeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSendVerificationCodeForbidden creates a SendVerificationCodeForbidden with default headers values
func NewSendVerificationCodeForbidden() *SendVerificationCodeForbidden {
	return &SendVerificationCodeForbidden{}
}

/*SendVerificationCodeForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10146</td><td>userID not match</td></tr></table>
*/
type SendVerificationCodeForbidden struct {
}

func (o *SendVerificationCodeForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/verificationcode][%d] sendVerificationCodeForbidden ", 403)
}

func (o *SendVerificationCodeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSendVerificationCodeNotFound creates a SendVerificationCodeNotFound with default headers values
func NewSendVerificationCodeNotFound() *SendVerificationCodeNotFound {
	return &SendVerificationCodeNotFound{}
}

/*SendVerificationCodeNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr><tr><td>10171</td><td>email address not found</td></tr><tr><td>10139</td><td>platform account not found</td></tr></table>
*/
type SendVerificationCodeNotFound struct {
}

func (o *SendVerificationCodeNotFound) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/verificationcode][%d] sendVerificationCodeNotFound ", 404)
}

func (o *SendVerificationCodeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSendVerificationCodeConflict creates a SendVerificationCodeConflict with default headers values
func NewSendVerificationCodeConflict() *SendVerificationCodeConflict {
	return &SendVerificationCodeConflict{}
}

/*SendVerificationCodeConflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10140</td><td>user verified</td></tr><tr><td>10133</td><td>email already used</td></tr></table>
*/
type SendVerificationCodeConflict struct {
}

func (o *SendVerificationCodeConflict) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/verificationcode][%d] sendVerificationCodeConflict ", 409)
}

func (o *SendVerificationCodeConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSendVerificationCodeTooManyRequests creates a SendVerificationCodeTooManyRequests with default headers values
func NewSendVerificationCodeTooManyRequests() *SendVerificationCodeTooManyRequests {
	return &SendVerificationCodeTooManyRequests{}
}

/*SendVerificationCodeTooManyRequests handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20007</td><td>too many requests</td></tr></table>
*/
type SendVerificationCodeTooManyRequests struct {
}

func (o *SendVerificationCodeTooManyRequests) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/verificationcode][%d] sendVerificationCodeTooManyRequests ", 429)
}

func (o *SendVerificationCodeTooManyRequests) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSendVerificationCodeInternalServerError creates a SendVerificationCodeInternalServerError with default headers values
func NewSendVerificationCodeInternalServerError() *SendVerificationCodeInternalServerError {
	return &SendVerificationCodeInternalServerError{}
}

/*SendVerificationCodeInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type SendVerificationCodeInternalServerError struct {
}

func (o *SendVerificationCodeInternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/verificationcode][%d] sendVerificationCodeInternalServerError ", 500)
}

func (o *SendVerificationCodeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
