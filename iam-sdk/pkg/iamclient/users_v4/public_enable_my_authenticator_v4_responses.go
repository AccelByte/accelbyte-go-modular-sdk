// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users_v4

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

type PublicEnableMyAuthenticatorV4Response struct {
	iamclientmodels.ApiResponse

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 *iamclientmodels.RestErrorResponse
	Error409 *iamclientmodels.RestErrorResponse
	Error500 *iamclientmodels.RestErrorResponse
}

func (m *PublicEnableMyAuthenticatorV4Response) Unpack() *iamclientmodels.ApiError {
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
			e, err := m.Error404.TranslateToApiError()
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

		case 500:
			e, err := m.Error500.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		default:
			return &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// PublicEnableMyAuthenticatorV4Reader is a Reader for the PublicEnableMyAuthenticatorV4 structure.
type PublicEnableMyAuthenticatorV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicEnableMyAuthenticatorV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicEnableMyAuthenticatorV4NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicEnableMyAuthenticatorV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicEnableMyAuthenticatorV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicEnableMyAuthenticatorV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicEnableMyAuthenticatorV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicEnableMyAuthenticatorV4Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicEnableMyAuthenticatorV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/enable returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicEnableMyAuthenticatorV4NoContent creates a PublicEnableMyAuthenticatorV4NoContent with default headers values
func NewPublicEnableMyAuthenticatorV4NoContent() *PublicEnableMyAuthenticatorV4NoContent {
	return &PublicEnableMyAuthenticatorV4NoContent{}
}

/*PublicEnableMyAuthenticatorV4NoContent handles this case with default header values.

  Authenticator enabled
*/
type PublicEnableMyAuthenticatorV4NoContent struct {
}

func (o *PublicEnableMyAuthenticatorV4NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/enable][%d] publicEnableMyAuthenticatorV4NoContent ", 204)
}

func (o *PublicEnableMyAuthenticatorV4NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicEnableMyAuthenticatorV4BadRequest creates a PublicEnableMyAuthenticatorV4BadRequest with default headers values
func NewPublicEnableMyAuthenticatorV4BadRequest() *PublicEnableMyAuthenticatorV4BadRequest {
	return &PublicEnableMyAuthenticatorV4BadRequest{}
}

/*PublicEnableMyAuthenticatorV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10138</td><td>code not match</td></tr><tr><td>10191</td><td>email address not verified</td></tr><tr><td>10190</td><td>auth secret key expired</td></tr><tr><td>10171</td><td>email address not found</td></tr></table>
*/
type PublicEnableMyAuthenticatorV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicEnableMyAuthenticatorV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/enable][%d] publicEnableMyAuthenticatorV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicEnableMyAuthenticatorV4BadRequest) ToJSONString() string {
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

func (o *PublicEnableMyAuthenticatorV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicEnableMyAuthenticatorV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicEnableMyAuthenticatorV4Unauthorized creates a PublicEnableMyAuthenticatorV4Unauthorized with default headers values
func NewPublicEnableMyAuthenticatorV4Unauthorized() *PublicEnableMyAuthenticatorV4Unauthorized {
	return &PublicEnableMyAuthenticatorV4Unauthorized{}
}

/*PublicEnableMyAuthenticatorV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicEnableMyAuthenticatorV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicEnableMyAuthenticatorV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/enable][%d] publicEnableMyAuthenticatorV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicEnableMyAuthenticatorV4Unauthorized) ToJSONString() string {
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

func (o *PublicEnableMyAuthenticatorV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicEnableMyAuthenticatorV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicEnableMyAuthenticatorV4Forbidden creates a PublicEnableMyAuthenticatorV4Forbidden with default headers values
func NewPublicEnableMyAuthenticatorV4Forbidden() *PublicEnableMyAuthenticatorV4Forbidden {
	return &PublicEnableMyAuthenticatorV4Forbidden{}
}

/*PublicEnableMyAuthenticatorV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicEnableMyAuthenticatorV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicEnableMyAuthenticatorV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/enable][%d] publicEnableMyAuthenticatorV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicEnableMyAuthenticatorV4Forbidden) ToJSONString() string {
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

func (o *PublicEnableMyAuthenticatorV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicEnableMyAuthenticatorV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicEnableMyAuthenticatorV4NotFound creates a PublicEnableMyAuthenticatorV4NotFound with default headers values
func NewPublicEnableMyAuthenticatorV4NotFound() *PublicEnableMyAuthenticatorV4NotFound {
	return &PublicEnableMyAuthenticatorV4NotFound{}
}

/*PublicEnableMyAuthenticatorV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicEnableMyAuthenticatorV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicEnableMyAuthenticatorV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/enable][%d] publicEnableMyAuthenticatorV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicEnableMyAuthenticatorV4NotFound) ToJSONString() string {
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

func (o *PublicEnableMyAuthenticatorV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicEnableMyAuthenticatorV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicEnableMyAuthenticatorV4Conflict creates a PublicEnableMyAuthenticatorV4Conflict with default headers values
func NewPublicEnableMyAuthenticatorV4Conflict() *PublicEnableMyAuthenticatorV4Conflict {
	return &PublicEnableMyAuthenticatorV4Conflict{}
}

/*PublicEnableMyAuthenticatorV4Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10194</td><td>factor already enabled</td></tr></table>
*/
type PublicEnableMyAuthenticatorV4Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicEnableMyAuthenticatorV4Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/enable][%d] publicEnableMyAuthenticatorV4Conflict  %+v", 409, o.ToJSONString())
}

func (o *PublicEnableMyAuthenticatorV4Conflict) ToJSONString() string {
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

func (o *PublicEnableMyAuthenticatorV4Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicEnableMyAuthenticatorV4Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicEnableMyAuthenticatorV4InternalServerError creates a PublicEnableMyAuthenticatorV4InternalServerError with default headers values
func NewPublicEnableMyAuthenticatorV4InternalServerError() *PublicEnableMyAuthenticatorV4InternalServerError {
	return &PublicEnableMyAuthenticatorV4InternalServerError{}
}

/*PublicEnableMyAuthenticatorV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicEnableMyAuthenticatorV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicEnableMyAuthenticatorV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/enable][%d] publicEnableMyAuthenticatorV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicEnableMyAuthenticatorV4InternalServerError) ToJSONString() string {
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

func (o *PublicEnableMyAuthenticatorV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicEnableMyAuthenticatorV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
