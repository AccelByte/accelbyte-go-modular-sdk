// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package chat

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// PersonalChatHistoryReader is a Reader for the PersonalChatHistory structure.
type PersonalChatHistoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PersonalChatHistoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPersonalChatHistoryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPersonalChatHistoryBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPersonalChatHistoryUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPersonalChatHistoryForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPersonalChatHistoryNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPersonalChatHistoryInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/chat/namespaces/{namespace}/users/{userId}/friend/{friendId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPersonalChatHistoryOK creates a PersonalChatHistoryOK with default headers values
func NewPersonalChatHistoryOK() *PersonalChatHistoryOK {
	return &PersonalChatHistoryOK{}
}

/*PersonalChatHistoryOK handles this case with default header values.

  OK
*/
type PersonalChatHistoryOK struct {
	Payload []*lobbyclientmodels.ModelChatMessageResponse
}

func (o *PersonalChatHistoryOK) Error() string {
	return fmt.Sprintf("[GET /lobby/chat/namespaces/{namespace}/users/{userId}/friend/{friendId}][%d] personalChatHistoryOK  %+v", 200, o.ToJSONString())
}

func (o *PersonalChatHistoryOK) ToJSONString() string {
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

func (o *PersonalChatHistoryOK) GetPayload() []*lobbyclientmodels.ModelChatMessageResponse {
	return o.Payload
}

func (o *PersonalChatHistoryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPersonalChatHistoryBadRequest creates a PersonalChatHistoryBadRequest with default headers values
func NewPersonalChatHistoryBadRequest() *PersonalChatHistoryBadRequest {
	return &PersonalChatHistoryBadRequest{}
}

/*PersonalChatHistoryBadRequest handles this case with default header values.

  Bad Request
*/
type PersonalChatHistoryBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PersonalChatHistoryBadRequest) Error() string {
	return fmt.Sprintf("[GET /lobby/chat/namespaces/{namespace}/users/{userId}/friend/{friendId}][%d] personalChatHistoryBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PersonalChatHistoryBadRequest) ToJSONString() string {
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

func (o *PersonalChatHistoryBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PersonalChatHistoryBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPersonalChatHistoryUnauthorized creates a PersonalChatHistoryUnauthorized with default headers values
func NewPersonalChatHistoryUnauthorized() *PersonalChatHistoryUnauthorized {
	return &PersonalChatHistoryUnauthorized{}
}

/*PersonalChatHistoryUnauthorized handles this case with default header values.

  Unauthorized
*/
type PersonalChatHistoryUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PersonalChatHistoryUnauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/chat/namespaces/{namespace}/users/{userId}/friend/{friendId}][%d] personalChatHistoryUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PersonalChatHistoryUnauthorized) ToJSONString() string {
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

func (o *PersonalChatHistoryUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PersonalChatHistoryUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPersonalChatHistoryForbidden creates a PersonalChatHistoryForbidden with default headers values
func NewPersonalChatHistoryForbidden() *PersonalChatHistoryForbidden {
	return &PersonalChatHistoryForbidden{}
}

/*PersonalChatHistoryForbidden handles this case with default header values.

  Forbidden
*/
type PersonalChatHistoryForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PersonalChatHistoryForbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/chat/namespaces/{namespace}/users/{userId}/friend/{friendId}][%d] personalChatHistoryForbidden  %+v", 403, o.ToJSONString())
}

func (o *PersonalChatHistoryForbidden) ToJSONString() string {
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

func (o *PersonalChatHistoryForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PersonalChatHistoryForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPersonalChatHistoryNotFound creates a PersonalChatHistoryNotFound with default headers values
func NewPersonalChatHistoryNotFound() *PersonalChatHistoryNotFound {
	return &PersonalChatHistoryNotFound{}
}

/*PersonalChatHistoryNotFound handles this case with default header values.

  Not Found
*/
type PersonalChatHistoryNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PersonalChatHistoryNotFound) Error() string {
	return fmt.Sprintf("[GET /lobby/chat/namespaces/{namespace}/users/{userId}/friend/{friendId}][%d] personalChatHistoryNotFound  %+v", 404, o.ToJSONString())
}

func (o *PersonalChatHistoryNotFound) ToJSONString() string {
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

func (o *PersonalChatHistoryNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PersonalChatHistoryNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPersonalChatHistoryInternalServerError creates a PersonalChatHistoryInternalServerError with default headers values
func NewPersonalChatHistoryInternalServerError() *PersonalChatHistoryInternalServerError {
	return &PersonalChatHistoryInternalServerError{}
}

/*PersonalChatHistoryInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PersonalChatHistoryInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PersonalChatHistoryInternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/chat/namespaces/{namespace}/users/{userId}/friend/{friendId}][%d] personalChatHistoryInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PersonalChatHistoryInternalServerError) ToJSONString() string {
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

func (o *PersonalChatHistoryInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PersonalChatHistoryInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
