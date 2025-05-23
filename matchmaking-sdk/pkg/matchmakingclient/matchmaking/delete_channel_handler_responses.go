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

type DeleteChannelHandlerResponse struct {
	matchmakingclientmodels.ApiResponse

	Error401 *matchmakingclientmodels.ResponseError
	Error403 *matchmakingclientmodels.ResponseError
	Error500 *matchmakingclientmodels.ResponseError
}

func (m *DeleteChannelHandlerResponse) Unpack() *matchmakingclientmodels.ApiError {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

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

// DeleteChannelHandlerReader is a Reader for the DeleteChannelHandler structure.
type DeleteChannelHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteChannelHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteChannelHandlerNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteChannelHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteChannelHandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteChannelHandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /matchmaking/namespaces/{namespace}/channels/{channel} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteChannelHandlerNoContent creates a DeleteChannelHandlerNoContent with default headers values
func NewDeleteChannelHandlerNoContent() *DeleteChannelHandlerNoContent {
	return &DeleteChannelHandlerNoContent{}
}

/*DeleteChannelHandlerNoContent handles this case with default header values.

  No Content
*/
type DeleteChannelHandlerNoContent struct {
}

func (o *DeleteChannelHandlerNoContent) Error() string {
	return fmt.Sprintf("[DELETE /matchmaking/namespaces/{namespace}/channels/{channel}][%d] deleteChannelHandlerNoContent ", 204)
}

func (o *DeleteChannelHandlerNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteChannelHandlerUnauthorized creates a DeleteChannelHandlerUnauthorized with default headers values
func NewDeleteChannelHandlerUnauthorized() *DeleteChannelHandlerUnauthorized {
	return &DeleteChannelHandlerUnauthorized{}
}

/*DeleteChannelHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteChannelHandlerUnauthorized struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *DeleteChannelHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /matchmaking/namespaces/{namespace}/channels/{channel}][%d] deleteChannelHandlerUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteChannelHandlerUnauthorized) ToJSONString() string {
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

func (o *DeleteChannelHandlerUnauthorized) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteChannelHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteChannelHandlerForbidden creates a DeleteChannelHandlerForbidden with default headers values
func NewDeleteChannelHandlerForbidden() *DeleteChannelHandlerForbidden {
	return &DeleteChannelHandlerForbidden{}
}

/*DeleteChannelHandlerForbidden handles this case with default header values.

  Forbidden
*/
type DeleteChannelHandlerForbidden struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *DeleteChannelHandlerForbidden) Error() string {
	return fmt.Sprintf("[DELETE /matchmaking/namespaces/{namespace}/channels/{channel}][%d] deleteChannelHandlerForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteChannelHandlerForbidden) ToJSONString() string {
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

func (o *DeleteChannelHandlerForbidden) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteChannelHandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteChannelHandlerInternalServerError creates a DeleteChannelHandlerInternalServerError with default headers values
func NewDeleteChannelHandlerInternalServerError() *DeleteChannelHandlerInternalServerError {
	return &DeleteChannelHandlerInternalServerError{}
}

/*DeleteChannelHandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteChannelHandlerInternalServerError struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *DeleteChannelHandlerInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /matchmaking/namespaces/{namespace}/channels/{channel}][%d] deleteChannelHandlerInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteChannelHandlerInternalServerError) ToJSONString() string {
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

func (o *DeleteChannelHandlerInternalServerError) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteChannelHandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
