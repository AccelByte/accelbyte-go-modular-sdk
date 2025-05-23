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

type UpdateGroupCustomAttributesPublicV2Response struct {
	groupclientmodels.ApiResponse
	Data *groupclientmodels.ModelsGroupResponseV1

	Error400 *groupclientmodels.ResponseErrorResponse
	Error401 *groupclientmodels.ResponseErrorResponse
	Error403 *groupclientmodels.ResponseErrorResponse
	Error404 *groupclientmodels.ResponseErrorResponse
	Error500 *groupclientmodels.ResponseErrorResponse
}

func (m *UpdateGroupCustomAttributesPublicV2Response) Unpack() (*groupclientmodels.ModelsGroupResponseV1, *groupclientmodels.ApiError) {
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

// UpdateGroupCustomAttributesPublicV2Reader is a Reader for the UpdateGroupCustomAttributesPublicV2 structure.
type UpdateGroupCustomAttributesPublicV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateGroupCustomAttributesPublicV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateGroupCustomAttributesPublicV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateGroupCustomAttributesPublicV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateGroupCustomAttributesPublicV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateGroupCustomAttributesPublicV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateGroupCustomAttributesPublicV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateGroupCustomAttributesPublicV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /group/v2/public/namespaces/{namespace}/groups/{groupId}/attributes/custom returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateGroupCustomAttributesPublicV2OK creates a UpdateGroupCustomAttributesPublicV2OK with default headers values
func NewUpdateGroupCustomAttributesPublicV2OK() *UpdateGroupCustomAttributesPublicV2OK {
	return &UpdateGroupCustomAttributesPublicV2OK{}
}

/*UpdateGroupCustomAttributesPublicV2OK handles this case with default header values.

  OK
*/
type UpdateGroupCustomAttributesPublicV2OK struct {
	Payload *groupclientmodels.ModelsGroupResponseV1
}

func (o *UpdateGroupCustomAttributesPublicV2OK) Error() string {
	return fmt.Sprintf("[PUT /group/v2/public/namespaces/{namespace}/groups/{groupId}/attributes/custom][%d] updateGroupCustomAttributesPublicV2OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateGroupCustomAttributesPublicV2OK) ToJSONString() string {
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

func (o *UpdateGroupCustomAttributesPublicV2OK) GetPayload() *groupclientmodels.ModelsGroupResponseV1 {
	return o.Payload
}

func (o *UpdateGroupCustomAttributesPublicV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupCustomAttributesPublicV2BadRequest creates a UpdateGroupCustomAttributesPublicV2BadRequest with default headers values
func NewUpdateGroupCustomAttributesPublicV2BadRequest() *UpdateGroupCustomAttributesPublicV2BadRequest {
	return &UpdateGroupCustomAttributesPublicV2BadRequest{}
}

/*UpdateGroupCustomAttributesPublicV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdateGroupCustomAttributesPublicV2BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupCustomAttributesPublicV2BadRequest) Error() string {
	return fmt.Sprintf("[PUT /group/v2/public/namespaces/{namespace}/groups/{groupId}/attributes/custom][%d] updateGroupCustomAttributesPublicV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateGroupCustomAttributesPublicV2BadRequest) ToJSONString() string {
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

func (o *UpdateGroupCustomAttributesPublicV2BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupCustomAttributesPublicV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupCustomAttributesPublicV2Unauthorized creates a UpdateGroupCustomAttributesPublicV2Unauthorized with default headers values
func NewUpdateGroupCustomAttributesPublicV2Unauthorized() *UpdateGroupCustomAttributesPublicV2Unauthorized {
	return &UpdateGroupCustomAttributesPublicV2Unauthorized{}
}

/*UpdateGroupCustomAttributesPublicV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateGroupCustomAttributesPublicV2Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupCustomAttributesPublicV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /group/v2/public/namespaces/{namespace}/groups/{groupId}/attributes/custom][%d] updateGroupCustomAttributesPublicV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateGroupCustomAttributesPublicV2Unauthorized) ToJSONString() string {
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

func (o *UpdateGroupCustomAttributesPublicV2Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupCustomAttributesPublicV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupCustomAttributesPublicV2Forbidden creates a UpdateGroupCustomAttributesPublicV2Forbidden with default headers values
func NewUpdateGroupCustomAttributesPublicV2Forbidden() *UpdateGroupCustomAttributesPublicV2Forbidden {
	return &UpdateGroupCustomAttributesPublicV2Forbidden{}
}

/*UpdateGroupCustomAttributesPublicV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>73036</td><td>insufficient member role permission</td></tr></table>
*/
type UpdateGroupCustomAttributesPublicV2Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupCustomAttributesPublicV2Forbidden) Error() string {
	return fmt.Sprintf("[PUT /group/v2/public/namespaces/{namespace}/groups/{groupId}/attributes/custom][%d] updateGroupCustomAttributesPublicV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateGroupCustomAttributesPublicV2Forbidden) ToJSONString() string {
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

func (o *UpdateGroupCustomAttributesPublicV2Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupCustomAttributesPublicV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupCustomAttributesPublicV2NotFound creates a UpdateGroupCustomAttributesPublicV2NotFound with default headers values
func NewUpdateGroupCustomAttributesPublicV2NotFound() *UpdateGroupCustomAttributesPublicV2NotFound {
	return &UpdateGroupCustomAttributesPublicV2NotFound{}
}

/*UpdateGroupCustomAttributesPublicV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73333</td><td>group not found</td></tr></table>
*/
type UpdateGroupCustomAttributesPublicV2NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupCustomAttributesPublicV2NotFound) Error() string {
	return fmt.Sprintf("[PUT /group/v2/public/namespaces/{namespace}/groups/{groupId}/attributes/custom][%d] updateGroupCustomAttributesPublicV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateGroupCustomAttributesPublicV2NotFound) ToJSONString() string {
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

func (o *UpdateGroupCustomAttributesPublicV2NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupCustomAttributesPublicV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupCustomAttributesPublicV2InternalServerError creates a UpdateGroupCustomAttributesPublicV2InternalServerError with default headers values
func NewUpdateGroupCustomAttributesPublicV2InternalServerError() *UpdateGroupCustomAttributesPublicV2InternalServerError {
	return &UpdateGroupCustomAttributesPublicV2InternalServerError{}
}

/*UpdateGroupCustomAttributesPublicV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateGroupCustomAttributesPublicV2InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupCustomAttributesPublicV2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /group/v2/public/namespaces/{namespace}/groups/{groupId}/attributes/custom][%d] updateGroupCustomAttributesPublicV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateGroupCustomAttributesPublicV2InternalServerError) ToJSONString() string {
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

func (o *UpdateGroupCustomAttributesPublicV2InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupCustomAttributesPublicV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
