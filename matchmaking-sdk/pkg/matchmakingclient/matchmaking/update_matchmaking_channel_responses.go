// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchmaking

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
)

type UpdateMatchmakingChannelResponse struct {
	matchmakingclientmodels.ApiResponse

	Error400 *matchmakingclientmodels.ResponseErrorV1
	Error401 *matchmakingclientmodels.ResponseErrorV1
	Error403 *matchmakingclientmodels.ResponseErrorV1
	Error404 *matchmakingclientmodels.ResponseErrorV1
	Error500 *matchmakingclientmodels.ResponseError
}

func (m *UpdateMatchmakingChannelResponse) Unpack() *matchmakingclientmodels.ApiError {
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
			return &matchmakingclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// UpdateMatchmakingChannelReader is a Reader for the UpdateMatchmakingChannel structure.
type UpdateMatchmakingChannelReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateMatchmakingChannelReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewUpdateMatchmakingChannelNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateMatchmakingChannelBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateMatchmakingChannelUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateMatchmakingChannelForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateMatchmakingChannelNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateMatchmakingChannelInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateMatchmakingChannelNoContent creates a UpdateMatchmakingChannelNoContent with default headers values
func NewUpdateMatchmakingChannelNoContent() *UpdateMatchmakingChannelNoContent {
	return &UpdateMatchmakingChannelNoContent{}
}

/*UpdateMatchmakingChannelNoContent handles this case with default header values.

  Operation succeeded
*/
type UpdateMatchmakingChannelNoContent struct {
}

func (o *UpdateMatchmakingChannelNoContent) Error() string {
	return fmt.Sprintf("[PATCH /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}][%d] updateMatchmakingChannelNoContent ", 204)
}

func (o *UpdateMatchmakingChannelNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUpdateMatchmakingChannelBadRequest creates a UpdateMatchmakingChannelBadRequest with default headers values
func NewUpdateMatchmakingChannelBadRequest() *UpdateMatchmakingChannelBadRequest {
	return &UpdateMatchmakingChannelBadRequest{}
}

/*UpdateMatchmakingChannelBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type UpdateMatchmakingChannelBadRequest struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *UpdateMatchmakingChannelBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}][%d] updateMatchmakingChannelBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateMatchmakingChannelBadRequest) ToJSONString() string {
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

func (o *UpdateMatchmakingChannelBadRequest) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *UpdateMatchmakingChannelBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateMatchmakingChannelUnauthorized creates a UpdateMatchmakingChannelUnauthorized with default headers values
func NewUpdateMatchmakingChannelUnauthorized() *UpdateMatchmakingChannelUnauthorized {
	return &UpdateMatchmakingChannelUnauthorized{}
}

/*UpdateMatchmakingChannelUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateMatchmakingChannelUnauthorized struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *UpdateMatchmakingChannelUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}][%d] updateMatchmakingChannelUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateMatchmakingChannelUnauthorized) ToJSONString() string {
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

func (o *UpdateMatchmakingChannelUnauthorized) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *UpdateMatchmakingChannelUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateMatchmakingChannelForbidden creates a UpdateMatchmakingChannelForbidden with default headers values
func NewUpdateMatchmakingChannelForbidden() *UpdateMatchmakingChannelForbidden {
	return &UpdateMatchmakingChannelForbidden{}
}

/*UpdateMatchmakingChannelForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20014</td><td>invalid audience</td></tr><tr><td>20015</td><td>insufficient scope</td></tr></table>
*/
type UpdateMatchmakingChannelForbidden struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *UpdateMatchmakingChannelForbidden) Error() string {
	return fmt.Sprintf("[PATCH /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}][%d] updateMatchmakingChannelForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateMatchmakingChannelForbidden) ToJSONString() string {
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

func (o *UpdateMatchmakingChannelForbidden) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *UpdateMatchmakingChannelForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateMatchmakingChannelNotFound creates a UpdateMatchmakingChannelNotFound with default headers values
func NewUpdateMatchmakingChannelNotFound() *UpdateMatchmakingChannelNotFound {
	return &UpdateMatchmakingChannelNotFound{}
}

/*UpdateMatchmakingChannelNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>510110</td><td>channel not found</td></tr></table>
*/
type UpdateMatchmakingChannelNotFound struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *UpdateMatchmakingChannelNotFound) Error() string {
	return fmt.Sprintf("[PATCH /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}][%d] updateMatchmakingChannelNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateMatchmakingChannelNotFound) ToJSONString() string {
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

func (o *UpdateMatchmakingChannelNotFound) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *UpdateMatchmakingChannelNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateMatchmakingChannelInternalServerError creates a UpdateMatchmakingChannelInternalServerError with default headers values
func NewUpdateMatchmakingChannelInternalServerError() *UpdateMatchmakingChannelInternalServerError {
	return &UpdateMatchmakingChannelInternalServerError{}
}

/*UpdateMatchmakingChannelInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type UpdateMatchmakingChannelInternalServerError struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *UpdateMatchmakingChannelInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}][%d] updateMatchmakingChannelInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateMatchmakingChannelInternalServerError) ToJSONString() string {
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

func (o *UpdateMatchmakingChannelInternalServerError) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateMatchmakingChannelInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
