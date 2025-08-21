// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package player

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

type AdminGetPlayerBlockedPlayersV1Response struct {
	lobbyclientmodels.ApiResponse
	Data *lobbyclientmodels.ModelsGetAllPlayerBlockedUsersResponse

	Error400 *lobbyclientmodels.RestapiErrorResponseBody
	Error401 *lobbyclientmodels.RestapiErrorResponseBody
	Error403 *lobbyclientmodels.RestapiErrorResponseBody
	Error404 *lobbyclientmodels.RestapiErrorResponseBody
	Error500 *lobbyclientmodels.RestapiErrorResponseBody
}

func (m *AdminGetPlayerBlockedPlayersV1Response) Unpack() (*lobbyclientmodels.ModelsGetAllPlayerBlockedUsersResponse, *lobbyclientmodels.ApiError) {
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
			return nil, &lobbyclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// AdminGetPlayerBlockedPlayersV1Reader is a Reader for the AdminGetPlayerBlockedPlayersV1 structure.
type AdminGetPlayerBlockedPlayersV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetPlayerBlockedPlayersV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetPlayerBlockedPlayersV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetPlayerBlockedPlayersV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetPlayerBlockedPlayersV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetPlayerBlockedPlayersV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetPlayerBlockedPlayersV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetPlayerBlockedPlayersV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetPlayerBlockedPlayersV1OK creates a AdminGetPlayerBlockedPlayersV1OK with default headers values
func NewAdminGetPlayerBlockedPlayersV1OK() *AdminGetPlayerBlockedPlayersV1OK {
	return &AdminGetPlayerBlockedPlayersV1OK{}
}

/*
AdminGetPlayerBlockedPlayersV1OK handles this case with default header values.

	OK
*/
type AdminGetPlayerBlockedPlayersV1OK struct {
	Payload *lobbyclientmodels.ModelsGetAllPlayerBlockedUsersResponse
}

func (o *AdminGetPlayerBlockedPlayersV1OK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked][%d] adminGetPlayerBlockedPlayersV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetPlayerBlockedPlayersV1OK) ToJSONString() string {
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

func (o *AdminGetPlayerBlockedPlayersV1OK) GetPayload() *lobbyclientmodels.ModelsGetAllPlayerBlockedUsersResponse {
	return o.Payload
}

func (o *AdminGetPlayerBlockedPlayersV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelsGetAllPlayerBlockedUsersResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetPlayerBlockedPlayersV1BadRequest creates a AdminGetPlayerBlockedPlayersV1BadRequest with default headers values
func NewAdminGetPlayerBlockedPlayersV1BadRequest() *AdminGetPlayerBlockedPlayersV1BadRequest {
	return &AdminGetPlayerBlockedPlayersV1BadRequest{}
}

/*
AdminGetPlayerBlockedPlayersV1BadRequest handles this case with default header values.

	Bad Request
*/
type AdminGetPlayerBlockedPlayersV1BadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetPlayerBlockedPlayersV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked][%d] adminGetPlayerBlockedPlayersV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetPlayerBlockedPlayersV1BadRequest) ToJSONString() string {
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

func (o *AdminGetPlayerBlockedPlayersV1BadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetPlayerBlockedPlayersV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetPlayerBlockedPlayersV1Unauthorized creates a AdminGetPlayerBlockedPlayersV1Unauthorized with default headers values
func NewAdminGetPlayerBlockedPlayersV1Unauthorized() *AdminGetPlayerBlockedPlayersV1Unauthorized {
	return &AdminGetPlayerBlockedPlayersV1Unauthorized{}
}

/*
AdminGetPlayerBlockedPlayersV1Unauthorized handles this case with default header values.

	Unauthorized
*/
type AdminGetPlayerBlockedPlayersV1Unauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetPlayerBlockedPlayersV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked][%d] adminGetPlayerBlockedPlayersV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetPlayerBlockedPlayersV1Unauthorized) ToJSONString() string {
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

func (o *AdminGetPlayerBlockedPlayersV1Unauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetPlayerBlockedPlayersV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetPlayerBlockedPlayersV1Forbidden creates a AdminGetPlayerBlockedPlayersV1Forbidden with default headers values
func NewAdminGetPlayerBlockedPlayersV1Forbidden() *AdminGetPlayerBlockedPlayersV1Forbidden {
	return &AdminGetPlayerBlockedPlayersV1Forbidden{}
}

/*
AdminGetPlayerBlockedPlayersV1Forbidden handles this case with default header values.

	Forbidden
*/
type AdminGetPlayerBlockedPlayersV1Forbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetPlayerBlockedPlayersV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked][%d] adminGetPlayerBlockedPlayersV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetPlayerBlockedPlayersV1Forbidden) ToJSONString() string {
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

func (o *AdminGetPlayerBlockedPlayersV1Forbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetPlayerBlockedPlayersV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetPlayerBlockedPlayersV1NotFound creates a AdminGetPlayerBlockedPlayersV1NotFound with default headers values
func NewAdminGetPlayerBlockedPlayersV1NotFound() *AdminGetPlayerBlockedPlayersV1NotFound {
	return &AdminGetPlayerBlockedPlayersV1NotFound{}
}

/*
AdminGetPlayerBlockedPlayersV1NotFound handles this case with default header values.

	Not Found
*/
type AdminGetPlayerBlockedPlayersV1NotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetPlayerBlockedPlayersV1NotFound) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked][%d] adminGetPlayerBlockedPlayersV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetPlayerBlockedPlayersV1NotFound) ToJSONString() string {
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

func (o *AdminGetPlayerBlockedPlayersV1NotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetPlayerBlockedPlayersV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetPlayerBlockedPlayersV1InternalServerError creates a AdminGetPlayerBlockedPlayersV1InternalServerError with default headers values
func NewAdminGetPlayerBlockedPlayersV1InternalServerError() *AdminGetPlayerBlockedPlayersV1InternalServerError {
	return &AdminGetPlayerBlockedPlayersV1InternalServerError{}
}

/*
AdminGetPlayerBlockedPlayersV1InternalServerError handles this case with default header values.

	Internal Server Error
*/
type AdminGetPlayerBlockedPlayersV1InternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetPlayerBlockedPlayersV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked][%d] adminGetPlayerBlockedPlayersV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetPlayerBlockedPlayersV1InternalServerError) ToJSONString() string {
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

func (o *AdminGetPlayerBlockedPlayersV1InternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetPlayerBlockedPlayersV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
