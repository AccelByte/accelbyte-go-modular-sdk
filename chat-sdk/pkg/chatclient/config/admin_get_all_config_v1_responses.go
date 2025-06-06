// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

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

type AdminGetAllConfigV1Response struct {
	chatclientmodels.ApiResponse
	Data *chatclientmodels.ModelsConfigList

	Error400 *chatclientmodels.RestapiErrorResponseBody
	Error401 *chatclientmodels.RestapiErrorResponseBody
	Error403 *chatclientmodels.RestapiErrorResponseBody
	Error404 *chatclientmodels.RestapiErrorResponseBody
	Error500 *chatclientmodels.RestapiErrorResponseBody
}

func (m *AdminGetAllConfigV1Response) Unpack() (*chatclientmodels.ModelsConfigList, *chatclientmodels.ApiError) {
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
			return nil, &chatclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// AdminGetAllConfigV1Reader is a Reader for the AdminGetAllConfigV1 structure.
type AdminGetAllConfigV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetAllConfigV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetAllConfigV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetAllConfigV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetAllConfigV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetAllConfigV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetAllConfigV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetAllConfigV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /chat/v1/admin/config returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetAllConfigV1OK creates a AdminGetAllConfigV1OK with default headers values
func NewAdminGetAllConfigV1OK() *AdminGetAllConfigV1OK {
	return &AdminGetAllConfigV1OK{}
}

/*AdminGetAllConfigV1OK handles this case with default header values.

  OK
*/
type AdminGetAllConfigV1OK struct {
	Payload *chatclientmodels.ModelsConfigList
}

func (o *AdminGetAllConfigV1OK) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/config][%d] adminGetAllConfigV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetAllConfigV1OK) ToJSONString() string {
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

func (o *AdminGetAllConfigV1OK) GetPayload() *chatclientmodels.ModelsConfigList {
	return o.Payload
}

func (o *AdminGetAllConfigV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(chatclientmodels.ModelsConfigList)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetAllConfigV1BadRequest creates a AdminGetAllConfigV1BadRequest with default headers values
func NewAdminGetAllConfigV1BadRequest() *AdminGetAllConfigV1BadRequest {
	return &AdminGetAllConfigV1BadRequest{}
}

/*AdminGetAllConfigV1BadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetAllConfigV1BadRequest struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetAllConfigV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/config][%d] adminGetAllConfigV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetAllConfigV1BadRequest) ToJSONString() string {
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

func (o *AdminGetAllConfigV1BadRequest) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetAllConfigV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetAllConfigV1Unauthorized creates a AdminGetAllConfigV1Unauthorized with default headers values
func NewAdminGetAllConfigV1Unauthorized() *AdminGetAllConfigV1Unauthorized {
	return &AdminGetAllConfigV1Unauthorized{}
}

/*AdminGetAllConfigV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetAllConfigV1Unauthorized struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetAllConfigV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/config][%d] adminGetAllConfigV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetAllConfigV1Unauthorized) ToJSONString() string {
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

func (o *AdminGetAllConfigV1Unauthorized) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetAllConfigV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetAllConfigV1Forbidden creates a AdminGetAllConfigV1Forbidden with default headers values
func NewAdminGetAllConfigV1Forbidden() *AdminGetAllConfigV1Forbidden {
	return &AdminGetAllConfigV1Forbidden{}
}

/*AdminGetAllConfigV1Forbidden handles this case with default header values.

  Forbidden
*/
type AdminGetAllConfigV1Forbidden struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetAllConfigV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/config][%d] adminGetAllConfigV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetAllConfigV1Forbidden) ToJSONString() string {
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

func (o *AdminGetAllConfigV1Forbidden) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetAllConfigV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetAllConfigV1NotFound creates a AdminGetAllConfigV1NotFound with default headers values
func NewAdminGetAllConfigV1NotFound() *AdminGetAllConfigV1NotFound {
	return &AdminGetAllConfigV1NotFound{}
}

/*AdminGetAllConfigV1NotFound handles this case with default header values.

  Not Found
*/
type AdminGetAllConfigV1NotFound struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetAllConfigV1NotFound) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/config][%d] adminGetAllConfigV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetAllConfigV1NotFound) ToJSONString() string {
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

func (o *AdminGetAllConfigV1NotFound) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetAllConfigV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetAllConfigV1InternalServerError creates a AdminGetAllConfigV1InternalServerError with default headers values
func NewAdminGetAllConfigV1InternalServerError() *AdminGetAllConfigV1InternalServerError {
	return &AdminGetAllConfigV1InternalServerError{}
}

/*AdminGetAllConfigV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetAllConfigV1InternalServerError struct {
	Payload *chatclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetAllConfigV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /chat/v1/admin/config][%d] adminGetAllConfigV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetAllConfigV1InternalServerError) ToJSONString() string {
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

func (o *AdminGetAllConfigV1InternalServerError) GetPayload() *chatclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetAllConfigV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
