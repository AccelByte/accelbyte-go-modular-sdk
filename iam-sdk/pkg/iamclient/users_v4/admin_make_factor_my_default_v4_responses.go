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

type AdminMakeFactorMyDefaultV4Response struct {
	iamclientmodels.ApiResponse

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 *iamclientmodels.RestErrorResponse
	Error500 *iamclientmodels.RestErrorResponse
}

func (m *AdminMakeFactorMyDefaultV4Response) Unpack() *iamclientmodels.ApiError {
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

// AdminMakeFactorMyDefaultV4Reader is a Reader for the AdminMakeFactorMyDefaultV4 structure.
type AdminMakeFactorMyDefaultV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminMakeFactorMyDefaultV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminMakeFactorMyDefaultV4NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminMakeFactorMyDefaultV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminMakeFactorMyDefaultV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminMakeFactorMyDefaultV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminMakeFactorMyDefaultV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminMakeFactorMyDefaultV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/admin/users/me/mfa/factor returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminMakeFactorMyDefaultV4NoContent creates a AdminMakeFactorMyDefaultV4NoContent with default headers values
func NewAdminMakeFactorMyDefaultV4NoContent() *AdminMakeFactorMyDefaultV4NoContent {
	return &AdminMakeFactorMyDefaultV4NoContent{}
}

/*AdminMakeFactorMyDefaultV4NoContent handles this case with default header values.

  Default method changed
*/
type AdminMakeFactorMyDefaultV4NoContent struct {
}

func (o *AdminMakeFactorMyDefaultV4NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/factor][%d] adminMakeFactorMyDefaultV4NoContent ", 204)
}

func (o *AdminMakeFactorMyDefaultV4NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminMakeFactorMyDefaultV4BadRequest creates a AdminMakeFactorMyDefaultV4BadRequest with default headers values
func NewAdminMakeFactorMyDefaultV4BadRequest() *AdminMakeFactorMyDefaultV4BadRequest {
	return &AdminMakeFactorMyDefaultV4BadRequest{}
}

/*AdminMakeFactorMyDefaultV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10191</td><td>email address not verified</td></tr><tr><td>10189</td><td>invalid factor</td></tr><tr><td>10192</td><td>factor not enabled</td></tr><tr><td>10171</td><td>email address not found</td></tr></table>
*/
type AdminMakeFactorMyDefaultV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminMakeFactorMyDefaultV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/factor][%d] adminMakeFactorMyDefaultV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminMakeFactorMyDefaultV4BadRequest) ToJSONString() string {
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

func (o *AdminMakeFactorMyDefaultV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminMakeFactorMyDefaultV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminMakeFactorMyDefaultV4Unauthorized creates a AdminMakeFactorMyDefaultV4Unauthorized with default headers values
func NewAdminMakeFactorMyDefaultV4Unauthorized() *AdminMakeFactorMyDefaultV4Unauthorized {
	return &AdminMakeFactorMyDefaultV4Unauthorized{}
}

/*AdminMakeFactorMyDefaultV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminMakeFactorMyDefaultV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminMakeFactorMyDefaultV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/factor][%d] adminMakeFactorMyDefaultV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminMakeFactorMyDefaultV4Unauthorized) ToJSONString() string {
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

func (o *AdminMakeFactorMyDefaultV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminMakeFactorMyDefaultV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminMakeFactorMyDefaultV4Forbidden creates a AdminMakeFactorMyDefaultV4Forbidden with default headers values
func NewAdminMakeFactorMyDefaultV4Forbidden() *AdminMakeFactorMyDefaultV4Forbidden {
	return &AdminMakeFactorMyDefaultV4Forbidden{}
}

/*AdminMakeFactorMyDefaultV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminMakeFactorMyDefaultV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminMakeFactorMyDefaultV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/factor][%d] adminMakeFactorMyDefaultV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminMakeFactorMyDefaultV4Forbidden) ToJSONString() string {
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

func (o *AdminMakeFactorMyDefaultV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminMakeFactorMyDefaultV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminMakeFactorMyDefaultV4NotFound creates a AdminMakeFactorMyDefaultV4NotFound with default headers values
func NewAdminMakeFactorMyDefaultV4NotFound() *AdminMakeFactorMyDefaultV4NotFound {
	return &AdminMakeFactorMyDefaultV4NotFound{}
}

/*AdminMakeFactorMyDefaultV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminMakeFactorMyDefaultV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminMakeFactorMyDefaultV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/factor][%d] adminMakeFactorMyDefaultV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminMakeFactorMyDefaultV4NotFound) ToJSONString() string {
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

func (o *AdminMakeFactorMyDefaultV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminMakeFactorMyDefaultV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminMakeFactorMyDefaultV4InternalServerError creates a AdminMakeFactorMyDefaultV4InternalServerError with default headers values
func NewAdminMakeFactorMyDefaultV4InternalServerError() *AdminMakeFactorMyDefaultV4InternalServerError {
	return &AdminMakeFactorMyDefaultV4InternalServerError{}
}

/*AdminMakeFactorMyDefaultV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminMakeFactorMyDefaultV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminMakeFactorMyDefaultV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/factor][%d] adminMakeFactorMyDefaultV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminMakeFactorMyDefaultV4InternalServerError) ToJSONString() string {
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

func (o *AdminMakeFactorMyDefaultV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminMakeFactorMyDefaultV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
