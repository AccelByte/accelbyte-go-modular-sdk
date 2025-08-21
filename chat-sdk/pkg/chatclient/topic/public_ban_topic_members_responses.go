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

type PublicBanTopicMembersResponse struct {
	chatclientmodels.ApiResponse
	Data *chatclientmodels.ModelsPublicBanTopicMembersResponse

	Error400 *chatclientmodels.RestapiErrorResponseBody
	Error401 *chatclientmodels.RestapiErrorResponseBody
	Error403 *chatclientmodels.RestapiErrorResponseBody
	Error500 *chatclientmodels.RestapiErrorResponseBody
}

func (m *PublicBanTopicMembersResponse) Unpack() (*chatclientmodels.ModelsPublicBanTopicMembersResponse, *chatclientmodels.ApiError) {
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

// PublicBanTopicMembersReader is a Reader for the PublicBanTopicMembers structure.
type PublicBanTopicMembersReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicBanTopicMembersReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicBanTopicMembersOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicBanTopicMembersBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicBanTopicMembersUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicBanTopicMembersForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicBanTopicMembersInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /chat/public/namespaces/{namespace}/topic/{topic}/ban-members returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicBanTopicMembersOK creates a PublicBanTopicMembersOK with default headers values
func NewPublicBanTopicMembersOK() *PublicBanTopicMembersOK {
	return &PublicBanTopicMembersOK{}
}

/*
PublicBanTopicMembersOK handles this case with default header values.
*/
type PublicBanTopicMembersOK struct {
	Payload *chatclientmodels.ModelsPublicBanTopicMembersResponse
}

func (o *PublicBanTopicMembersOK) Error() string {
	return fmt.Sprintf("[POST /chat/public/namespaces/{namespace}/topic/{topic}/ban-members][%d] publicBanTopicMembersOK  %+v", 200, o.ToJSONString())
}

func (o *PublicBanTopicMembersOK) ToJSONString() string {
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

func (o *PublicBanTopicMembersOK) GetPayload() *chatclientmodels.ModelsPublicBanTopicMembersResponse {
	return o.Payload
}

func (o *PublicBanTopicMembersOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsPublicBanTopicMembersResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicBanTopicMembersBadRequest creates a PublicBanTopicMembersBadRequest with default headers values
func NewPublicBanTopicMembersBadRequest() *PublicBanTopicMembersBadRequest {
	return &PublicBanTopicMembersBadRequest{}
}

/*
PublicBanTopicMembersBadRequest handles this case with default header values.

	Bad Request
*/
type PublicBanTopicMembersBadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicBanTopicMembersBadRequest) Error() string {
	return fmt.Sprintf("[POST /chat/public/namespaces/{namespace}/topic/{topic}/ban-members][%d] publicBanTopicMembersBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicBanTopicMembersBadRequest) ToJSONString() string {
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

func (o *PublicBanTopicMembersBadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicBanTopicMembersBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicBanTopicMembersUnauthorized creates a PublicBanTopicMembersUnauthorized with default headers values
func NewPublicBanTopicMembersUnauthorized() *PublicBanTopicMembersUnauthorized {
	return &PublicBanTopicMembersUnauthorized{}
}

/*
PublicBanTopicMembersUnauthorized handles this case with default header values.

	Unauthorized
*/
type PublicBanTopicMembersUnauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicBanTopicMembersUnauthorized) Error() string {
	return fmt.Sprintf("[POST /chat/public/namespaces/{namespace}/topic/{topic}/ban-members][%d] publicBanTopicMembersUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicBanTopicMembersUnauthorized) ToJSONString() string {
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

func (o *PublicBanTopicMembersUnauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicBanTopicMembersUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicBanTopicMembersForbidden creates a PublicBanTopicMembersForbidden with default headers values
func NewPublicBanTopicMembersForbidden() *PublicBanTopicMembersForbidden {
	return &PublicBanTopicMembersForbidden{}
}

/*
PublicBanTopicMembersForbidden handles this case with default header values.

	Forbidden
*/
type PublicBanTopicMembersForbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicBanTopicMembersForbidden) Error() string {
	return fmt.Sprintf("[POST /chat/public/namespaces/{namespace}/topic/{topic}/ban-members][%d] publicBanTopicMembersForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicBanTopicMembersForbidden) ToJSONString() string {
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

func (o *PublicBanTopicMembersForbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicBanTopicMembersForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicBanTopicMembersInternalServerError creates a PublicBanTopicMembersInternalServerError with default headers values
func NewPublicBanTopicMembersInternalServerError() *PublicBanTopicMembersInternalServerError {
	return &PublicBanTopicMembersInternalServerError{}
}

/*
PublicBanTopicMembersInternalServerError handles this case with default header values.

	Internal Server Error
*/
type PublicBanTopicMembersInternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *PublicBanTopicMembersInternalServerError) Error() string {
	return fmt.Sprintf("[POST /chat/public/namespaces/{namespace}/topic/{topic}/ban-members][%d] publicBanTopicMembersInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicBanTopicMembersInternalServerError) ToJSONString() string {
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

func (o *PublicBanTopicMembersInternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicBanTopicMembersInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
