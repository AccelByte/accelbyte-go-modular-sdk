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

type AdminEnableUserV2Response struct {
	iamclientmodels.ApiResponse

	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 string
	Error500 string
}

func (m *AdminEnableUserV2Response) Unpack() *iamclientmodels.ApiError {
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

		case 500:
			return &iamclientmodels.ApiError{Code: "500", Message: m.Error500}

		default:
			return &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// AdminEnableUserV2Reader is a Reader for the AdminEnableUserV2 structure.
type AdminEnableUserV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminEnableUserV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminEnableUserV2NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminEnableUserV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminEnableUserV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminEnableUserV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminEnableUserV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/v2/admin/namespaces/{namespace}/users/{userId}/enable returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminEnableUserV2NoContent creates a AdminEnableUserV2NoContent with default headers values
func NewAdminEnableUserV2NoContent() *AdminEnableUserV2NoContent {
	return &AdminEnableUserV2NoContent{}
}

/*AdminEnableUserV2NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminEnableUserV2NoContent struct {
}

func (o *AdminEnableUserV2NoContent) Error() string {
	return fmt.Sprintf("[PUT /iam/v2/admin/namespaces/{namespace}/users/{userId}/enable][%d] adminEnableUserV2NoContent ", 204)
}

func (o *AdminEnableUserV2NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminEnableUserV2Unauthorized creates a AdminEnableUserV2Unauthorized with default headers values
func NewAdminEnableUserV2Unauthorized() *AdminEnableUserV2Unauthorized {
	return &AdminEnableUserV2Unauthorized{}
}

/*AdminEnableUserV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminEnableUserV2Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminEnableUserV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/v2/admin/namespaces/{namespace}/users/{userId}/enable][%d] adminEnableUserV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminEnableUserV2Unauthorized) ToJSONString() string {
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

func (o *AdminEnableUserV2Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminEnableUserV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminEnableUserV2Forbidden creates a AdminEnableUserV2Forbidden with default headers values
func NewAdminEnableUserV2Forbidden() *AdminEnableUserV2Forbidden {
	return &AdminEnableUserV2Forbidden{}
}

/*AdminEnableUserV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminEnableUserV2Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminEnableUserV2Forbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/v2/admin/namespaces/{namespace}/users/{userId}/enable][%d] adminEnableUserV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminEnableUserV2Forbidden) ToJSONString() string {
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

func (o *AdminEnableUserV2Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminEnableUserV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminEnableUserV2NotFound creates a AdminEnableUserV2NotFound with default headers values
func NewAdminEnableUserV2NotFound() *AdminEnableUserV2NotFound {
	return &AdminEnableUserV2NotFound{}
}

/*AdminEnableUserV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminEnableUserV2NotFound struct {
}

func (o *AdminEnableUserV2NotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/v2/admin/namespaces/{namespace}/users/{userId}/enable][%d] adminEnableUserV2NotFound ", 404)
}

func (o *AdminEnableUserV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminEnableUserV2InternalServerError creates a AdminEnableUserV2InternalServerError with default headers values
func NewAdminEnableUserV2InternalServerError() *AdminEnableUserV2InternalServerError {
	return &AdminEnableUserV2InternalServerError{}
}

/*AdminEnableUserV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminEnableUserV2InternalServerError struct {
}

func (o *AdminEnableUserV2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /iam/v2/admin/namespaces/{namespace}/users/{userId}/enable][%d] adminEnableUserV2InternalServerError ", 500)
}

func (o *AdminEnableUserV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
