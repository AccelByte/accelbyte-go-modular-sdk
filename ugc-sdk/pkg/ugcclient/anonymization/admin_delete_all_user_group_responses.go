// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package anonymization

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclientmodels"
)

type AdminDeleteAllUserGroupResponse struct {
	ugcclientmodels.ApiResponse

	Error401 *ugcclientmodels.ResponseError
	Error404 *ugcclientmodels.ResponseError
	Error500 *ugcclientmodels.ResponseError
}

func (m *AdminDeleteAllUserGroupResponse) Unpack() *ugcclientmodels.ApiError {
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
			return &ugcclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// AdminDeleteAllUserGroupReader is a Reader for the AdminDeleteAllUserGroup structure.
type AdminDeleteAllUserGroupReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteAllUserGroupReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteAllUserGroupNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteAllUserGroupUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteAllUserGroupNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteAllUserGroupInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteAllUserGroupNoContent creates a AdminDeleteAllUserGroupNoContent with default headers values
func NewAdminDeleteAllUserGroupNoContent() *AdminDeleteAllUserGroupNoContent {
	return &AdminDeleteAllUserGroupNoContent{}
}

/*AdminDeleteAllUserGroupNoContent handles this case with default header values.

  Groups deleted
*/
type AdminDeleteAllUserGroupNoContent struct {
}

func (o *AdminDeleteAllUserGroupNoContent) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups][%d] adminDeleteAllUserGroupNoContent ", 204)
}

func (o *AdminDeleteAllUserGroupNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteAllUserGroupUnauthorized creates a AdminDeleteAllUserGroupUnauthorized with default headers values
func NewAdminDeleteAllUserGroupUnauthorized() *AdminDeleteAllUserGroupUnauthorized {
	return &AdminDeleteAllUserGroupUnauthorized{}
}

/*AdminDeleteAllUserGroupUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDeleteAllUserGroupUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteAllUserGroupUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups][%d] adminDeleteAllUserGroupUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteAllUserGroupUnauthorized) ToJSONString() string {
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

func (o *AdminDeleteAllUserGroupUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteAllUserGroupUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteAllUserGroupNotFound creates a AdminDeleteAllUserGroupNotFound with default headers values
func NewAdminDeleteAllUserGroupNotFound() *AdminDeleteAllUserGroupNotFound {
	return &AdminDeleteAllUserGroupNotFound{}
}

/*AdminDeleteAllUserGroupNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773302</td><td>Groups not found</td></tr></table>
*/
type AdminDeleteAllUserGroupNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteAllUserGroupNotFound) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups][%d] adminDeleteAllUserGroupNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeleteAllUserGroupNotFound) ToJSONString() string {
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

func (o *AdminDeleteAllUserGroupNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteAllUserGroupNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteAllUserGroupInternalServerError creates a AdminDeleteAllUserGroupInternalServerError with default headers values
func NewAdminDeleteAllUserGroupInternalServerError() *AdminDeleteAllUserGroupInternalServerError {
	return &AdminDeleteAllUserGroupInternalServerError{}
}

/*AdminDeleteAllUserGroupInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773301</td><td>Unable to find all user group</td></tr></table>
*/
type AdminDeleteAllUserGroupInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteAllUserGroupInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups][%d] adminDeleteAllUserGroupInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteAllUserGroupInternalServerError) ToJSONString() string {
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

func (o *AdminDeleteAllUserGroupInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteAllUserGroupInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
