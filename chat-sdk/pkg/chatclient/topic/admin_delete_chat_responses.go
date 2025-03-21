// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package topic

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg/chatclientmodels"
)

type AdminDeleteChatResponse struct {
	chatclientmodels.ApiResponse

	Error400 *chatclientmodels.RestapiErrorResponseBody
	Error401 *chatclientmodels.RestapiErrorResponseBody
	Error403 *chatclientmodels.RestapiErrorResponseBody
	Error500 *chatclientmodels.RestapiErrorResponseBody
}

func (m *AdminDeleteChatResponse) Unpack() *chatclientmodels.ApiError {
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

		case 500:
			e, err := m.Error500.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		default:
			return &chatclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// AdminDeleteChatReader is a Reader for the AdminDeleteChat structure.
type AdminDeleteChatReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteChatReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteChatNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteChatBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteChatUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteChatForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteChatInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /chat/admin/namespaces/{namespace}/topic/{topic}/chats/{chatId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteChatNoContent creates a AdminDeleteChatNoContent with default headers values
func NewAdminDeleteChatNoContent() *AdminDeleteChatNoContent {
	return &AdminDeleteChatNoContent{}
}

/*AdminDeleteChatNoContent handles this case with default header values.

  No Content
*/
type AdminDeleteChatNoContent struct {
}

func (o *AdminDeleteChatNoContent) Error() string {
	return fmt.Sprintf("[DELETE /chat/admin/namespaces/{namespace}/topic/{topic}/chats/{chatId}][%d] adminDeleteChatNoContent ", 204)
}

func (o *AdminDeleteChatNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteChatBadRequest creates a AdminDeleteChatBadRequest with default headers values
func NewAdminDeleteChatBadRequest() *AdminDeleteChatBadRequest {
	return &AdminDeleteChatBadRequest{}
}

/*AdminDeleteChatBadRequest handles this case with default header values.

  Bad Request
*/
type AdminDeleteChatBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteChatBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /chat/admin/namespaces/{namespace}/topic/{topic}/chats/{chatId}][%d] adminDeleteChatBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeleteChatBadRequest) ToJSONString() string {
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

func (o *AdminDeleteChatBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteChatBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteChatUnauthorized creates a AdminDeleteChatUnauthorized with default headers values
func NewAdminDeleteChatUnauthorized() *AdminDeleteChatUnauthorized {
	return &AdminDeleteChatUnauthorized{}
}

/*AdminDeleteChatUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminDeleteChatUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteChatUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /chat/admin/namespaces/{namespace}/topic/{topic}/chats/{chatId}][%d] adminDeleteChatUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteChatUnauthorized) ToJSONString() string {
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

func (o *AdminDeleteChatUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteChatUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteChatForbidden creates a AdminDeleteChatForbidden with default headers values
func NewAdminDeleteChatForbidden() *AdminDeleteChatForbidden {
	return &AdminDeleteChatForbidden{}
}

/*AdminDeleteChatForbidden handles this case with default header values.

  Forbidden
*/
type AdminDeleteChatForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteChatForbidden) Error() string {
	return fmt.Sprintf("[DELETE /chat/admin/namespaces/{namespace}/topic/{topic}/chats/{chatId}][%d] adminDeleteChatForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteChatForbidden) ToJSONString() string {
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

func (o *AdminDeleteChatForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteChatForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteChatInternalServerError creates a AdminDeleteChatInternalServerError with default headers values
func NewAdminDeleteChatInternalServerError() *AdminDeleteChatInternalServerError {
	return &AdminDeleteChatInternalServerError{}
}

/*AdminDeleteChatInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminDeleteChatInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteChatInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /chat/admin/namespaces/{namespace}/topic/{topic}/chats/{chatId}][%d] adminDeleteChatInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteChatInternalServerError) ToJSONString() string {
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

func (o *AdminDeleteChatInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteChatInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
