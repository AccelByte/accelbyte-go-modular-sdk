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

// GetPersonalChatHistoryV1PublicReader is a Reader for the GetPersonalChatHistoryV1Public structure.
type GetPersonalChatHistoryV1PublicReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetPersonalChatHistoryV1PublicReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetPersonalChatHistoryV1PublicOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetPersonalChatHistoryV1PublicBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetPersonalChatHistoryV1PublicUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetPersonalChatHistoryV1PublicForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetPersonalChatHistoryV1PublicNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetPersonalChatHistoryV1PublicInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/public/chat/namespaces/{namespace}/users/me/friends/{friendId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetPersonalChatHistoryV1PublicOK creates a GetPersonalChatHistoryV1PublicOK with default headers values
func NewGetPersonalChatHistoryV1PublicOK() *GetPersonalChatHistoryV1PublicOK {
	return &GetPersonalChatHistoryV1PublicOK{}
}

/*GetPersonalChatHistoryV1PublicOK handles this case with default header values.

  OK
*/
type GetPersonalChatHistoryV1PublicOK struct {
	Payload []*lobbyclientmodels.ModelChatMessageResponse
}

func (o *GetPersonalChatHistoryV1PublicOK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/chat/namespaces/{namespace}/users/me/friends/{friendId}][%d] getPersonalChatHistoryV1PublicOK  %+v", 200, o.ToJSONString())
}

func (o *GetPersonalChatHistoryV1PublicOK) ToJSONString() string {
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

func (o *GetPersonalChatHistoryV1PublicOK) GetPayload() []*lobbyclientmodels.ModelChatMessageResponse {
	return o.Payload
}

func (o *GetPersonalChatHistoryV1PublicOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetPersonalChatHistoryV1PublicBadRequest creates a GetPersonalChatHistoryV1PublicBadRequest with default headers values
func NewGetPersonalChatHistoryV1PublicBadRequest() *GetPersonalChatHistoryV1PublicBadRequest {
	return &GetPersonalChatHistoryV1PublicBadRequest{}
}

/*GetPersonalChatHistoryV1PublicBadRequest handles this case with default header values.

  Bad Request
*/
type GetPersonalChatHistoryV1PublicBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetPersonalChatHistoryV1PublicBadRequest) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/chat/namespaces/{namespace}/users/me/friends/{friendId}][%d] getPersonalChatHistoryV1PublicBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetPersonalChatHistoryV1PublicBadRequest) ToJSONString() string {
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

func (o *GetPersonalChatHistoryV1PublicBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetPersonalChatHistoryV1PublicBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetPersonalChatHistoryV1PublicUnauthorized creates a GetPersonalChatHistoryV1PublicUnauthorized with default headers values
func NewGetPersonalChatHistoryV1PublicUnauthorized() *GetPersonalChatHistoryV1PublicUnauthorized {
	return &GetPersonalChatHistoryV1PublicUnauthorized{}
}

/*GetPersonalChatHistoryV1PublicUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetPersonalChatHistoryV1PublicUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetPersonalChatHistoryV1PublicUnauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/chat/namespaces/{namespace}/users/me/friends/{friendId}][%d] getPersonalChatHistoryV1PublicUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetPersonalChatHistoryV1PublicUnauthorized) ToJSONString() string {
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

func (o *GetPersonalChatHistoryV1PublicUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetPersonalChatHistoryV1PublicUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetPersonalChatHistoryV1PublicForbidden creates a GetPersonalChatHistoryV1PublicForbidden with default headers values
func NewGetPersonalChatHistoryV1PublicForbidden() *GetPersonalChatHistoryV1PublicForbidden {
	return &GetPersonalChatHistoryV1PublicForbidden{}
}

/*GetPersonalChatHistoryV1PublicForbidden handles this case with default header values.

  Forbidden
*/
type GetPersonalChatHistoryV1PublicForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetPersonalChatHistoryV1PublicForbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/chat/namespaces/{namespace}/users/me/friends/{friendId}][%d] getPersonalChatHistoryV1PublicForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetPersonalChatHistoryV1PublicForbidden) ToJSONString() string {
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

func (o *GetPersonalChatHistoryV1PublicForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetPersonalChatHistoryV1PublicForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetPersonalChatHistoryV1PublicNotFound creates a GetPersonalChatHistoryV1PublicNotFound with default headers values
func NewGetPersonalChatHistoryV1PublicNotFound() *GetPersonalChatHistoryV1PublicNotFound {
	return &GetPersonalChatHistoryV1PublicNotFound{}
}

/*GetPersonalChatHistoryV1PublicNotFound handles this case with default header values.

  Not Found
*/
type GetPersonalChatHistoryV1PublicNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetPersonalChatHistoryV1PublicNotFound) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/chat/namespaces/{namespace}/users/me/friends/{friendId}][%d] getPersonalChatHistoryV1PublicNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetPersonalChatHistoryV1PublicNotFound) ToJSONString() string {
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

func (o *GetPersonalChatHistoryV1PublicNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetPersonalChatHistoryV1PublicNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetPersonalChatHistoryV1PublicInternalServerError creates a GetPersonalChatHistoryV1PublicInternalServerError with default headers values
func NewGetPersonalChatHistoryV1PublicInternalServerError() *GetPersonalChatHistoryV1PublicInternalServerError {
	return &GetPersonalChatHistoryV1PublicInternalServerError{}
}

/*GetPersonalChatHistoryV1PublicInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetPersonalChatHistoryV1PublicInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetPersonalChatHistoryV1PublicInternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/chat/namespaces/{namespace}/users/me/friends/{friendId}][%d] getPersonalChatHistoryV1PublicInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetPersonalChatHistoryV1PublicInternalServerError) ToJSONString() string {
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

func (o *GetPersonalChatHistoryV1PublicInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetPersonalChatHistoryV1PublicInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
