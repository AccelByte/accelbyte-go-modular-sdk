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

type UpdateMemberRolePermissionAdminV1Response struct {
	groupclientmodels.ApiResponse
	Data *groupclientmodels.ModelsMemberRoleResponseV1

	Error400 *groupclientmodels.ResponseErrorResponse
	Error401 *groupclientmodels.ResponseErrorResponse
	Error403 *groupclientmodels.ResponseErrorResponse
	Error404 *groupclientmodels.ResponseErrorResponse
	Error500 *groupclientmodels.ResponseErrorResponse
}

func (m *UpdateMemberRolePermissionAdminV1Response) Unpack() (*groupclientmodels.ModelsMemberRoleResponseV1, *groupclientmodels.ApiError) {
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

// UpdateMemberRolePermissionAdminV1Reader is a Reader for the UpdateMemberRolePermissionAdminV1 structure.
type UpdateMemberRolePermissionAdminV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateMemberRolePermissionAdminV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateMemberRolePermissionAdminV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateMemberRolePermissionAdminV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateMemberRolePermissionAdminV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateMemberRolePermissionAdminV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateMemberRolePermissionAdminV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateMemberRolePermissionAdminV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}/permissions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateMemberRolePermissionAdminV1OK creates a UpdateMemberRolePermissionAdminV1OK with default headers values
func NewUpdateMemberRolePermissionAdminV1OK() *UpdateMemberRolePermissionAdminV1OK {
	return &UpdateMemberRolePermissionAdminV1OK{}
}

/*UpdateMemberRolePermissionAdminV1OK handles this case with default header values.

  OK
*/
type UpdateMemberRolePermissionAdminV1OK struct {
	Payload *groupclientmodels.ModelsMemberRoleResponseV1
}

func (o *UpdateMemberRolePermissionAdminV1OK) Error() string {
	return fmt.Sprintf("[PUT /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}/permissions][%d] updateMemberRolePermissionAdminV1OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateMemberRolePermissionAdminV1OK) ToJSONString() string {
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

func (o *UpdateMemberRolePermissionAdminV1OK) GetPayload() *groupclientmodels.ModelsMemberRoleResponseV1 {
	return o.Payload
}

func (o *UpdateMemberRolePermissionAdminV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsMemberRoleResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateMemberRolePermissionAdminV1BadRequest creates a UpdateMemberRolePermissionAdminV1BadRequest with default headers values
func NewUpdateMemberRolePermissionAdminV1BadRequest() *UpdateMemberRolePermissionAdminV1BadRequest {
	return &UpdateMemberRolePermissionAdminV1BadRequest{}
}

/*UpdateMemberRolePermissionAdminV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type UpdateMemberRolePermissionAdminV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateMemberRolePermissionAdminV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}/permissions][%d] updateMemberRolePermissionAdminV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateMemberRolePermissionAdminV1BadRequest) ToJSONString() string {
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

func (o *UpdateMemberRolePermissionAdminV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateMemberRolePermissionAdminV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateMemberRolePermissionAdminV1Unauthorized creates a UpdateMemberRolePermissionAdminV1Unauthorized with default headers values
func NewUpdateMemberRolePermissionAdminV1Unauthorized() *UpdateMemberRolePermissionAdminV1Unauthorized {
	return &UpdateMemberRolePermissionAdminV1Unauthorized{}
}

/*UpdateMemberRolePermissionAdminV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateMemberRolePermissionAdminV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateMemberRolePermissionAdminV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}/permissions][%d] updateMemberRolePermissionAdminV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateMemberRolePermissionAdminV1Unauthorized) ToJSONString() string {
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

func (o *UpdateMemberRolePermissionAdminV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateMemberRolePermissionAdminV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateMemberRolePermissionAdminV1Forbidden creates a UpdateMemberRolePermissionAdminV1Forbidden with default headers values
func NewUpdateMemberRolePermissionAdminV1Forbidden() *UpdateMemberRolePermissionAdminV1Forbidden {
	return &UpdateMemberRolePermissionAdminV1Forbidden{}
}

/*UpdateMemberRolePermissionAdminV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type UpdateMemberRolePermissionAdminV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateMemberRolePermissionAdminV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}/permissions][%d] updateMemberRolePermissionAdminV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateMemberRolePermissionAdminV1Forbidden) ToJSONString() string {
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

func (o *UpdateMemberRolePermissionAdminV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateMemberRolePermissionAdminV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateMemberRolePermissionAdminV1NotFound creates a UpdateMemberRolePermissionAdminV1NotFound with default headers values
func NewUpdateMemberRolePermissionAdminV1NotFound() *UpdateMemberRolePermissionAdminV1NotFound {
	return &UpdateMemberRolePermissionAdminV1NotFound{}
}

/*UpdateMemberRolePermissionAdminV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73232</td><td>member role not found</td></tr></table>
*/
type UpdateMemberRolePermissionAdminV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateMemberRolePermissionAdminV1NotFound) Error() string {
	return fmt.Sprintf("[PUT /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}/permissions][%d] updateMemberRolePermissionAdminV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateMemberRolePermissionAdminV1NotFound) ToJSONString() string {
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

func (o *UpdateMemberRolePermissionAdminV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateMemberRolePermissionAdminV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateMemberRolePermissionAdminV1InternalServerError creates a UpdateMemberRolePermissionAdminV1InternalServerError with default headers values
func NewUpdateMemberRolePermissionAdminV1InternalServerError() *UpdateMemberRolePermissionAdminV1InternalServerError {
	return &UpdateMemberRolePermissionAdminV1InternalServerError{}
}

/*UpdateMemberRolePermissionAdminV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateMemberRolePermissionAdminV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateMemberRolePermissionAdminV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}/permissions][%d] updateMemberRolePermissionAdminV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateMemberRolePermissionAdminV1InternalServerError) ToJSONString() string {
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

func (o *UpdateMemberRolePermissionAdminV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateMemberRolePermissionAdminV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
