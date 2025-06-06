// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package group_member

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg/groupclientmodels"
)

type AdminGetUserGroupStatusInformationV2Response struct {
	groupclientmodels.ApiResponse
	Data *groupclientmodels.ModelsGetUserGroupInformationResponseV1

	Error401 *groupclientmodels.ResponseErrorResponse
	Error403 *groupclientmodels.ResponseErrorResponse
	Error404 *groupclientmodels.ResponseErrorResponse
	Error500 *groupclientmodels.ResponseErrorResponse
}

func (m *AdminGetUserGroupStatusInformationV2Response) Unpack() (*groupclientmodels.ModelsGetUserGroupInformationResponseV1, *groupclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 401:
			e, err := m.Error401.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		case 403:
			e, err := m.Error403.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		case 404:
			e, err := m.Error404.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		case 500:
			e, err := m.Error500.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		default:
			return nil, &groupclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// AdminGetUserGroupStatusInformationV2Reader is a Reader for the AdminGetUserGroupStatusInformationV2 structure.
type AdminGetUserGroupStatusInformationV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetUserGroupStatusInformationV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetUserGroupStatusInformationV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetUserGroupStatusInformationV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetUserGroupStatusInformationV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetUserGroupStatusInformationV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetUserGroupStatusInformationV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /group/v2/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/status returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetUserGroupStatusInformationV2OK creates a AdminGetUserGroupStatusInformationV2OK with default headers values
func NewAdminGetUserGroupStatusInformationV2OK() *AdminGetUserGroupStatusInformationV2OK {
	return &AdminGetUserGroupStatusInformationV2OK{}
}

/*AdminGetUserGroupStatusInformationV2OK handles this case with default header values.

  OK
*/
type AdminGetUserGroupStatusInformationV2OK struct {
	Payload *groupclientmodels.ModelsGetUserGroupInformationResponseV1
}

func (o *AdminGetUserGroupStatusInformationV2OK) Error() string {
	return fmt.Sprintf("[GET /group/v2/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/status][%d] adminGetUserGroupStatusInformationV2OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetUserGroupStatusInformationV2OK) ToJSONString() string {
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

func (o *AdminGetUserGroupStatusInformationV2OK) GetPayload() *groupclientmodels.ModelsGetUserGroupInformationResponseV1 {
	return o.Payload
}

func (o *AdminGetUserGroupStatusInformationV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsGetUserGroupInformationResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUserGroupStatusInformationV2Unauthorized creates a AdminGetUserGroupStatusInformationV2Unauthorized with default headers values
func NewAdminGetUserGroupStatusInformationV2Unauthorized() *AdminGetUserGroupStatusInformationV2Unauthorized {
	return &AdminGetUserGroupStatusInformationV2Unauthorized{}
}

/*AdminGetUserGroupStatusInformationV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetUserGroupStatusInformationV2Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AdminGetUserGroupStatusInformationV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /group/v2/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/status][%d] adminGetUserGroupStatusInformationV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetUserGroupStatusInformationV2Unauthorized) ToJSONString() string {
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

func (o *AdminGetUserGroupStatusInformationV2Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AdminGetUserGroupStatusInformationV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUserGroupStatusInformationV2Forbidden creates a AdminGetUserGroupStatusInformationV2Forbidden with default headers values
func NewAdminGetUserGroupStatusInformationV2Forbidden() *AdminGetUserGroupStatusInformationV2Forbidden {
	return &AdminGetUserGroupStatusInformationV2Forbidden{}
}

/*AdminGetUserGroupStatusInformationV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>73036</td><td>insufficient member role permission</td></tr></table>
*/
type AdminGetUserGroupStatusInformationV2Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AdminGetUserGroupStatusInformationV2Forbidden) Error() string {
	return fmt.Sprintf("[GET /group/v2/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/status][%d] adminGetUserGroupStatusInformationV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetUserGroupStatusInformationV2Forbidden) ToJSONString() string {
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

func (o *AdminGetUserGroupStatusInformationV2Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AdminGetUserGroupStatusInformationV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUserGroupStatusInformationV2NotFound creates a AdminGetUserGroupStatusInformationV2NotFound with default headers values
func NewAdminGetUserGroupStatusInformationV2NotFound() *AdminGetUserGroupStatusInformationV2NotFound {
	return &AdminGetUserGroupStatusInformationV2NotFound{}
}

/*AdminGetUserGroupStatusInformationV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73433</td><td>member group not found</td></tr><tr><td>73034</td><td>user not belong to any group</td></tr></table>
*/
type AdminGetUserGroupStatusInformationV2NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AdminGetUserGroupStatusInformationV2NotFound) Error() string {
	return fmt.Sprintf("[GET /group/v2/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/status][%d] adminGetUserGroupStatusInformationV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetUserGroupStatusInformationV2NotFound) ToJSONString() string {
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

func (o *AdminGetUserGroupStatusInformationV2NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AdminGetUserGroupStatusInformationV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUserGroupStatusInformationV2InternalServerError creates a AdminGetUserGroupStatusInformationV2InternalServerError with default headers values
func NewAdminGetUserGroupStatusInformationV2InternalServerError() *AdminGetUserGroupStatusInformationV2InternalServerError {
	return &AdminGetUserGroupStatusInformationV2InternalServerError{}
}

/*AdminGetUserGroupStatusInformationV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetUserGroupStatusInformationV2InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AdminGetUserGroupStatusInformationV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /group/v2/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/status][%d] adminGetUserGroupStatusInformationV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetUserGroupStatusInformationV2InternalServerError) ToJSONString() string {
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

func (o *AdminGetUserGroupStatusInformationV2InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AdminGetUserGroupStatusInformationV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
