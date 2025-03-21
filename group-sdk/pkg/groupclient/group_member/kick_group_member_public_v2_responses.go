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

type KickGroupMemberPublicV2Response struct {
	groupclientmodels.ApiResponse
	Data *groupclientmodels.ModelsKickGroupMemberResponseV1

	Error400 *groupclientmodels.ResponseErrorResponse
	Error401 *groupclientmodels.ResponseErrorResponse
	Error403 *groupclientmodels.ResponseErrorResponse
	Error404 *groupclientmodels.ResponseErrorResponse
	Error500 *groupclientmodels.ResponseErrorResponse
}

func (m *KickGroupMemberPublicV2Response) Unpack() (*groupclientmodels.ModelsKickGroupMemberResponseV1, *groupclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 400:
			e, err := m.Error400.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

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

// KickGroupMemberPublicV2Reader is a Reader for the KickGroupMemberPublicV2 structure.
type KickGroupMemberPublicV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *KickGroupMemberPublicV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewKickGroupMemberPublicV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewKickGroupMemberPublicV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewKickGroupMemberPublicV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewKickGroupMemberPublicV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewKickGroupMemberPublicV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewKickGroupMemberPublicV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/kick returns an error %d: %s", response.Code(), string(data))
	}
}

// NewKickGroupMemberPublicV2OK creates a KickGroupMemberPublicV2OK with default headers values
func NewKickGroupMemberPublicV2OK() *KickGroupMemberPublicV2OK {
	return &KickGroupMemberPublicV2OK{}
}

/*KickGroupMemberPublicV2OK handles this case with default header values.

  OK
*/
type KickGroupMemberPublicV2OK struct {
	Payload *groupclientmodels.ModelsKickGroupMemberResponseV1
}

func (o *KickGroupMemberPublicV2OK) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/kick][%d] kickGroupMemberPublicV2OK  %+v", 200, o.ToJSONString())
}

func (o *KickGroupMemberPublicV2OK) ToJSONString() string {
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

func (o *KickGroupMemberPublicV2OK) GetPayload() *groupclientmodels.ModelsKickGroupMemberResponseV1 {
	return o.Payload
}

func (o *KickGroupMemberPublicV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsKickGroupMemberResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewKickGroupMemberPublicV2BadRequest creates a KickGroupMemberPublicV2BadRequest with default headers values
func NewKickGroupMemberPublicV2BadRequest() *KickGroupMemberPublicV2BadRequest {
	return &KickGroupMemberPublicV2BadRequest{}
}

/*KickGroupMemberPublicV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type KickGroupMemberPublicV2BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *KickGroupMemberPublicV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/kick][%d] kickGroupMemberPublicV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *KickGroupMemberPublicV2BadRequest) ToJSONString() string {
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

func (o *KickGroupMemberPublicV2BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *KickGroupMemberPublicV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewKickGroupMemberPublicV2Unauthorized creates a KickGroupMemberPublicV2Unauthorized with default headers values
func NewKickGroupMemberPublicV2Unauthorized() *KickGroupMemberPublicV2Unauthorized {
	return &KickGroupMemberPublicV2Unauthorized{}
}

/*KickGroupMemberPublicV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type KickGroupMemberPublicV2Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *KickGroupMemberPublicV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/kick][%d] kickGroupMemberPublicV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *KickGroupMemberPublicV2Unauthorized) ToJSONString() string {
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

func (o *KickGroupMemberPublicV2Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *KickGroupMemberPublicV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewKickGroupMemberPublicV2Forbidden creates a KickGroupMemberPublicV2Forbidden with default headers values
func NewKickGroupMemberPublicV2Forbidden() *KickGroupMemberPublicV2Forbidden {
	return &KickGroupMemberPublicV2Forbidden{}
}

/*KickGroupMemberPublicV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>73036</td><td>insufficient member role permission</td></tr></table>
*/
type KickGroupMemberPublicV2Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *KickGroupMemberPublicV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/kick][%d] kickGroupMemberPublicV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *KickGroupMemberPublicV2Forbidden) ToJSONString() string {
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

func (o *KickGroupMemberPublicV2Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *KickGroupMemberPublicV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewKickGroupMemberPublicV2NotFound creates a KickGroupMemberPublicV2NotFound with default headers values
func NewKickGroupMemberPublicV2NotFound() *KickGroupMemberPublicV2NotFound {
	return &KickGroupMemberPublicV2NotFound{}
}

/*KickGroupMemberPublicV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73433</td><td>member group not found</td></tr><tr><td>73034</td><td>user not belong to any group</td></tr></table>
*/
type KickGroupMemberPublicV2NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *KickGroupMemberPublicV2NotFound) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/kick][%d] kickGroupMemberPublicV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *KickGroupMemberPublicV2NotFound) ToJSONString() string {
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

func (o *KickGroupMemberPublicV2NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *KickGroupMemberPublicV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewKickGroupMemberPublicV2InternalServerError creates a KickGroupMemberPublicV2InternalServerError with default headers values
func NewKickGroupMemberPublicV2InternalServerError() *KickGroupMemberPublicV2InternalServerError {
	return &KickGroupMemberPublicV2InternalServerError{}
}

/*KickGroupMemberPublicV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type KickGroupMemberPublicV2InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *KickGroupMemberPublicV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/kick][%d] kickGroupMemberPublicV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *KickGroupMemberPublicV2InternalServerError) ToJSONString() string {
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

func (o *KickGroupMemberPublicV2InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *KickGroupMemberPublicV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
