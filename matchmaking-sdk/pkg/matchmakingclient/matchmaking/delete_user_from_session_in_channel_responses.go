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

type DeleteUserFromSessionInChannelResponse struct {
	matchmakingclientmodels.ApiResponse

	Error400 *matchmakingclientmodels.ResponseErrorV1
	Error401 *matchmakingclientmodels.ResponseErrorV1
	Error403 *matchmakingclientmodels.ResponseErrorV1
	Error404 *matchmakingclientmodels.ResponseErrorV1
	Error500 *matchmakingclientmodels.ResponseError
}

func (m *DeleteUserFromSessionInChannelResponse) Unpack() *matchmakingclientmodels.ApiError {
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

// DeleteUserFromSessionInChannelReader is a Reader for the DeleteUserFromSessionInChannel structure.
type DeleteUserFromSessionInChannelReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteUserFromSessionInChannelReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDeleteUserFromSessionInChannelOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 204:
		result := NewDeleteUserFromSessionInChannelNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteUserFromSessionInChannelBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteUserFromSessionInChannelUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteUserFromSessionInChannelForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteUserFromSessionInChannelNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteUserFromSessionInChannelInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}/users/{userID} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteUserFromSessionInChannelOK creates a DeleteUserFromSessionInChannelOK with default headers values
func NewDeleteUserFromSessionInChannelOK() *DeleteUserFromSessionInChannelOK {
	return &DeleteUserFromSessionInChannelOK{}
}

/*DeleteUserFromSessionInChannelOK handles this case with default header values.

  Operation succeeded
*/
type DeleteUserFromSessionInChannelOK struct {
}

func (o *DeleteUserFromSessionInChannelOK) Error() string {
	return fmt.Sprintf("[DELETE /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}/users/{userID}][%d] deleteUserFromSessionInChannelOK ", 200)
}

func (o *DeleteUserFromSessionInChannelOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteUserFromSessionInChannelNoContent creates a DeleteUserFromSessionInChannelNoContent with default headers values
func NewDeleteUserFromSessionInChannelNoContent() *DeleteUserFromSessionInChannelNoContent {
	return &DeleteUserFromSessionInChannelNoContent{}
}

/*DeleteUserFromSessionInChannelNoContent handles this case with default header values.

  Operation succeeded
*/
type DeleteUserFromSessionInChannelNoContent struct {
}

func (o *DeleteUserFromSessionInChannelNoContent) Error() string {
	return fmt.Sprintf("[DELETE /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}/users/{userID}][%d] deleteUserFromSessionInChannelNoContent ", 204)
}

func (o *DeleteUserFromSessionInChannelNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteUserFromSessionInChannelBadRequest creates a DeleteUserFromSessionInChannelBadRequest with default headers values
func NewDeleteUserFromSessionInChannelBadRequest() *DeleteUserFromSessionInChannelBadRequest {
	return &DeleteUserFromSessionInChannelBadRequest{}
}

/*DeleteUserFromSessionInChannelBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type DeleteUserFromSessionInChannelBadRequest struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *DeleteUserFromSessionInChannelBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}/users/{userID}][%d] deleteUserFromSessionInChannelBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteUserFromSessionInChannelBadRequest) ToJSONString() string {
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

func (o *DeleteUserFromSessionInChannelBadRequest) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *DeleteUserFromSessionInChannelBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteUserFromSessionInChannelUnauthorized creates a DeleteUserFromSessionInChannelUnauthorized with default headers values
func NewDeleteUserFromSessionInChannelUnauthorized() *DeleteUserFromSessionInChannelUnauthorized {
	return &DeleteUserFromSessionInChannelUnauthorized{}
}

/*DeleteUserFromSessionInChannelUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteUserFromSessionInChannelUnauthorized struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *DeleteUserFromSessionInChannelUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}/users/{userID}][%d] deleteUserFromSessionInChannelUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteUserFromSessionInChannelUnauthorized) ToJSONString() string {
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

func (o *DeleteUserFromSessionInChannelUnauthorized) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *DeleteUserFromSessionInChannelUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteUserFromSessionInChannelForbidden creates a DeleteUserFromSessionInChannelForbidden with default headers values
func NewDeleteUserFromSessionInChannelForbidden() *DeleteUserFromSessionInChannelForbidden {
	return &DeleteUserFromSessionInChannelForbidden{}
}

/*DeleteUserFromSessionInChannelForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20014</td><td>invalid audience</td></tr><tr><td>20015</td><td>insufficient scope</td></tr></table>
*/
type DeleteUserFromSessionInChannelForbidden struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *DeleteUserFromSessionInChannelForbidden) Error() string {
	return fmt.Sprintf("[DELETE /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}/users/{userID}][%d] deleteUserFromSessionInChannelForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteUserFromSessionInChannelForbidden) ToJSONString() string {
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

func (o *DeleteUserFromSessionInChannelForbidden) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *DeleteUserFromSessionInChannelForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteUserFromSessionInChannelNotFound creates a DeleteUserFromSessionInChannelNotFound with default headers values
func NewDeleteUserFromSessionInChannelNotFound() *DeleteUserFromSessionInChannelNotFound {
	return &DeleteUserFromSessionInChannelNotFound{}
}

/*DeleteUserFromSessionInChannelNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>510110</td><td>channel not found</td></tr></table>
*/
type DeleteUserFromSessionInChannelNotFound struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *DeleteUserFromSessionInChannelNotFound) Error() string {
	return fmt.Sprintf("[DELETE /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}/users/{userID}][%d] deleteUserFromSessionInChannelNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteUserFromSessionInChannelNotFound) ToJSONString() string {
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

func (o *DeleteUserFromSessionInChannelNotFound) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *DeleteUserFromSessionInChannelNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteUserFromSessionInChannelInternalServerError creates a DeleteUserFromSessionInChannelInternalServerError with default headers values
func NewDeleteUserFromSessionInChannelInternalServerError() *DeleteUserFromSessionInChannelInternalServerError {
	return &DeleteUserFromSessionInChannelInternalServerError{}
}

/*DeleteUserFromSessionInChannelInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type DeleteUserFromSessionInChannelInternalServerError struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *DeleteUserFromSessionInChannelInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}/users/{userID}][%d] deleteUserFromSessionInChannelInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteUserFromSessionInChannelInternalServerError) ToJSONString() string {
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

func (o *DeleteUserFromSessionInChannelInternalServerError) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteUserFromSessionInChannelInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
