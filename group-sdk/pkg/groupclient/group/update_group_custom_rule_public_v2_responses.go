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

type UpdateGroupCustomRulePublicV2Response struct {
	groupclientmodels.ApiResponse
	Data *groupclientmodels.ModelsGroupResponseV1

	Error400 *groupclientmodels.ResponseErrorResponse
	Error401 *groupclientmodels.ResponseErrorResponse
	Error403 *groupclientmodels.ResponseErrorResponse
	Error404 *groupclientmodels.ResponseErrorResponse
	Error500 *groupclientmodels.ResponseErrorResponse
}

func (m *UpdateGroupCustomRulePublicV2Response) Unpack() (*groupclientmodels.ModelsGroupResponseV1, *groupclientmodels.ApiError) {
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

// UpdateGroupCustomRulePublicV2Reader is a Reader for the UpdateGroupCustomRulePublicV2 structure.
type UpdateGroupCustomRulePublicV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateGroupCustomRulePublicV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateGroupCustomRulePublicV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateGroupCustomRulePublicV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateGroupCustomRulePublicV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateGroupCustomRulePublicV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateGroupCustomRulePublicV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateGroupCustomRulePublicV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/custom returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateGroupCustomRulePublicV2OK creates a UpdateGroupCustomRulePublicV2OK with default headers values
func NewUpdateGroupCustomRulePublicV2OK() *UpdateGroupCustomRulePublicV2OK {
	return &UpdateGroupCustomRulePublicV2OK{}
}

/*UpdateGroupCustomRulePublicV2OK handles this case with default header values.

  OK
*/
type UpdateGroupCustomRulePublicV2OK struct {
	Payload *groupclientmodels.ModelsGroupResponseV1
}

func (o *UpdateGroupCustomRulePublicV2OK) Error() string {
	return fmt.Sprintf("[PUT /group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/custom][%d] updateGroupCustomRulePublicV2OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateGroupCustomRulePublicV2OK) ToJSONString() string {
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

func (o *UpdateGroupCustomRulePublicV2OK) GetPayload() *groupclientmodels.ModelsGroupResponseV1 {
	return o.Payload
}

func (o *UpdateGroupCustomRulePublicV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupCustomRulePublicV2BadRequest creates a UpdateGroupCustomRulePublicV2BadRequest with default headers values
func NewUpdateGroupCustomRulePublicV2BadRequest() *UpdateGroupCustomRulePublicV2BadRequest {
	return &UpdateGroupCustomRulePublicV2BadRequest{}
}

/*UpdateGroupCustomRulePublicV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type UpdateGroupCustomRulePublicV2BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupCustomRulePublicV2BadRequest) Error() string {
	return fmt.Sprintf("[PUT /group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/custom][%d] updateGroupCustomRulePublicV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateGroupCustomRulePublicV2BadRequest) ToJSONString() string {
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

func (o *UpdateGroupCustomRulePublicV2BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupCustomRulePublicV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupCustomRulePublicV2Unauthorized creates a UpdateGroupCustomRulePublicV2Unauthorized with default headers values
func NewUpdateGroupCustomRulePublicV2Unauthorized() *UpdateGroupCustomRulePublicV2Unauthorized {
	return &UpdateGroupCustomRulePublicV2Unauthorized{}
}

/*UpdateGroupCustomRulePublicV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateGroupCustomRulePublicV2Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupCustomRulePublicV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/custom][%d] updateGroupCustomRulePublicV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateGroupCustomRulePublicV2Unauthorized) ToJSONString() string {
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

func (o *UpdateGroupCustomRulePublicV2Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupCustomRulePublicV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupCustomRulePublicV2Forbidden creates a UpdateGroupCustomRulePublicV2Forbidden with default headers values
func NewUpdateGroupCustomRulePublicV2Forbidden() *UpdateGroupCustomRulePublicV2Forbidden {
	return &UpdateGroupCustomRulePublicV2Forbidden{}
}

/*UpdateGroupCustomRulePublicV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>73036</td><td>insufficient member role permission</td></tr></table>
*/
type UpdateGroupCustomRulePublicV2Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupCustomRulePublicV2Forbidden) Error() string {
	return fmt.Sprintf("[PUT /group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/custom][%d] updateGroupCustomRulePublicV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateGroupCustomRulePublicV2Forbidden) ToJSONString() string {
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

func (o *UpdateGroupCustomRulePublicV2Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupCustomRulePublicV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupCustomRulePublicV2NotFound creates a UpdateGroupCustomRulePublicV2NotFound with default headers values
func NewUpdateGroupCustomRulePublicV2NotFound() *UpdateGroupCustomRulePublicV2NotFound {
	return &UpdateGroupCustomRulePublicV2NotFound{}
}

/*UpdateGroupCustomRulePublicV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73333</td><td>group not found</td></tr></table>
*/
type UpdateGroupCustomRulePublicV2NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupCustomRulePublicV2NotFound) Error() string {
	return fmt.Sprintf("[PUT /group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/custom][%d] updateGroupCustomRulePublicV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateGroupCustomRulePublicV2NotFound) ToJSONString() string {
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

func (o *UpdateGroupCustomRulePublicV2NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupCustomRulePublicV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupCustomRulePublicV2InternalServerError creates a UpdateGroupCustomRulePublicV2InternalServerError with default headers values
func NewUpdateGroupCustomRulePublicV2InternalServerError() *UpdateGroupCustomRulePublicV2InternalServerError {
	return &UpdateGroupCustomRulePublicV2InternalServerError{}
}

/*UpdateGroupCustomRulePublicV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateGroupCustomRulePublicV2InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupCustomRulePublicV2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/custom][%d] updateGroupCustomRulePublicV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateGroupCustomRulePublicV2InternalServerError) ToJSONString() string {
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

func (o *UpdateGroupCustomRulePublicV2InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupCustomRulePublicV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
