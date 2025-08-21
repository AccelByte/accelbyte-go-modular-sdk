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

type AdminSendChatResponse struct {
	chatclientmodels.ApiResponse
	Data []*chatclientmodels.ModelsChatMessageResponse

	Error400 *chatclientmodels.RestapiErrorResponseBody
	Error401 *chatclientmodels.RestapiErrorResponseBody
	Error403 *chatclientmodels.RestapiErrorResponseBody
	Error500 *chatclientmodels.RestapiErrorResponseBody
}

func (m *AdminSendChatResponse) Unpack() ([]*chatclientmodels.ModelsChatMessageResponse, *chatclientmodels.ApiError) {
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

		case 500:
			e, err := m.Error500.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		default:
			return nil, &chatclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// AdminSendChatReader is a Reader for the AdminSendChat structure.
type AdminSendChatReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminSendChatReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminSendChatOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminSendChatBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminSendChatUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminSendChatForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminSendChatInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /chat/admin/namespaces/{namespace}/topic/{topic}/chats returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminSendChatOK creates a AdminSendChatOK with default headers values
func NewAdminSendChatOK() *AdminSendChatOK {
	return &AdminSendChatOK{}
}

/*
AdminSendChatOK handles this case with default header values.

	OK
*/
type AdminSendChatOK struct {
	Payload []*chatclientmodels.ModelsChatMessageResponse
}

func (o *AdminSendChatOK) Error() string {
	return fmt.Sprintf("[POST /chat/admin/namespaces/{namespace}/topic/{topic}/chats][%d] adminSendChatOK  %+v", 200, o.ToJSONString())
}

func (o *AdminSendChatOK) ToJSONString() string {
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

func (o *AdminSendChatOK) GetPayload() []*chatclientmodels.ModelsChatMessageResponse {
	return o.Payload
}

func (o *AdminSendChatOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminSendChatBadRequest creates a AdminSendChatBadRequest with default headers values
func NewAdminSendChatBadRequest() *AdminSendChatBadRequest {
	return &AdminSendChatBadRequest{}
}

/*
AdminSendChatBadRequest handles this case with default header values.

	Bad Request
*/
type AdminSendChatBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminSendChatBadRequest) Error() string {
	return fmt.Sprintf("[POST /chat/admin/namespaces/{namespace}/topic/{topic}/chats][%d] adminSendChatBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminSendChatBadRequest) ToJSONString() string {
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

func (o *AdminSendChatBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminSendChatBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSendChatUnauthorized creates a AdminSendChatUnauthorized with default headers values
func NewAdminSendChatUnauthorized() *AdminSendChatUnauthorized {
	return &AdminSendChatUnauthorized{}
}

/*
AdminSendChatUnauthorized handles this case with default header values.

	Unauthorized
*/
type AdminSendChatUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminSendChatUnauthorized) Error() string {
	return fmt.Sprintf("[POST /chat/admin/namespaces/{namespace}/topic/{topic}/chats][%d] adminSendChatUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminSendChatUnauthorized) ToJSONString() string {
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

func (o *AdminSendChatUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminSendChatUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSendChatForbidden creates a AdminSendChatForbidden with default headers values
func NewAdminSendChatForbidden() *AdminSendChatForbidden {
	return &AdminSendChatForbidden{}
}

/*
AdminSendChatForbidden handles this case with default header values.

	Forbidden
*/
type AdminSendChatForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminSendChatForbidden) Error() string {
	return fmt.Sprintf("[POST /chat/admin/namespaces/{namespace}/topic/{topic}/chats][%d] adminSendChatForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminSendChatForbidden) ToJSONString() string {
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

func (o *AdminSendChatForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminSendChatForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSendChatInternalServerError creates a AdminSendChatInternalServerError with default headers values
func NewAdminSendChatInternalServerError() *AdminSendChatInternalServerError {
	return &AdminSendChatInternalServerError{}
}

/*
AdminSendChatInternalServerError handles this case with default header values.

	Internal Server Error
*/
type AdminSendChatInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminSendChatInternalServerError) Error() string {
	return fmt.Sprintf("[POST /chat/admin/namespaces/{namespace}/topic/{topic}/chats][%d] adminSendChatInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminSendChatInternalServerError) ToJSONString() string {
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

func (o *AdminSendChatInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminSendChatInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
