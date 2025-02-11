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

type AdminDeleteRolePermissionsV4Response struct {
	iamclientmodels.ApiResponse

	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 string
}

func (m *AdminDeleteRolePermissionsV4Response) Unpack() *iamclientmodels.ApiError {
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

		default:
			return &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// AdminDeleteRolePermissionsV4Reader is a Reader for the AdminDeleteRolePermissionsV4 structure.
type AdminDeleteRolePermissionsV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteRolePermissionsV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteRolePermissionsV4NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteRolePermissionsV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteRolePermissionsV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteRolePermissionsV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v4/admin/roles/{roleId}/permissions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteRolePermissionsV4NoContent creates a AdminDeleteRolePermissionsV4NoContent with default headers values
func NewAdminDeleteRolePermissionsV4NoContent() *AdminDeleteRolePermissionsV4NoContent {
	return &AdminDeleteRolePermissionsV4NoContent{}
}

/*AdminDeleteRolePermissionsV4NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminDeleteRolePermissionsV4NoContent struct {
}

func (o *AdminDeleteRolePermissionsV4NoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/roles/{roleId}/permissions][%d] adminDeleteRolePermissionsV4NoContent ", 204)
}

func (o *AdminDeleteRolePermissionsV4NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteRolePermissionsV4Unauthorized creates a AdminDeleteRolePermissionsV4Unauthorized with default headers values
func NewAdminDeleteRolePermissionsV4Unauthorized() *AdminDeleteRolePermissionsV4Unauthorized {
	return &AdminDeleteRolePermissionsV4Unauthorized{}
}

/*AdminDeleteRolePermissionsV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDeleteRolePermissionsV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteRolePermissionsV4Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/roles/{roleId}/permissions][%d] adminDeleteRolePermissionsV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteRolePermissionsV4Unauthorized) ToJSONString() string {
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

func (o *AdminDeleteRolePermissionsV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteRolePermissionsV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteRolePermissionsV4Forbidden creates a AdminDeleteRolePermissionsV4Forbidden with default headers values
func NewAdminDeleteRolePermissionsV4Forbidden() *AdminDeleteRolePermissionsV4Forbidden {
	return &AdminDeleteRolePermissionsV4Forbidden{}
}

/*AdminDeleteRolePermissionsV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminDeleteRolePermissionsV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDeleteRolePermissionsV4Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/roles/{roleId}/permissions][%d] adminDeleteRolePermissionsV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteRolePermissionsV4Forbidden) ToJSONString() string {
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

func (o *AdminDeleteRolePermissionsV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDeleteRolePermissionsV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteRolePermissionsV4NotFound creates a AdminDeleteRolePermissionsV4NotFound with default headers values
func NewAdminDeleteRolePermissionsV4NotFound() *AdminDeleteRolePermissionsV4NotFound {
	return &AdminDeleteRolePermissionsV4NotFound{}
}

/*AdminDeleteRolePermissionsV4NotFound handles this case with default header values.

  Data not found
*/
type AdminDeleteRolePermissionsV4NotFound struct {
}

func (o *AdminDeleteRolePermissionsV4NotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/admin/roles/{roleId}/permissions][%d] adminDeleteRolePermissionsV4NotFound ", 404)
}

func (o *AdminDeleteRolePermissionsV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
