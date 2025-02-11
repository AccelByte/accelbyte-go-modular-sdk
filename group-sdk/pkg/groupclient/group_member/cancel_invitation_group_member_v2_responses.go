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

type CancelInvitationGroupMemberV2Response struct {
	groupclientmodels.ApiResponse
	Data *groupclientmodels.ModelsCancelInvitationGroupResponseV2

	Error400 *groupclientmodels.ResponseErrorResponse
	Error401 *groupclientmodels.ResponseErrorResponse
	Error403 *groupclientmodels.ResponseErrorResponse
	Error404 *groupclientmodels.ResponseErrorResponse
	Error500 *groupclientmodels.ResponseErrorResponse
}

func (m *CancelInvitationGroupMemberV2Response) Unpack() (*groupclientmodels.ModelsCancelInvitationGroupResponseV2, *groupclientmodels.ApiError) {
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

// CancelInvitationGroupMemberV2Reader is a Reader for the CancelInvitationGroupMemberV2 structure.
type CancelInvitationGroupMemberV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CancelInvitationGroupMemberV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCancelInvitationGroupMemberV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCancelInvitationGroupMemberV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCancelInvitationGroupMemberV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCancelInvitationGroupMemberV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCancelInvitationGroupMemberV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCancelInvitationGroupMemberV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/invite/cancel returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCancelInvitationGroupMemberV2OK creates a CancelInvitationGroupMemberV2OK with default headers values
func NewCancelInvitationGroupMemberV2OK() *CancelInvitationGroupMemberV2OK {
	return &CancelInvitationGroupMemberV2OK{}
}

/*CancelInvitationGroupMemberV2OK handles this case with default header values.

  OK
*/
type CancelInvitationGroupMemberV2OK struct {
	Payload *groupclientmodels.ModelsCancelInvitationGroupResponseV2
}

func (o *CancelInvitationGroupMemberV2OK) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/invite/cancel][%d] cancelInvitationGroupMemberV2OK  %+v", 200, o.ToJSONString())
}

func (o *CancelInvitationGroupMemberV2OK) ToJSONString() string {
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

func (o *CancelInvitationGroupMemberV2OK) GetPayload() *groupclientmodels.ModelsCancelInvitationGroupResponseV2 {
	return o.Payload
}

func (o *CancelInvitationGroupMemberV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsCancelInvitationGroupResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCancelInvitationGroupMemberV2BadRequest creates a CancelInvitationGroupMemberV2BadRequest with default headers values
func NewCancelInvitationGroupMemberV2BadRequest() *CancelInvitationGroupMemberV2BadRequest {
	return &CancelInvitationGroupMemberV2BadRequest{}
}

/*CancelInvitationGroupMemberV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type CancelInvitationGroupMemberV2BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *CancelInvitationGroupMemberV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/invite/cancel][%d] cancelInvitationGroupMemberV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *CancelInvitationGroupMemberV2BadRequest) ToJSONString() string {
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

func (o *CancelInvitationGroupMemberV2BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CancelInvitationGroupMemberV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCancelInvitationGroupMemberV2Unauthorized creates a CancelInvitationGroupMemberV2Unauthorized with default headers values
func NewCancelInvitationGroupMemberV2Unauthorized() *CancelInvitationGroupMemberV2Unauthorized {
	return &CancelInvitationGroupMemberV2Unauthorized{}
}

/*CancelInvitationGroupMemberV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type CancelInvitationGroupMemberV2Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *CancelInvitationGroupMemberV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/invite/cancel][%d] cancelInvitationGroupMemberV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *CancelInvitationGroupMemberV2Unauthorized) ToJSONString() string {
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

func (o *CancelInvitationGroupMemberV2Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CancelInvitationGroupMemberV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCancelInvitationGroupMemberV2Forbidden creates a CancelInvitationGroupMemberV2Forbidden with default headers values
func NewCancelInvitationGroupMemberV2Forbidden() *CancelInvitationGroupMemberV2Forbidden {
	return &CancelInvitationGroupMemberV2Forbidden{}
}

/*CancelInvitationGroupMemberV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>73036</td><td>insufficient member role permission</td></tr></table>
*/
type CancelInvitationGroupMemberV2Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *CancelInvitationGroupMemberV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/invite/cancel][%d] cancelInvitationGroupMemberV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *CancelInvitationGroupMemberV2Forbidden) ToJSONString() string {
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

func (o *CancelInvitationGroupMemberV2Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CancelInvitationGroupMemberV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCancelInvitationGroupMemberV2NotFound creates a CancelInvitationGroupMemberV2NotFound with default headers values
func NewCancelInvitationGroupMemberV2NotFound() *CancelInvitationGroupMemberV2NotFound {
	return &CancelInvitationGroupMemberV2NotFound{}
}

/*CancelInvitationGroupMemberV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73433</td><td>member group not found</td></tr><tr><td>73034</td><td>user not belong to any group</td></tr></table>
*/
type CancelInvitationGroupMemberV2NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *CancelInvitationGroupMemberV2NotFound) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/invite/cancel][%d] cancelInvitationGroupMemberV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *CancelInvitationGroupMemberV2NotFound) ToJSONString() string {
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

func (o *CancelInvitationGroupMemberV2NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CancelInvitationGroupMemberV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCancelInvitationGroupMemberV2InternalServerError creates a CancelInvitationGroupMemberV2InternalServerError with default headers values
func NewCancelInvitationGroupMemberV2InternalServerError() *CancelInvitationGroupMemberV2InternalServerError {
	return &CancelInvitationGroupMemberV2InternalServerError{}
}

/*CancelInvitationGroupMemberV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type CancelInvitationGroupMemberV2InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *CancelInvitationGroupMemberV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/invite/cancel][%d] cancelInvitationGroupMemberV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CancelInvitationGroupMemberV2InternalServerError) ToJSONString() string {
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

func (o *CancelInvitationGroupMemberV2InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CancelInvitationGroupMemberV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
