// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package group_roles

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

type DeleteMemberRolePublicV1Response struct {
	groupclientmodels.ApiResponse

	Error400 *groupclientmodels.ResponseErrorResponse
	Error401 *groupclientmodels.ResponseErrorResponse
	Error403 *groupclientmodels.ResponseErrorResponse
	Error404 *groupclientmodels.ResponseErrorResponse
	Error422 *groupclientmodels.ResponseErrorResponse
	Error500 *groupclientmodels.ResponseErrorResponse
}

func (m *DeleteMemberRolePublicV1Response) Unpack() *groupclientmodels.ApiError {
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
			e, err := m.Error404.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 422:
			e, err := m.Error422.TranslateToApiError()
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
			return &groupclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// DeleteMemberRolePublicV1Reader is a Reader for the DeleteMemberRolePublicV1 structure.
type DeleteMemberRolePublicV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteMemberRolePublicV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteMemberRolePublicV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteMemberRolePublicV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteMemberRolePublicV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteMemberRolePublicV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteMemberRolePublicV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewDeleteMemberRolePublicV1UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteMemberRolePublicV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteMemberRolePublicV1NoContent creates a DeleteMemberRolePublicV1NoContent with default headers values
func NewDeleteMemberRolePublicV1NoContent() *DeleteMemberRolePublicV1NoContent {
	return &DeleteMemberRolePublicV1NoContent{}
}

/*DeleteMemberRolePublicV1NoContent handles this case with default header values.

  No Content
*/
type DeleteMemberRolePublicV1NoContent struct {
}

func (o *DeleteMemberRolePublicV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members][%d] deleteMemberRolePublicV1NoContent ", 204)
}

func (o *DeleteMemberRolePublicV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteMemberRolePublicV1BadRequest creates a DeleteMemberRolePublicV1BadRequest with default headers values
func NewDeleteMemberRolePublicV1BadRequest() *DeleteMemberRolePublicV1BadRequest {
	return &DeleteMemberRolePublicV1BadRequest{}
}

/*DeleteMemberRolePublicV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type DeleteMemberRolePublicV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteMemberRolePublicV1BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members][%d] deleteMemberRolePublicV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteMemberRolePublicV1BadRequest) ToJSONString() string {
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

func (o *DeleteMemberRolePublicV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteMemberRolePublicV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteMemberRolePublicV1Unauthorized creates a DeleteMemberRolePublicV1Unauthorized with default headers values
func NewDeleteMemberRolePublicV1Unauthorized() *DeleteMemberRolePublicV1Unauthorized {
	return &DeleteMemberRolePublicV1Unauthorized{}
}

/*DeleteMemberRolePublicV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteMemberRolePublicV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteMemberRolePublicV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members][%d] deleteMemberRolePublicV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteMemberRolePublicV1Unauthorized) ToJSONString() string {
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

func (o *DeleteMemberRolePublicV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteMemberRolePublicV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteMemberRolePublicV1Forbidden creates a DeleteMemberRolePublicV1Forbidden with default headers values
func NewDeleteMemberRolePublicV1Forbidden() *DeleteMemberRolePublicV1Forbidden {
	return &DeleteMemberRolePublicV1Forbidden{}
}

/*DeleteMemberRolePublicV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type DeleteMemberRolePublicV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteMemberRolePublicV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members][%d] deleteMemberRolePublicV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteMemberRolePublicV1Forbidden) ToJSONString() string {
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

func (o *DeleteMemberRolePublicV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteMemberRolePublicV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteMemberRolePublicV1NotFound creates a DeleteMemberRolePublicV1NotFound with default headers values
func NewDeleteMemberRolePublicV1NotFound() *DeleteMemberRolePublicV1NotFound {
	return &DeleteMemberRolePublicV1NotFound{}
}

/*DeleteMemberRolePublicV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73232</td><td>member role not found</td></tr></table>
*/
type DeleteMemberRolePublicV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteMemberRolePublicV1NotFound) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members][%d] deleteMemberRolePublicV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteMemberRolePublicV1NotFound) ToJSONString() string {
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

func (o *DeleteMemberRolePublicV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteMemberRolePublicV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteMemberRolePublicV1UnprocessableEntity creates a DeleteMemberRolePublicV1UnprocessableEntity with default headers values
func NewDeleteMemberRolePublicV1UnprocessableEntity() *DeleteMemberRolePublicV1UnprocessableEntity {
	return &DeleteMemberRolePublicV1UnprocessableEntity{}
}

/*DeleteMemberRolePublicV1UnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73444</td><td>member must have role</td></tr></table>
*/
type DeleteMemberRolePublicV1UnprocessableEntity struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteMemberRolePublicV1UnprocessableEntity) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members][%d] deleteMemberRolePublicV1UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *DeleteMemberRolePublicV1UnprocessableEntity) ToJSONString() string {
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

func (o *DeleteMemberRolePublicV1UnprocessableEntity) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteMemberRolePublicV1UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteMemberRolePublicV1InternalServerError creates a DeleteMemberRolePublicV1InternalServerError with default headers values
func NewDeleteMemberRolePublicV1InternalServerError() *DeleteMemberRolePublicV1InternalServerError {
	return &DeleteMemberRolePublicV1InternalServerError{}
}

/*DeleteMemberRolePublicV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteMemberRolePublicV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteMemberRolePublicV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members][%d] deleteMemberRolePublicV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteMemberRolePublicV1InternalServerError) ToJSONString() string {
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

func (o *DeleteMemberRolePublicV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteMemberRolePublicV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
