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

type DeleteUserPermissionResponse struct {
	iamclientmodels.ApiResponse

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 string
}

func (m *DeleteUserPermissionResponse) Unpack() *iamclientmodels.ApiError {
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

// DeleteUserPermissionReader is a Reader for the DeleteUserPermission structure.
type DeleteUserPermissionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteUserPermissionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteUserPermissionNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteUserPermissionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteUserPermissionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteUserPermissionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteUserPermissionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteUserPermissionNoContent creates a DeleteUserPermissionNoContent with default headers values
func NewDeleteUserPermissionNoContent() *DeleteUserPermissionNoContent {
	return &DeleteUserPermissionNoContent{}
}

/*DeleteUserPermissionNoContent handles this case with default header values.

  Operation succeeded
*/
type DeleteUserPermissionNoContent struct {
}

func (o *DeleteUserPermissionNoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}][%d] deleteUserPermissionNoContent ", 204)
}

func (o *DeleteUserPermissionNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteUserPermissionBadRequest creates a DeleteUserPermissionBadRequest with default headers values
func NewDeleteUserPermissionBadRequest() *DeleteUserPermissionBadRequest {
	return &DeleteUserPermissionBadRequest{}
}

/*DeleteUserPermissionBadRequest handles this case with default header values.

  Invalid request
*/
type DeleteUserPermissionBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteUserPermissionBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}][%d] deleteUserPermissionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteUserPermissionBadRequest) ToJSONString() string {
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

func (o *DeleteUserPermissionBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteUserPermissionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteUserPermissionUnauthorized creates a DeleteUserPermissionUnauthorized with default headers values
func NewDeleteUserPermissionUnauthorized() *DeleteUserPermissionUnauthorized {
	return &DeleteUserPermissionUnauthorized{}
}

/*DeleteUserPermissionUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteUserPermissionUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteUserPermissionUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}][%d] deleteUserPermissionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteUserPermissionUnauthorized) ToJSONString() string {
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

func (o *DeleteUserPermissionUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteUserPermissionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteUserPermissionForbidden creates a DeleteUserPermissionForbidden with default headers values
func NewDeleteUserPermissionForbidden() *DeleteUserPermissionForbidden {
	return &DeleteUserPermissionForbidden{}
}

/*DeleteUserPermissionForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type DeleteUserPermissionForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteUserPermissionForbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}][%d] deleteUserPermissionForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteUserPermissionForbidden) ToJSONString() string {
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

func (o *DeleteUserPermissionForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteUserPermissionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteUserPermissionNotFound creates a DeleteUserPermissionNotFound with default headers values
func NewDeleteUserPermissionNotFound() *DeleteUserPermissionNotFound {
	return &DeleteUserPermissionNotFound{}
}

/*DeleteUserPermissionNotFound handles this case with default header values.

  Data not found
*/
type DeleteUserPermissionNotFound struct {
}

func (o *DeleteUserPermissionNotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}][%d] deleteUserPermissionNotFound ", 404)
}

func (o *DeleteUserPermissionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
