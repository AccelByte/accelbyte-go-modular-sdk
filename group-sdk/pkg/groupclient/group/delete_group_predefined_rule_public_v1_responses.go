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

type DeleteGroupPredefinedRulePublicV1Response struct {
	groupclientmodels.ApiResponse

	Error400 *groupclientmodels.ResponseErrorResponse
	Error401 *groupclientmodels.ResponseErrorResponse
	Error403 *groupclientmodels.ResponseErrorResponse
	Error404 *groupclientmodels.ResponseErrorResponse
	Error500 *groupclientmodels.ResponseErrorResponse
}

func (m *DeleteGroupPredefinedRulePublicV1Response) Unpack() *groupclientmodels.ApiError {
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

// DeleteGroupPredefinedRulePublicV1Reader is a Reader for the DeleteGroupPredefinedRulePublicV1 structure.
type DeleteGroupPredefinedRulePublicV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteGroupPredefinedRulePublicV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteGroupPredefinedRulePublicV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteGroupPredefinedRulePublicV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteGroupPredefinedRulePublicV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteGroupPredefinedRulePublicV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteGroupPredefinedRulePublicV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteGroupPredefinedRulePublicV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteGroupPredefinedRulePublicV1NoContent creates a DeleteGroupPredefinedRulePublicV1NoContent with default headers values
func NewDeleteGroupPredefinedRulePublicV1NoContent() *DeleteGroupPredefinedRulePublicV1NoContent {
	return &DeleteGroupPredefinedRulePublicV1NoContent{}
}

/*DeleteGroupPredefinedRulePublicV1NoContent handles this case with default header values.

  No Content
*/
type DeleteGroupPredefinedRulePublicV1NoContent struct {
}

func (o *DeleteGroupPredefinedRulePublicV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}][%d] deleteGroupPredefinedRulePublicV1NoContent ", 204)
}

func (o *DeleteGroupPredefinedRulePublicV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteGroupPredefinedRulePublicV1BadRequest creates a DeleteGroupPredefinedRulePublicV1BadRequest with default headers values
func NewDeleteGroupPredefinedRulePublicV1BadRequest() *DeleteGroupPredefinedRulePublicV1BadRequest {
	return &DeleteGroupPredefinedRulePublicV1BadRequest{}
}

/*DeleteGroupPredefinedRulePublicV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type DeleteGroupPredefinedRulePublicV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteGroupPredefinedRulePublicV1BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}][%d] deleteGroupPredefinedRulePublicV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteGroupPredefinedRulePublicV1BadRequest) ToJSONString() string {
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

func (o *DeleteGroupPredefinedRulePublicV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteGroupPredefinedRulePublicV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteGroupPredefinedRulePublicV1Unauthorized creates a DeleteGroupPredefinedRulePublicV1Unauthorized with default headers values
func NewDeleteGroupPredefinedRulePublicV1Unauthorized() *DeleteGroupPredefinedRulePublicV1Unauthorized {
	return &DeleteGroupPredefinedRulePublicV1Unauthorized{}
}

/*DeleteGroupPredefinedRulePublicV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteGroupPredefinedRulePublicV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteGroupPredefinedRulePublicV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}][%d] deleteGroupPredefinedRulePublicV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteGroupPredefinedRulePublicV1Unauthorized) ToJSONString() string {
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

func (o *DeleteGroupPredefinedRulePublicV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteGroupPredefinedRulePublicV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteGroupPredefinedRulePublicV1Forbidden creates a DeleteGroupPredefinedRulePublicV1Forbidden with default headers values
func NewDeleteGroupPredefinedRulePublicV1Forbidden() *DeleteGroupPredefinedRulePublicV1Forbidden {
	return &DeleteGroupPredefinedRulePublicV1Forbidden{}
}

/*DeleteGroupPredefinedRulePublicV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>73036</td><td>insufficient member role permission</td></tr></table>
*/
type DeleteGroupPredefinedRulePublicV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteGroupPredefinedRulePublicV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}][%d] deleteGroupPredefinedRulePublicV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteGroupPredefinedRulePublicV1Forbidden) ToJSONString() string {
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

func (o *DeleteGroupPredefinedRulePublicV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteGroupPredefinedRulePublicV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteGroupPredefinedRulePublicV1NotFound creates a DeleteGroupPredefinedRulePublicV1NotFound with default headers values
func NewDeleteGroupPredefinedRulePublicV1NotFound() *DeleteGroupPredefinedRulePublicV1NotFound {
	return &DeleteGroupPredefinedRulePublicV1NotFound{}
}

/*DeleteGroupPredefinedRulePublicV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73333</td><td>group not found</td></tr></table>
*/
type DeleteGroupPredefinedRulePublicV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteGroupPredefinedRulePublicV1NotFound) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}][%d] deleteGroupPredefinedRulePublicV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteGroupPredefinedRulePublicV1NotFound) ToJSONString() string {
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

func (o *DeleteGroupPredefinedRulePublicV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteGroupPredefinedRulePublicV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteGroupPredefinedRulePublicV1InternalServerError creates a DeleteGroupPredefinedRulePublicV1InternalServerError with default headers values
func NewDeleteGroupPredefinedRulePublicV1InternalServerError() *DeleteGroupPredefinedRulePublicV1InternalServerError {
	return &DeleteGroupPredefinedRulePublicV1InternalServerError{}
}

/*DeleteGroupPredefinedRulePublicV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteGroupPredefinedRulePublicV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteGroupPredefinedRulePublicV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}][%d] deleteGroupPredefinedRulePublicV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteGroupPredefinedRulePublicV1InternalServerError) ToJSONString() string {
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

func (o *DeleteGroupPredefinedRulePublicV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteGroupPredefinedRulePublicV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
