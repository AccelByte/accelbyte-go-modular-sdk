// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package devices_v4

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

type AdminUpdateDeviceBanV4Response struct {
	iamclientmodels.ApiResponse

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 *iamclientmodels.RestErrorResponse
	Error409 *iamclientmodels.RestErrorResponse
	Error500 *iamclientmodels.RestErrorResponse
}

func (m *AdminUpdateDeviceBanV4Response) Unpack() *iamclientmodels.ApiError {
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

// AdminUpdateDeviceBanV4Reader is a Reader for the AdminUpdateDeviceBanV4 structure.
type AdminUpdateDeviceBanV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateDeviceBanV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminUpdateDeviceBanV4NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateDeviceBanV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateDeviceBanV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateDeviceBanV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateDeviceBanV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminUpdateDeviceBanV4Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateDeviceBanV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/v4/admin/namespaces/{namespace}/devices/bans/{banId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateDeviceBanV4NoContent creates a AdminUpdateDeviceBanV4NoContent with default headers values
func NewAdminUpdateDeviceBanV4NoContent() *AdminUpdateDeviceBanV4NoContent {
	return &AdminUpdateDeviceBanV4NoContent{}
}

/*AdminUpdateDeviceBanV4NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminUpdateDeviceBanV4NoContent struct {
}

func (o *AdminUpdateDeviceBanV4NoContent) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/namespaces/{namespace}/devices/bans/{banId}][%d] adminUpdateDeviceBanV4NoContent ", 204)
}

func (o *AdminUpdateDeviceBanV4NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminUpdateDeviceBanV4BadRequest creates a AdminUpdateDeviceBanV4BadRequest with default headers values
func NewAdminUpdateDeviceBanV4BadRequest() *AdminUpdateDeviceBanV4BadRequest {
	return &AdminUpdateDeviceBanV4BadRequest{}
}

/*AdminUpdateDeviceBanV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminUpdateDeviceBanV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateDeviceBanV4BadRequest) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/namespaces/{namespace}/devices/bans/{banId}][%d] adminUpdateDeviceBanV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateDeviceBanV4BadRequest) ToJSONString() string {
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

func (o *AdminUpdateDeviceBanV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateDeviceBanV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateDeviceBanV4Unauthorized creates a AdminUpdateDeviceBanV4Unauthorized with default headers values
func NewAdminUpdateDeviceBanV4Unauthorized() *AdminUpdateDeviceBanV4Unauthorized {
	return &AdminUpdateDeviceBanV4Unauthorized{}
}

/*AdminUpdateDeviceBanV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUpdateDeviceBanV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateDeviceBanV4Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/namespaces/{namespace}/devices/bans/{banId}][%d] adminUpdateDeviceBanV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateDeviceBanV4Unauthorized) ToJSONString() string {
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

func (o *AdminUpdateDeviceBanV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateDeviceBanV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateDeviceBanV4Forbidden creates a AdminUpdateDeviceBanV4Forbidden with default headers values
func NewAdminUpdateDeviceBanV4Forbidden() *AdminUpdateDeviceBanV4Forbidden {
	return &AdminUpdateDeviceBanV4Forbidden{}
}

/*AdminUpdateDeviceBanV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminUpdateDeviceBanV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateDeviceBanV4Forbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/namespaces/{namespace}/devices/bans/{banId}][%d] adminUpdateDeviceBanV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateDeviceBanV4Forbidden) ToJSONString() string {
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

func (o *AdminUpdateDeviceBanV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateDeviceBanV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateDeviceBanV4NotFound creates a AdminUpdateDeviceBanV4NotFound with default headers values
func NewAdminUpdateDeviceBanV4NotFound() *AdminUpdateDeviceBanV4NotFound {
	return &AdminUpdateDeviceBanV4NotFound{}
}

/*AdminUpdateDeviceBanV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10158</td><td>ban not found</td></tr></table>
*/
type AdminUpdateDeviceBanV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateDeviceBanV4NotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/namespaces/{namespace}/devices/bans/{banId}][%d] adminUpdateDeviceBanV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateDeviceBanV4NotFound) ToJSONString() string {
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

func (o *AdminUpdateDeviceBanV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateDeviceBanV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateDeviceBanV4Conflict creates a AdminUpdateDeviceBanV4Conflict with default headers values
func NewAdminUpdateDeviceBanV4Conflict() *AdminUpdateDeviceBanV4Conflict {
	return &AdminUpdateDeviceBanV4Conflict{}
}

/*AdminUpdateDeviceBanV4Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10202</td><td>active device ban config already exists</td></tr></table>
*/
type AdminUpdateDeviceBanV4Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateDeviceBanV4Conflict) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/namespaces/{namespace}/devices/bans/{banId}][%d] adminUpdateDeviceBanV4Conflict  %+v", 409, o.ToJSONString())
}

func (o *AdminUpdateDeviceBanV4Conflict) ToJSONString() string {
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

func (o *AdminUpdateDeviceBanV4Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateDeviceBanV4Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateDeviceBanV4InternalServerError creates a AdminUpdateDeviceBanV4InternalServerError with default headers values
func NewAdminUpdateDeviceBanV4InternalServerError() *AdminUpdateDeviceBanV4InternalServerError {
	return &AdminUpdateDeviceBanV4InternalServerError{}
}

/*AdminUpdateDeviceBanV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminUpdateDeviceBanV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateDeviceBanV4InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /iam/v4/admin/namespaces/{namespace}/devices/bans/{banId}][%d] adminUpdateDeviceBanV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateDeviceBanV4InternalServerError) ToJSONString() string {
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

func (o *AdminUpdateDeviceBanV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateDeviceBanV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
