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

type UpdateSingleGroupV1Response struct {
	groupclientmodels.ApiResponse
	Data *groupclientmodels.ModelsGroupResponseV1

	Error400 *groupclientmodels.ResponseErrorResponse
	Error401 *groupclientmodels.ResponseErrorResponse
	Error403 *groupclientmodels.ResponseErrorResponse
	Error404 *groupclientmodels.ResponseErrorResponse
	Error500 *groupclientmodels.ResponseErrorResponse
}

func (m *UpdateSingleGroupV1Response) Unpack() (*groupclientmodels.ModelsGroupResponseV1, *groupclientmodels.ApiError) {
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

// UpdateSingleGroupV1Reader is a Reader for the UpdateSingleGroupV1 structure.
type UpdateSingleGroupV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateSingleGroupV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateSingleGroupV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateSingleGroupV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateSingleGroupV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateSingleGroupV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateSingleGroupV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateSingleGroupV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /group/v1/public/namespaces/{namespace}/groups/{groupId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateSingleGroupV1OK creates a UpdateSingleGroupV1OK with default headers values
func NewUpdateSingleGroupV1OK() *UpdateSingleGroupV1OK {
	return &UpdateSingleGroupV1OK{}
}

/*UpdateSingleGroupV1OK handles this case with default header values.

  OK
*/
type UpdateSingleGroupV1OK struct {
	Payload *groupclientmodels.ModelsGroupResponseV1
}

func (o *UpdateSingleGroupV1OK) Error() string {
	return fmt.Sprintf("[PUT /group/v1/public/namespaces/{namespace}/groups/{groupId}][%d] updateSingleGroupV1OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateSingleGroupV1OK) ToJSONString() string {
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

func (o *UpdateSingleGroupV1OK) GetPayload() *groupclientmodels.ModelsGroupResponseV1 {
	return o.Payload
}

func (o *UpdateSingleGroupV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateSingleGroupV1BadRequest creates a UpdateSingleGroupV1BadRequest with default headers values
func NewUpdateSingleGroupV1BadRequest() *UpdateSingleGroupV1BadRequest {
	return &UpdateSingleGroupV1BadRequest{}
}

/*UpdateSingleGroupV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdateSingleGroupV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateSingleGroupV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /group/v1/public/namespaces/{namespace}/groups/{groupId}][%d] updateSingleGroupV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateSingleGroupV1BadRequest) ToJSONString() string {
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

func (o *UpdateSingleGroupV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateSingleGroupV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateSingleGroupV1Unauthorized creates a UpdateSingleGroupV1Unauthorized with default headers values
func NewUpdateSingleGroupV1Unauthorized() *UpdateSingleGroupV1Unauthorized {
	return &UpdateSingleGroupV1Unauthorized{}
}

/*UpdateSingleGroupV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateSingleGroupV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateSingleGroupV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /group/v1/public/namespaces/{namespace}/groups/{groupId}][%d] updateSingleGroupV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateSingleGroupV1Unauthorized) ToJSONString() string {
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

func (o *UpdateSingleGroupV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateSingleGroupV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateSingleGroupV1Forbidden creates a UpdateSingleGroupV1Forbidden with default headers values
func NewUpdateSingleGroupV1Forbidden() *UpdateSingleGroupV1Forbidden {
	return &UpdateSingleGroupV1Forbidden{}
}

/*UpdateSingleGroupV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>73036</td><td>insufficient member role permission</td></tr></table>
*/
type UpdateSingleGroupV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateSingleGroupV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /group/v1/public/namespaces/{namespace}/groups/{groupId}][%d] updateSingleGroupV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateSingleGroupV1Forbidden) ToJSONString() string {
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

func (o *UpdateSingleGroupV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateSingleGroupV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateSingleGroupV1NotFound creates a UpdateSingleGroupV1NotFound with default headers values
func NewUpdateSingleGroupV1NotFound() *UpdateSingleGroupV1NotFound {
	return &UpdateSingleGroupV1NotFound{}
}

/*UpdateSingleGroupV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73333</td><td>group not found</td></tr></table>
*/
type UpdateSingleGroupV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateSingleGroupV1NotFound) Error() string {
	return fmt.Sprintf("[PUT /group/v1/public/namespaces/{namespace}/groups/{groupId}][%d] updateSingleGroupV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateSingleGroupV1NotFound) ToJSONString() string {
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

func (o *UpdateSingleGroupV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateSingleGroupV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateSingleGroupV1InternalServerError creates a UpdateSingleGroupV1InternalServerError with default headers values
func NewUpdateSingleGroupV1InternalServerError() *UpdateSingleGroupV1InternalServerError {
	return &UpdateSingleGroupV1InternalServerError{}
}

/*UpdateSingleGroupV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateSingleGroupV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateSingleGroupV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /group/v1/public/namespaces/{namespace}/groups/{groupId}][%d] updateSingleGroupV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateSingleGroupV1InternalServerError) ToJSONString() string {
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

func (o *UpdateSingleGroupV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateSingleGroupV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
