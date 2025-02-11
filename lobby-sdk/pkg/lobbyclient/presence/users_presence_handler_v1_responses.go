// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package presence

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

type UsersPresenceHandlerV1Response struct {
	lobbyclientmodels.ApiResponse
	Data *lobbyclientmodels.HandlersGetUsersPresenceResponse

	Error400 *lobbyclientmodels.RestapiErrorResponseBody
	Error401 *lobbyclientmodels.RestapiErrorResponseBody
	Error500 *lobbyclientmodels.RestapiErrorResponseBody
}

func (m *UsersPresenceHandlerV1Response) Unpack() (*lobbyclientmodels.HandlersGetUsersPresenceResponse, *lobbyclientmodels.ApiError) {
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

		case 500:
			e, err := m.Error500.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		default:
			return nil, &lobbyclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// UsersPresenceHandlerV1Reader is a Reader for the UsersPresenceHandlerV1 structure.
type UsersPresenceHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UsersPresenceHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUsersPresenceHandlerV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUsersPresenceHandlerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUsersPresenceHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUsersPresenceHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/public/presence/namespaces/{namespace}/users/presence returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUsersPresenceHandlerV1OK creates a UsersPresenceHandlerV1OK with default headers values
func NewUsersPresenceHandlerV1OK() *UsersPresenceHandlerV1OK {
	return &UsersPresenceHandlerV1OK{}
}

/*UsersPresenceHandlerV1OK handles this case with default header values.

  OK
*/
type UsersPresenceHandlerV1OK struct {
	Payload *lobbyclientmodels.HandlersGetUsersPresenceResponse
}

func (o *UsersPresenceHandlerV1OK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/presence/namespaces/{namespace}/users/presence][%d] usersPresenceHandlerV1OK  %+v", 200, o.ToJSONString())
}

func (o *UsersPresenceHandlerV1OK) ToJSONString() string {
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

func (o *UsersPresenceHandlerV1OK) GetPayload() *lobbyclientmodels.HandlersGetUsersPresenceResponse {
	return o.Payload
}

func (o *UsersPresenceHandlerV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.HandlersGetUsersPresenceResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUsersPresenceHandlerV1BadRequest creates a UsersPresenceHandlerV1BadRequest with default headers values
func NewUsersPresenceHandlerV1BadRequest() *UsersPresenceHandlerV1BadRequest {
	return &UsersPresenceHandlerV1BadRequest{}
}

/*UsersPresenceHandlerV1BadRequest handles this case with default header values.

  Bad Request
*/
type UsersPresenceHandlerV1BadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *UsersPresenceHandlerV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/presence/namespaces/{namespace}/users/presence][%d] usersPresenceHandlerV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UsersPresenceHandlerV1BadRequest) ToJSONString() string {
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

func (o *UsersPresenceHandlerV1BadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *UsersPresenceHandlerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUsersPresenceHandlerV1Unauthorized creates a UsersPresenceHandlerV1Unauthorized with default headers values
func NewUsersPresenceHandlerV1Unauthorized() *UsersPresenceHandlerV1Unauthorized {
	return &UsersPresenceHandlerV1Unauthorized{}
}

/*UsersPresenceHandlerV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type UsersPresenceHandlerV1Unauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *UsersPresenceHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/presence/namespaces/{namespace}/users/presence][%d] usersPresenceHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UsersPresenceHandlerV1Unauthorized) ToJSONString() string {
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

func (o *UsersPresenceHandlerV1Unauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *UsersPresenceHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUsersPresenceHandlerV1InternalServerError creates a UsersPresenceHandlerV1InternalServerError with default headers values
func NewUsersPresenceHandlerV1InternalServerError() *UsersPresenceHandlerV1InternalServerError {
	return &UsersPresenceHandlerV1InternalServerError{}
}

/*UsersPresenceHandlerV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UsersPresenceHandlerV1InternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *UsersPresenceHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/presence/namespaces/{namespace}/users/presence][%d] usersPresenceHandlerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UsersPresenceHandlerV1InternalServerError) ToJSONString() string {
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

func (o *UsersPresenceHandlerV1InternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *UsersPresenceHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
