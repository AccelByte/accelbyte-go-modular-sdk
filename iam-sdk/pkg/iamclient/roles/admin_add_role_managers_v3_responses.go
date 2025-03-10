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

type AdminAddRoleManagersV3Response struct {
	iamclientmodels.ApiResponse

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 *iamclientmodels.RestErrorResponse
	Error409 *iamclientmodels.RestErrorResponse
}

func (m *AdminAddRoleManagersV3Response) Unpack() *iamclientmodels.ApiError {
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

		default:
			return &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// AdminAddRoleManagersV3Reader is a Reader for the AdminAddRoleManagersV3 structure.
type AdminAddRoleManagersV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminAddRoleManagersV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminAddRoleManagersV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminAddRoleManagersV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminAddRoleManagersV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminAddRoleManagersV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminAddRoleManagersV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminAddRoleManagersV3Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/admin/roles/{roleId}/managers returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminAddRoleManagersV3NoContent creates a AdminAddRoleManagersV3NoContent with default headers values
func NewAdminAddRoleManagersV3NoContent() *AdminAddRoleManagersV3NoContent {
	return &AdminAddRoleManagersV3NoContent{}
}

/*AdminAddRoleManagersV3NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminAddRoleManagersV3NoContent struct {
}

func (o *AdminAddRoleManagersV3NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles/{roleId}/managers][%d] adminAddRoleManagersV3NoContent ", 204)
}

func (o *AdminAddRoleManagersV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminAddRoleManagersV3BadRequest creates a AdminAddRoleManagersV3BadRequest with default headers values
func NewAdminAddRoleManagersV3BadRequest() *AdminAddRoleManagersV3BadRequest {
	return &AdminAddRoleManagersV3BadRequest{}
}

/*AdminAddRoleManagersV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type AdminAddRoleManagersV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddRoleManagersV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles/{roleId}/managers][%d] adminAddRoleManagersV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminAddRoleManagersV3BadRequest) ToJSONString() string {
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

func (o *AdminAddRoleManagersV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddRoleManagersV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddRoleManagersV3Unauthorized creates a AdminAddRoleManagersV3Unauthorized with default headers values
func NewAdminAddRoleManagersV3Unauthorized() *AdminAddRoleManagersV3Unauthorized {
	return &AdminAddRoleManagersV3Unauthorized{}
}

/*AdminAddRoleManagersV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminAddRoleManagersV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddRoleManagersV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles/{roleId}/managers][%d] adminAddRoleManagersV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminAddRoleManagersV3Unauthorized) ToJSONString() string {
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

func (o *AdminAddRoleManagersV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddRoleManagersV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddRoleManagersV3Forbidden creates a AdminAddRoleManagersV3Forbidden with default headers values
func NewAdminAddRoleManagersV3Forbidden() *AdminAddRoleManagersV3Forbidden {
	return &AdminAddRoleManagersV3Forbidden{}
}

/*AdminAddRoleManagersV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminAddRoleManagersV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddRoleManagersV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles/{roleId}/managers][%d] adminAddRoleManagersV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminAddRoleManagersV3Forbidden) ToJSONString() string {
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

func (o *AdminAddRoleManagersV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddRoleManagersV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddRoleManagersV3NotFound creates a AdminAddRoleManagersV3NotFound with default headers values
func NewAdminAddRoleManagersV3NotFound() *AdminAddRoleManagersV3NotFound {
	return &AdminAddRoleManagersV3NotFound{}
}

/*AdminAddRoleManagersV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10456</td><td>role not found</td></tr></table>
*/
type AdminAddRoleManagersV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddRoleManagersV3NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles/{roleId}/managers][%d] adminAddRoleManagersV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminAddRoleManagersV3NotFound) ToJSONString() string {
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

func (o *AdminAddRoleManagersV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddRoleManagersV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAddRoleManagersV3Conflict creates a AdminAddRoleManagersV3Conflict with default headers values
func NewAdminAddRoleManagersV3Conflict() *AdminAddRoleManagersV3Conflict {
	return &AdminAddRoleManagersV3Conflict{}
}

/*AdminAddRoleManagersV3Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10468</td><td>role manager exist</td></tr></table>
*/
type AdminAddRoleManagersV3Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddRoleManagersV3Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/roles/{roleId}/managers][%d] adminAddRoleManagersV3Conflict  %+v", 409, o.ToJSONString())
}

func (o *AdminAddRoleManagersV3Conflict) ToJSONString() string {
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

func (o *AdminAddRoleManagersV3Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddRoleManagersV3Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
