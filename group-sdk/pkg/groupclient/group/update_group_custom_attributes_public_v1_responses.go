// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package group

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

type UpdateGroupCustomAttributesPublicV1Response struct {
	groupclientmodels.ApiResponse
	Data *groupclientmodels.ModelsGroupResponseV1

	Error400 *groupclientmodels.ResponseErrorResponse
	Error401 *groupclientmodels.ResponseErrorResponse
	Error403 *groupclientmodels.ResponseErrorResponse
	Error404 *groupclientmodels.ResponseErrorResponse
	Error500 *groupclientmodels.ResponseErrorResponse
}

func (m *UpdateGroupCustomAttributesPublicV1Response) Unpack() (*groupclientmodels.ModelsGroupResponseV1, *groupclientmodels.ApiError) {
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

// UpdateGroupCustomAttributesPublicV1Reader is a Reader for the UpdateGroupCustomAttributesPublicV1 structure.
type UpdateGroupCustomAttributesPublicV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateGroupCustomAttributesPublicV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateGroupCustomAttributesPublicV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateGroupCustomAttributesPublicV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateGroupCustomAttributesPublicV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateGroupCustomAttributesPublicV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateGroupCustomAttributesPublicV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateGroupCustomAttributesPublicV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /group/v1/public/namespaces/{namespace}/groups/{groupId}/attributes/custom returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateGroupCustomAttributesPublicV1OK creates a UpdateGroupCustomAttributesPublicV1OK with default headers values
func NewUpdateGroupCustomAttributesPublicV1OK() *UpdateGroupCustomAttributesPublicV1OK {
	return &UpdateGroupCustomAttributesPublicV1OK{}
}

/*UpdateGroupCustomAttributesPublicV1OK handles this case with default header values.

  OK
*/
type UpdateGroupCustomAttributesPublicV1OK struct {
	Payload *groupclientmodels.ModelsGroupResponseV1
}

func (o *UpdateGroupCustomAttributesPublicV1OK) Error() string {
	return fmt.Sprintf("[PUT /group/v1/public/namespaces/{namespace}/groups/{groupId}/attributes/custom][%d] updateGroupCustomAttributesPublicV1OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateGroupCustomAttributesPublicV1OK) ToJSONString() string {
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

func (o *UpdateGroupCustomAttributesPublicV1OK) GetPayload() *groupclientmodels.ModelsGroupResponseV1 {
	return o.Payload
}

func (o *UpdateGroupCustomAttributesPublicV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsGroupResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateGroupCustomAttributesPublicV1BadRequest creates a UpdateGroupCustomAttributesPublicV1BadRequest with default headers values
func NewUpdateGroupCustomAttributesPublicV1BadRequest() *UpdateGroupCustomAttributesPublicV1BadRequest {
	return &UpdateGroupCustomAttributesPublicV1BadRequest{}
}

/*UpdateGroupCustomAttributesPublicV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdateGroupCustomAttributesPublicV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupCustomAttributesPublicV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /group/v1/public/namespaces/{namespace}/groups/{groupId}/attributes/custom][%d] updateGroupCustomAttributesPublicV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateGroupCustomAttributesPublicV1BadRequest) ToJSONString() string {
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

func (o *UpdateGroupCustomAttributesPublicV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupCustomAttributesPublicV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupCustomAttributesPublicV1Unauthorized creates a UpdateGroupCustomAttributesPublicV1Unauthorized with default headers values
func NewUpdateGroupCustomAttributesPublicV1Unauthorized() *UpdateGroupCustomAttributesPublicV1Unauthorized {
	return &UpdateGroupCustomAttributesPublicV1Unauthorized{}
}

/*UpdateGroupCustomAttributesPublicV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateGroupCustomAttributesPublicV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupCustomAttributesPublicV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /group/v1/public/namespaces/{namespace}/groups/{groupId}/attributes/custom][%d] updateGroupCustomAttributesPublicV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateGroupCustomAttributesPublicV1Unauthorized) ToJSONString() string {
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

func (o *UpdateGroupCustomAttributesPublicV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupCustomAttributesPublicV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupCustomAttributesPublicV1Forbidden creates a UpdateGroupCustomAttributesPublicV1Forbidden with default headers values
func NewUpdateGroupCustomAttributesPublicV1Forbidden() *UpdateGroupCustomAttributesPublicV1Forbidden {
	return &UpdateGroupCustomAttributesPublicV1Forbidden{}
}

/*UpdateGroupCustomAttributesPublicV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>73036</td><td>insufficient member role permission</td></tr></table>
*/
type UpdateGroupCustomAttributesPublicV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupCustomAttributesPublicV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /group/v1/public/namespaces/{namespace}/groups/{groupId}/attributes/custom][%d] updateGroupCustomAttributesPublicV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateGroupCustomAttributesPublicV1Forbidden) ToJSONString() string {
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

func (o *UpdateGroupCustomAttributesPublicV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupCustomAttributesPublicV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupCustomAttributesPublicV1NotFound creates a UpdateGroupCustomAttributesPublicV1NotFound with default headers values
func NewUpdateGroupCustomAttributesPublicV1NotFound() *UpdateGroupCustomAttributesPublicV1NotFound {
	return &UpdateGroupCustomAttributesPublicV1NotFound{}
}

/*UpdateGroupCustomAttributesPublicV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73333</td><td>group not found</td></tr></table>
*/
type UpdateGroupCustomAttributesPublicV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupCustomAttributesPublicV1NotFound) Error() string {
	return fmt.Sprintf("[PUT /group/v1/public/namespaces/{namespace}/groups/{groupId}/attributes/custom][%d] updateGroupCustomAttributesPublicV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateGroupCustomAttributesPublicV1NotFound) ToJSONString() string {
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

func (o *UpdateGroupCustomAttributesPublicV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupCustomAttributesPublicV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupCustomAttributesPublicV1InternalServerError creates a UpdateGroupCustomAttributesPublicV1InternalServerError with default headers values
func NewUpdateGroupCustomAttributesPublicV1InternalServerError() *UpdateGroupCustomAttributesPublicV1InternalServerError {
	return &UpdateGroupCustomAttributesPublicV1InternalServerError{}
}

/*UpdateGroupCustomAttributesPublicV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateGroupCustomAttributesPublicV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupCustomAttributesPublicV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /group/v1/public/namespaces/{namespace}/groups/{groupId}/attributes/custom][%d] updateGroupCustomAttributesPublicV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateGroupCustomAttributesPublicV1InternalServerError) ToJSONString() string {
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

func (o *UpdateGroupCustomAttributesPublicV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupCustomAttributesPublicV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
