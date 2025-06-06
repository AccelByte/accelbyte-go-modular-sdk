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

type DeleteRolePermissionResponse struct {
	iamclientmodels.ApiResponse

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 string
}

func (m *DeleteRolePermissionResponse) Unpack() *iamclientmodels.ApiError {
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
			return &iamclientmodels.ApiError{Code: "404", Message: m.Error404}

		default:
			return &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// DeleteRolePermissionReader is a Reader for the DeleteRolePermission structure.
type DeleteRolePermissionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteRolePermissionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteRolePermissionNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteRolePermissionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteRolePermissionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteRolePermissionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteRolePermissionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/roles/{roleId}/permissions/{resource}/{action} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteRolePermissionNoContent creates a DeleteRolePermissionNoContent with default headers values
func NewDeleteRolePermissionNoContent() *DeleteRolePermissionNoContent {
	return &DeleteRolePermissionNoContent{}
}

/*DeleteRolePermissionNoContent handles this case with default header values.

  Operation succeeded
*/
type DeleteRolePermissionNoContent struct {
}

func (o *DeleteRolePermissionNoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/roles/{roleId}/permissions/{resource}/{action}][%d] deleteRolePermissionNoContent ", 204)
}

func (o *DeleteRolePermissionNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteRolePermissionBadRequest creates a DeleteRolePermissionBadRequest with default headers values
func NewDeleteRolePermissionBadRequest() *DeleteRolePermissionBadRequest {
	return &DeleteRolePermissionBadRequest{}
}

/*DeleteRolePermissionBadRequest handles this case with default header values.

  Invalid request
*/
type DeleteRolePermissionBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteRolePermissionBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/roles/{roleId}/permissions/{resource}/{action}][%d] deleteRolePermissionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteRolePermissionBadRequest) ToJSONString() string {
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

func (o *DeleteRolePermissionBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteRolePermissionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteRolePermissionUnauthorized creates a DeleteRolePermissionUnauthorized with default headers values
func NewDeleteRolePermissionUnauthorized() *DeleteRolePermissionUnauthorized {
	return &DeleteRolePermissionUnauthorized{}
}

/*DeleteRolePermissionUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteRolePermissionUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteRolePermissionUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/roles/{roleId}/permissions/{resource}/{action}][%d] deleteRolePermissionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteRolePermissionUnauthorized) ToJSONString() string {
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

func (o *DeleteRolePermissionUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteRolePermissionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteRolePermissionForbidden creates a DeleteRolePermissionForbidden with default headers values
func NewDeleteRolePermissionForbidden() *DeleteRolePermissionForbidden {
	return &DeleteRolePermissionForbidden{}
}

/*DeleteRolePermissionForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type DeleteRolePermissionForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteRolePermissionForbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/roles/{roleId}/permissions/{resource}/{action}][%d] deleteRolePermissionForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteRolePermissionForbidden) ToJSONString() string {
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

func (o *DeleteRolePermissionForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteRolePermissionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteRolePermissionNotFound creates a DeleteRolePermissionNotFound with default headers values
func NewDeleteRolePermissionNotFound() *DeleteRolePermissionNotFound {
	return &DeleteRolePermissionNotFound{}
}

/*DeleteRolePermissionNotFound handles this case with default header values.

  Data not found
*/
type DeleteRolePermissionNotFound struct {
}

func (o *DeleteRolePermissionNotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/roles/{roleId}/permissions/{resource}/{action}][%d] deleteRolePermissionNotFound ", 404)
}

func (o *DeleteRolePermissionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
