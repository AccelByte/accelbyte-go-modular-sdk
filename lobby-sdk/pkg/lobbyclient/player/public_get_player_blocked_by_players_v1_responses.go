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

type PublicGetPlayerBlockedByPlayersV1Response struct {
	lobbyclientmodels.ApiResponse
	Data *lobbyclientmodels.ModelsGetAllPlayerBlockedByUsersResponse

	Error400 *lobbyclientmodels.RestapiErrorResponseBody
	Error401 *lobbyclientmodels.RestapiErrorResponseBody
	Error403 *lobbyclientmodels.RestapiErrorResponseBody
	Error404 *lobbyclientmodels.RestapiErrorResponseBody
	Error500 *lobbyclientmodels.RestapiErrorResponseBody
}

func (m *PublicGetPlayerBlockedByPlayersV1Response) Unpack() (*lobbyclientmodels.ModelsGetAllPlayerBlockedByUsersResponse, *lobbyclientmodels.ApiError) {
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

// PublicGetPlayerBlockedByPlayersV1Reader is a Reader for the PublicGetPlayerBlockedByPlayersV1 structure.
type PublicGetPlayerBlockedByPlayersV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetPlayerBlockedByPlayersV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetPlayerBlockedByPlayersV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetPlayerBlockedByPlayersV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetPlayerBlockedByPlayersV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetPlayerBlockedByPlayersV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetPlayerBlockedByPlayersV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetPlayerBlockedByPlayersV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/public/player/namespaces/{namespace}/users/me/blocked-by returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetPlayerBlockedByPlayersV1OK creates a PublicGetPlayerBlockedByPlayersV1OK with default headers values
func NewPublicGetPlayerBlockedByPlayersV1OK() *PublicGetPlayerBlockedByPlayersV1OK {
	return &PublicGetPlayerBlockedByPlayersV1OK{}
}

/*PublicGetPlayerBlockedByPlayersV1OK handles this case with default header values.

  OK
*/
type PublicGetPlayerBlockedByPlayersV1OK struct {
	Payload *lobbyclientmodels.ModelsGetAllPlayerBlockedByUsersResponse
}

func (o *PublicGetPlayerBlockedByPlayersV1OK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/player/namespaces/{namespace}/users/me/blocked-by][%d] publicGetPlayerBlockedByPlayersV1OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetPlayerBlockedByPlayersV1OK) ToJSONString() string {
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

func (o *PublicGetPlayerBlockedByPlayersV1OK) GetPayload() *lobbyclientmodels.ModelsGetAllPlayerBlockedByUsersResponse {
	return o.Payload
}

func (o *PublicGetPlayerBlockedByPlayersV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelsGetAllPlayerBlockedByUsersResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetPlayerBlockedByPlayersV1BadRequest creates a PublicGetPlayerBlockedByPlayersV1BadRequest with default headers values
func NewPublicGetPlayerBlockedByPlayersV1BadRequest() *PublicGetPlayerBlockedByPlayersV1BadRequest {
	return &PublicGetPlayerBlockedByPlayersV1BadRequest{}
}

/*PublicGetPlayerBlockedByPlayersV1BadRequest handles this case with default header values.

  Bad Request
*/
type PublicGetPlayerBlockedByPlayersV1BadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetPlayerBlockedByPlayersV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/player/namespaces/{namespace}/users/me/blocked-by][%d] publicGetPlayerBlockedByPlayersV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetPlayerBlockedByPlayersV1BadRequest) ToJSONString() string {
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

func (o *PublicGetPlayerBlockedByPlayersV1BadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetPlayerBlockedByPlayersV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetPlayerBlockedByPlayersV1Unauthorized creates a PublicGetPlayerBlockedByPlayersV1Unauthorized with default headers values
func NewPublicGetPlayerBlockedByPlayersV1Unauthorized() *PublicGetPlayerBlockedByPlayersV1Unauthorized {
	return &PublicGetPlayerBlockedByPlayersV1Unauthorized{}
}

/*PublicGetPlayerBlockedByPlayersV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGetPlayerBlockedByPlayersV1Unauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetPlayerBlockedByPlayersV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/player/namespaces/{namespace}/users/me/blocked-by][%d] publicGetPlayerBlockedByPlayersV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetPlayerBlockedByPlayersV1Unauthorized) ToJSONString() string {
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

func (o *PublicGetPlayerBlockedByPlayersV1Unauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetPlayerBlockedByPlayersV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetPlayerBlockedByPlayersV1Forbidden creates a PublicGetPlayerBlockedByPlayersV1Forbidden with default headers values
func NewPublicGetPlayerBlockedByPlayersV1Forbidden() *PublicGetPlayerBlockedByPlayersV1Forbidden {
	return &PublicGetPlayerBlockedByPlayersV1Forbidden{}
}

/*PublicGetPlayerBlockedByPlayersV1Forbidden handles this case with default header values.

  Forbidden
*/
type PublicGetPlayerBlockedByPlayersV1Forbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetPlayerBlockedByPlayersV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/player/namespaces/{namespace}/users/me/blocked-by][%d] publicGetPlayerBlockedByPlayersV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetPlayerBlockedByPlayersV1Forbidden) ToJSONString() string {
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

func (o *PublicGetPlayerBlockedByPlayersV1Forbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetPlayerBlockedByPlayersV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetPlayerBlockedByPlayersV1NotFound creates a PublicGetPlayerBlockedByPlayersV1NotFound with default headers values
func NewPublicGetPlayerBlockedByPlayersV1NotFound() *PublicGetPlayerBlockedByPlayersV1NotFound {
	return &PublicGetPlayerBlockedByPlayersV1NotFound{}
}

/*PublicGetPlayerBlockedByPlayersV1NotFound handles this case with default header values.

  Not Found
*/
type PublicGetPlayerBlockedByPlayersV1NotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetPlayerBlockedByPlayersV1NotFound) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/player/namespaces/{namespace}/users/me/blocked-by][%d] publicGetPlayerBlockedByPlayersV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetPlayerBlockedByPlayersV1NotFound) ToJSONString() string {
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

func (o *PublicGetPlayerBlockedByPlayersV1NotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetPlayerBlockedByPlayersV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetPlayerBlockedByPlayersV1InternalServerError creates a PublicGetPlayerBlockedByPlayersV1InternalServerError with default headers values
func NewPublicGetPlayerBlockedByPlayersV1InternalServerError() *PublicGetPlayerBlockedByPlayersV1InternalServerError {
	return &PublicGetPlayerBlockedByPlayersV1InternalServerError{}
}

/*PublicGetPlayerBlockedByPlayersV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGetPlayerBlockedByPlayersV1InternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicGetPlayerBlockedByPlayersV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/public/player/namespaces/{namespace}/users/me/blocked-by][%d] publicGetPlayerBlockedByPlayersV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetPlayerBlockedByPlayersV1InternalServerError) ToJSONString() string {
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

func (o *PublicGetPlayerBlockedByPlayersV1InternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicGetPlayerBlockedByPlayersV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
