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

type GetMyGroupJoinRequestV2Response struct {
	groupclientmodels.ApiResponse
	Data *groupclientmodels.ModelsGetMemberRequestsListResponseV1

	Error400 *groupclientmodels.ResponseErrorResponse
	Error401 *groupclientmodels.ResponseErrorResponse
	Error403 *groupclientmodels.ResponseErrorResponse
	Error500 *groupclientmodels.ResponseErrorResponse
}

func (m *GetMyGroupJoinRequestV2Response) Unpack() (*groupclientmodels.ModelsGetMemberRequestsListResponseV1, *groupclientmodels.ApiError) {
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

// GetMyGroupJoinRequestV2Reader is a Reader for the GetMyGroupJoinRequestV2 structure.
type GetMyGroupJoinRequestV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetMyGroupJoinRequestV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetMyGroupJoinRequestV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetMyGroupJoinRequestV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetMyGroupJoinRequestV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetMyGroupJoinRequestV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetMyGroupJoinRequestV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /group/v2/public/namespaces/{namespace}/users/me/join/request returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetMyGroupJoinRequestV2OK creates a GetMyGroupJoinRequestV2OK with default headers values
func NewGetMyGroupJoinRequestV2OK() *GetMyGroupJoinRequestV2OK {
	return &GetMyGroupJoinRequestV2OK{}
}

/*GetMyGroupJoinRequestV2OK handles this case with default header values.

  OK
*/
type GetMyGroupJoinRequestV2OK struct {
	Payload *groupclientmodels.ModelsGetMemberRequestsListResponseV1
}

func (o *GetMyGroupJoinRequestV2OK) Error() string {
	return fmt.Sprintf("[GET /group/v2/public/namespaces/{namespace}/users/me/join/request][%d] getMyGroupJoinRequestV2OK  %+v", 200, o.ToJSONString())
}

func (o *GetMyGroupJoinRequestV2OK) ToJSONString() string {
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

func (o *GetMyGroupJoinRequestV2OK) GetPayload() *groupclientmodels.ModelsGetMemberRequestsListResponseV1 {
	return o.Payload
}

func (o *GetMyGroupJoinRequestV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetMyGroupJoinRequestV2BadRequest creates a GetMyGroupJoinRequestV2BadRequest with default headers values
func NewGetMyGroupJoinRequestV2BadRequest() *GetMyGroupJoinRequestV2BadRequest {
	return &GetMyGroupJoinRequestV2BadRequest{}
}

/*GetMyGroupJoinRequestV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetMyGroupJoinRequestV2BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetMyGroupJoinRequestV2BadRequest) Error() string {
	return fmt.Sprintf("[GET /group/v2/public/namespaces/{namespace}/users/me/join/request][%d] getMyGroupJoinRequestV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetMyGroupJoinRequestV2BadRequest) ToJSONString() string {
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

func (o *GetMyGroupJoinRequestV2BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetMyGroupJoinRequestV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetMyGroupJoinRequestV2Unauthorized creates a GetMyGroupJoinRequestV2Unauthorized with default headers values
func NewGetMyGroupJoinRequestV2Unauthorized() *GetMyGroupJoinRequestV2Unauthorized {
	return &GetMyGroupJoinRequestV2Unauthorized{}
}

/*GetMyGroupJoinRequestV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetMyGroupJoinRequestV2Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetMyGroupJoinRequestV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /group/v2/public/namespaces/{namespace}/users/me/join/request][%d] getMyGroupJoinRequestV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetMyGroupJoinRequestV2Unauthorized) ToJSONString() string {
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

func (o *GetMyGroupJoinRequestV2Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetMyGroupJoinRequestV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetMyGroupJoinRequestV2Forbidden creates a GetMyGroupJoinRequestV2Forbidden with default headers values
func NewGetMyGroupJoinRequestV2Forbidden() *GetMyGroupJoinRequestV2Forbidden {
	return &GetMyGroupJoinRequestV2Forbidden{}
}

/*GetMyGroupJoinRequestV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type GetMyGroupJoinRequestV2Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetMyGroupJoinRequestV2Forbidden) Error() string {
	return fmt.Sprintf("[GET /group/v2/public/namespaces/{namespace}/users/me/join/request][%d] getMyGroupJoinRequestV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetMyGroupJoinRequestV2Forbidden) ToJSONString() string {
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

func (o *GetMyGroupJoinRequestV2Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetMyGroupJoinRequestV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetMyGroupJoinRequestV2InternalServerError creates a GetMyGroupJoinRequestV2InternalServerError with default headers values
func NewGetMyGroupJoinRequestV2InternalServerError() *GetMyGroupJoinRequestV2InternalServerError {
	return &GetMyGroupJoinRequestV2InternalServerError{}
}

/*GetMyGroupJoinRequestV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetMyGroupJoinRequestV2InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *GetMyGroupJoinRequestV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /group/v2/public/namespaces/{namespace}/users/me/join/request][%d] getMyGroupJoinRequestV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetMyGroupJoinRequestV2InternalServerError) ToJSONString() string {
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

func (o *GetMyGroupJoinRequestV2InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetMyGroupJoinRequestV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
