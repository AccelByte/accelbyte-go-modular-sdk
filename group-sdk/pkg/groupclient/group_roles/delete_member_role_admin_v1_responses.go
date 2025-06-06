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

type DeleteMemberRoleAdminV1Response struct {
	groupclientmodels.ApiResponse

	Error400 *groupclientmodels.ResponseErrorResponse
	Error401 *groupclientmodels.ResponseErrorResponse
	Error403 *groupclientmodels.ResponseErrorResponse
	Error404 *groupclientmodels.ResponseErrorResponse
	Error500 *groupclientmodels.ResponseErrorResponse
}

func (m *DeleteMemberRoleAdminV1Response) Unpack() *groupclientmodels.ApiError {
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

// DeleteMemberRoleAdminV1Reader is a Reader for the DeleteMemberRoleAdminV1 structure.
type DeleteMemberRoleAdminV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteMemberRoleAdminV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteMemberRoleAdminV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteMemberRoleAdminV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteMemberRoleAdminV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteMemberRoleAdminV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteMemberRoleAdminV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteMemberRoleAdminV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteMemberRoleAdminV1NoContent creates a DeleteMemberRoleAdminV1NoContent with default headers values
func NewDeleteMemberRoleAdminV1NoContent() *DeleteMemberRoleAdminV1NoContent {
	return &DeleteMemberRoleAdminV1NoContent{}
}

/*DeleteMemberRoleAdminV1NoContent handles this case with default header values.

  No Content
*/
type DeleteMemberRoleAdminV1NoContent struct {
}

func (o *DeleteMemberRoleAdminV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}][%d] deleteMemberRoleAdminV1NoContent ", 204)
}

func (o *DeleteMemberRoleAdminV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteMemberRoleAdminV1BadRequest creates a DeleteMemberRoleAdminV1BadRequest with default headers values
func NewDeleteMemberRoleAdminV1BadRequest() *DeleteMemberRoleAdminV1BadRequest {
	return &DeleteMemberRoleAdminV1BadRequest{}
}

/*DeleteMemberRoleAdminV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type DeleteMemberRoleAdminV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteMemberRoleAdminV1BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}][%d] deleteMemberRoleAdminV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteMemberRoleAdminV1BadRequest) ToJSONString() string {
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

func (o *DeleteMemberRoleAdminV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteMemberRoleAdminV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteMemberRoleAdminV1Unauthorized creates a DeleteMemberRoleAdminV1Unauthorized with default headers values
func NewDeleteMemberRoleAdminV1Unauthorized() *DeleteMemberRoleAdminV1Unauthorized {
	return &DeleteMemberRoleAdminV1Unauthorized{}
}

/*DeleteMemberRoleAdminV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteMemberRoleAdminV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteMemberRoleAdminV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}][%d] deleteMemberRoleAdminV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteMemberRoleAdminV1Unauthorized) ToJSONString() string {
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

func (o *DeleteMemberRoleAdminV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteMemberRoleAdminV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteMemberRoleAdminV1Forbidden creates a DeleteMemberRoleAdminV1Forbidden with default headers values
func NewDeleteMemberRoleAdminV1Forbidden() *DeleteMemberRoleAdminV1Forbidden {
	return &DeleteMemberRoleAdminV1Forbidden{}
}

/*DeleteMemberRoleAdminV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type DeleteMemberRoleAdminV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteMemberRoleAdminV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}][%d] deleteMemberRoleAdminV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteMemberRoleAdminV1Forbidden) ToJSONString() string {
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

func (o *DeleteMemberRoleAdminV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteMemberRoleAdminV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteMemberRoleAdminV1NotFound creates a DeleteMemberRoleAdminV1NotFound with default headers values
func NewDeleteMemberRoleAdminV1NotFound() *DeleteMemberRoleAdminV1NotFound {
	return &DeleteMemberRoleAdminV1NotFound{}
}

/*DeleteMemberRoleAdminV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73232</td><td>member role not found</td></tr></table>
*/
type DeleteMemberRoleAdminV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteMemberRoleAdminV1NotFound) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}][%d] deleteMemberRoleAdminV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteMemberRoleAdminV1NotFound) ToJSONString() string {
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

func (o *DeleteMemberRoleAdminV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteMemberRoleAdminV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteMemberRoleAdminV1InternalServerError creates a DeleteMemberRoleAdminV1InternalServerError with default headers values
func NewDeleteMemberRoleAdminV1InternalServerError() *DeleteMemberRoleAdminV1InternalServerError {
	return &DeleteMemberRoleAdminV1InternalServerError{}
}

/*DeleteMemberRoleAdminV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteMemberRoleAdminV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteMemberRoleAdminV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}][%d] deleteMemberRoleAdminV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteMemberRoleAdminV1InternalServerError) ToJSONString() string {
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

func (o *DeleteMemberRoleAdminV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteMemberRoleAdminV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
