// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package roles

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

type AdminUpdateAdminRoleStatusV3Response struct {
	iamclientmodels.ApiResponse

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 *iamclientmodels.RestErrorResponse
	Error500 *iamclientmodels.RestErrorResponse
}

func (m *AdminUpdateAdminRoleStatusV3Response) Unpack() *iamclientmodels.ApiError {
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

// AdminUpdateAdminRoleStatusV3Reader is a Reader for the AdminUpdateAdminRoleStatusV3 structure.
type AdminUpdateAdminRoleStatusV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateAdminRoleStatusV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminUpdateAdminRoleStatusV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateAdminRoleStatusV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateAdminRoleStatusV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateAdminRoleStatusV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateAdminRoleStatusV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateAdminRoleStatusV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/admin/roles/{roleId}/admin returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateAdminRoleStatusV3NoContent creates a AdminUpdateAdminRoleStatusV3NoContent with default headers values
func NewAdminUpdateAdminRoleStatusV3NoContent() *AdminUpdateAdminRoleStatusV3NoContent {
	return &AdminUpdateAdminRoleStatusV3NoContent{}
}

/*AdminUpdateAdminRoleStatusV3NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminUpdateAdminRoleStatusV3NoContent struct {
}

func (o *AdminUpdateAdminRoleStatusV3NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles/{roleId}/admin][%d] adminUpdateAdminRoleStatusV3NoContent ", 204)
}

func (o *AdminUpdateAdminRoleStatusV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminUpdateAdminRoleStatusV3BadRequest creates a AdminUpdateAdminRoleStatusV3BadRequest with default headers values
func NewAdminUpdateAdminRoleStatusV3BadRequest() *AdminUpdateAdminRoleStatusV3BadRequest {
	return &AdminUpdateAdminRoleStatusV3BadRequest{}
}

/*AdminUpdateAdminRoleStatusV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminUpdateAdminRoleStatusV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateAdminRoleStatusV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles/{roleId}/admin][%d] adminUpdateAdminRoleStatusV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateAdminRoleStatusV3BadRequest) ToJSONString() string {
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

func (o *AdminUpdateAdminRoleStatusV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateAdminRoleStatusV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateAdminRoleStatusV3Unauthorized creates a AdminUpdateAdminRoleStatusV3Unauthorized with default headers values
func NewAdminUpdateAdminRoleStatusV3Unauthorized() *AdminUpdateAdminRoleStatusV3Unauthorized {
	return &AdminUpdateAdminRoleStatusV3Unauthorized{}
}

/*AdminUpdateAdminRoleStatusV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUpdateAdminRoleStatusV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateAdminRoleStatusV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles/{roleId}/admin][%d] adminUpdateAdminRoleStatusV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateAdminRoleStatusV3Unauthorized) ToJSONString() string {
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

func (o *AdminUpdateAdminRoleStatusV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateAdminRoleStatusV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateAdminRoleStatusV3Forbidden creates a AdminUpdateAdminRoleStatusV3Forbidden with default headers values
func NewAdminUpdateAdminRoleStatusV3Forbidden() *AdminUpdateAdminRoleStatusV3Forbidden {
	return &AdminUpdateAdminRoleStatusV3Forbidden{}
}

/*AdminUpdateAdminRoleStatusV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>10467</td><td>role has no manager</td></tr></table>
*/
type AdminUpdateAdminRoleStatusV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateAdminRoleStatusV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles/{roleId}/admin][%d] adminUpdateAdminRoleStatusV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateAdminRoleStatusV3Forbidden) ToJSONString() string {
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

func (o *AdminUpdateAdminRoleStatusV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateAdminRoleStatusV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateAdminRoleStatusV3NotFound creates a AdminUpdateAdminRoleStatusV3NotFound with default headers values
func NewAdminUpdateAdminRoleStatusV3NotFound() *AdminUpdateAdminRoleStatusV3NotFound {
	return &AdminUpdateAdminRoleStatusV3NotFound{}
}

/*AdminUpdateAdminRoleStatusV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10456</td><td>role not found</td></tr></table>
*/
type AdminUpdateAdminRoleStatusV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateAdminRoleStatusV3NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles/{roleId}/admin][%d] adminUpdateAdminRoleStatusV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateAdminRoleStatusV3NotFound) ToJSONString() string {
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

func (o *AdminUpdateAdminRoleStatusV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateAdminRoleStatusV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateAdminRoleStatusV3InternalServerError creates a AdminUpdateAdminRoleStatusV3InternalServerError with default headers values
func NewAdminUpdateAdminRoleStatusV3InternalServerError() *AdminUpdateAdminRoleStatusV3InternalServerError {
	return &AdminUpdateAdminRoleStatusV3InternalServerError{}
}

/*AdminUpdateAdminRoleStatusV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminUpdateAdminRoleStatusV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateAdminRoleStatusV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles/{roleId}/admin][%d] adminUpdateAdminRoleStatusV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateAdminRoleStatusV3InternalServerError) ToJSONString() string {
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

func (o *AdminUpdateAdminRoleStatusV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateAdminRoleStatusV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
