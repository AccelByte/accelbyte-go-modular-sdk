// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package member_request

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

type GetGroupInviteRequestPublicV2Response struct {
	groupclientmodels.ApiResponse
	Data *groupclientmodels.ModelsGetMemberRequestsListResponseV1

	Error400 *groupclientmodels.ResponseErrorResponse
	Error401 *groupclientmodels.ResponseErrorResponse
	Error403 *groupclientmodels.ResponseErrorResponse
	Error500 *groupclientmodels.ResponseErrorResponse
}

func (m *GetGroupInviteRequestPublicV2Response) Unpack() (*groupclientmodels.ModelsGetMemberRequestsListResponseV1, *groupclientmodels.ApiError) {
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

// GetGroupInviteRequestPublicV2Reader is a Reader for the GetGroupInviteRequestPublicV2 structure.
type GetGroupInviteRequestPublicV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetGroupInviteRequestPublicV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetGroupInviteRequestPublicV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetGroupInviteRequestPublicV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetGroupInviteRequestPublicV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetGroupInviteRequestPublicV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetGroupInviteRequestPublicV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/request returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetGroupInviteRequestPublicV2OK creates a GetGroupInviteRequestPublicV2OK with default headers values
func NewGetGroupInviteRequestPublicV2OK() *GetGroupInviteRequestPublicV2OK {
	return &GetGroupInviteRequestPublicV2OK{}
}

/*GetGroupInviteRequestPublicV2OK handles this case with default header values.

  OK
*/
type GetGroupInviteRequestPublicV2OK struct {
	Payload *groupclientmodels.ModelsGetMemberRequestsListResponseV1
}

func (o *GetGroupInviteRequestPublicV2OK) Error() string {
	return fmt.Sprintf("[GET /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/request][%d] getGroupInviteRequestPublicV2OK  %+v", 200, o.ToJSONString())
}

func (o *GetGroupInviteRequestPublicV2OK) ToJSONString() string {
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

func (o *GetGroupInviteRequestPublicV2OK) GetPayload() *groupclientmodels.ModelsGetMemberRequestsListResponseV1 {
	return o.Payload
}

func (o *GetGroupInviteRequestPublicV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsGetMemberRequestsListResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetGroupInviteRequestPublicV2BadRequest creates a GetGroupInviteRequestPublicV2BadRequest with default headers values
func NewGetGroupInviteRequestPublicV2BadRequest() *GetGroupInviteRequestPublicV2BadRequest {
	return &GetGroupInviteRequestPublicV2BadRequest{}
}

/*GetGroupInviteRequestPublicV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetGroupInviteRequestPublicV2BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetGroupInviteRequestPublicV2BadRequest) Error() string {
	return fmt.Sprintf("[GET /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/request][%d] getGroupInviteRequestPublicV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetGroupInviteRequestPublicV2BadRequest) ToJSONString() string {
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

func (o *GetGroupInviteRequestPublicV2BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetGroupInviteRequestPublicV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetGroupInviteRequestPublicV2Unauthorized creates a GetGroupInviteRequestPublicV2Unauthorized with default headers values
func NewGetGroupInviteRequestPublicV2Unauthorized() *GetGroupInviteRequestPublicV2Unauthorized {
	return &GetGroupInviteRequestPublicV2Unauthorized{}
}

/*GetGroupInviteRequestPublicV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetGroupInviteRequestPublicV2Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetGroupInviteRequestPublicV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/request][%d] getGroupInviteRequestPublicV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetGroupInviteRequestPublicV2Unauthorized) ToJSONString() string {
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

func (o *GetGroupInviteRequestPublicV2Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetGroupInviteRequestPublicV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetGroupInviteRequestPublicV2Forbidden creates a GetGroupInviteRequestPublicV2Forbidden with default headers values
func NewGetGroupInviteRequestPublicV2Forbidden() *GetGroupInviteRequestPublicV2Forbidden {
	return &GetGroupInviteRequestPublicV2Forbidden{}
}

/*GetGroupInviteRequestPublicV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>73036</td><td>insufficient member role permission</td></tr></table>
*/
type GetGroupInviteRequestPublicV2Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetGroupInviteRequestPublicV2Forbidden) Error() string {
	return fmt.Sprintf("[GET /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/request][%d] getGroupInviteRequestPublicV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetGroupInviteRequestPublicV2Forbidden) ToJSONString() string {
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

func (o *GetGroupInviteRequestPublicV2Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetGroupInviteRequestPublicV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetGroupInviteRequestPublicV2InternalServerError creates a GetGroupInviteRequestPublicV2InternalServerError with default headers values
func NewGetGroupInviteRequestPublicV2InternalServerError() *GetGroupInviteRequestPublicV2InternalServerError {
	return &GetGroupInviteRequestPublicV2InternalServerError{}
}

/*GetGroupInviteRequestPublicV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetGroupInviteRequestPublicV2InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetGroupInviteRequestPublicV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/request][%d] getGroupInviteRequestPublicV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetGroupInviteRequestPublicV2InternalServerError) ToJSONString() string {
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

func (o *GetGroupInviteRequestPublicV2InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetGroupInviteRequestPublicV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
