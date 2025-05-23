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

type AdminDisableUserMFAV4Response struct {
	iamclientmodels.ApiResponse

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 *iamclientmodels.RestErrorResponse
	Error500 *iamclientmodels.RestErrorResponse
}

func (m *AdminDisableUserMFAV4Response) Unpack() *iamclientmodels.ApiError {
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

// AdminDisableUserMFAV4Reader is a Reader for the AdminDisableUserMFAV4 structure.
type AdminDisableUserMFAV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDisableUserMFAV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDisableUserMFAV4NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDisableUserMFAV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDisableUserMFAV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDisableUserMFAV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDisableUserMFAV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDisableUserMFAV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v4/admin/namespaces/{namespace}/users/{userId}/mfa/disable returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDisableUserMFAV4NoContent creates a AdminDisableUserMFAV4NoContent with default headers values
func NewAdminDisableUserMFAV4NoContent() *AdminDisableUserMFAV4NoContent {
	return &AdminDisableUserMFAV4NoContent{}
}

/*AdminDisableUserMFAV4NoContent handles this case with default header values.

  OK
*/
type AdminDisableUserMFAV4NoContent struct {
}

func (o *AdminDisableUserMFAV4NoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/namespaces/{namespace}/users/{userId}/mfa/disable][%d] adminDisableUserMfaV4NoContent ", 204)
}

func (o *AdminDisableUserMFAV4NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDisableUserMFAV4BadRequest creates a AdminDisableUserMFAV4BadRequest with default headers values
func NewAdminDisableUserMFAV4BadRequest() *AdminDisableUserMFAV4BadRequest {
	return &AdminDisableUserMFAV4BadRequest{}
}

/*AdminDisableUserMFAV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>10191</td><td>email address not verified</td></tr><tr><td>10171</td><td>email address not found</td></tr><tr><td>10193</td><td>mfa not enabled</td></tr></table>
*/
type AdminDisableUserMFAV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDisableUserMFAV4BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/namespaces/{namespace}/users/{userId}/mfa/disable][%d] adminDisableUserMfaV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDisableUserMFAV4BadRequest) ToJSONString() string {
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

func (o *AdminDisableUserMFAV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDisableUserMFAV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDisableUserMFAV4Unauthorized creates a AdminDisableUserMFAV4Unauthorized with default headers values
func NewAdminDisableUserMFAV4Unauthorized() *AdminDisableUserMFAV4Unauthorized {
	return &AdminDisableUserMFAV4Unauthorized{}
}

/*AdminDisableUserMFAV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type AdminDisableUserMFAV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDisableUserMFAV4Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/namespaces/{namespace}/users/{userId}/mfa/disable][%d] adminDisableUserMfaV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDisableUserMFAV4Unauthorized) ToJSONString() string {
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

func (o *AdminDisableUserMFAV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDisableUserMFAV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDisableUserMFAV4Forbidden creates a AdminDisableUserMFAV4Forbidden with default headers values
func NewAdminDisableUserMFAV4Forbidden() *AdminDisableUserMFAV4Forbidden {
	return &AdminDisableUserMFAV4Forbidden{}
}

/*AdminDisableUserMFAV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminDisableUserMFAV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDisableUserMFAV4Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/namespaces/{namespace}/users/{userId}/mfa/disable][%d] adminDisableUserMfaV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDisableUserMFAV4Forbidden) ToJSONString() string {
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

func (o *AdminDisableUserMFAV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDisableUserMFAV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDisableUserMFAV4NotFound creates a AdminDisableUserMFAV4NotFound with default headers values
func NewAdminDisableUserMFAV4NotFound() *AdminDisableUserMFAV4NotFound {
	return &AdminDisableUserMFAV4NotFound{}
}

/*AdminDisableUserMFAV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminDisableUserMFAV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDisableUserMFAV4NotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/namespaces/{namespace}/users/{userId}/mfa/disable][%d] adminDisableUserMfaV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDisableUserMFAV4NotFound) ToJSONString() string {
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

func (o *AdminDisableUserMFAV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDisableUserMFAV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDisableUserMFAV4InternalServerError creates a AdminDisableUserMFAV4InternalServerError with default headers values
func NewAdminDisableUserMFAV4InternalServerError() *AdminDisableUserMFAV4InternalServerError {
	return &AdminDisableUserMFAV4InternalServerError{}
}

/*AdminDisableUserMFAV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminDisableUserMFAV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDisableUserMFAV4InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/namespaces/{namespace}/users/{userId}/mfa/disable][%d] adminDisableUserMfaV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDisableUserMFAV4InternalServerError) ToJSONString() string {
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

func (o *AdminDisableUserMFAV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDisableUserMFAV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
