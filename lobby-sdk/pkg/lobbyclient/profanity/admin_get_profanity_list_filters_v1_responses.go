// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package profanity

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

type AdminGetProfanityListFiltersV1Response struct {
	lobbyclientmodels.ApiResponse
	Data *lobbyclientmodels.ModelsAdminGetProfanityListFiltersV1Response

	Error400 *lobbyclientmodels.RestapiErrorResponseBody
	Error401 *lobbyclientmodels.RestapiErrorResponseBody
	Error403 *lobbyclientmodels.RestapiErrorResponseBody
	Error404 *lobbyclientmodels.RestapiErrorResponseBody
	Error500 *lobbyclientmodels.RestapiErrorResponseBody
}

func (m *AdminGetProfanityListFiltersV1Response) Unpack() (*lobbyclientmodels.ModelsAdminGetProfanityListFiltersV1Response, *lobbyclientmodels.ApiError) {
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

// AdminGetProfanityListFiltersV1Reader is a Reader for the AdminGetProfanityListFiltersV1 structure.
type AdminGetProfanityListFiltersV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetProfanityListFiltersV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetProfanityListFiltersV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetProfanityListFiltersV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetProfanityListFiltersV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetProfanityListFiltersV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetProfanityListFiltersV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetProfanityListFiltersV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetProfanityListFiltersV1OK creates a AdminGetProfanityListFiltersV1OK with default headers values
func NewAdminGetProfanityListFiltersV1OK() *AdminGetProfanityListFiltersV1OK {
	return &AdminGetProfanityListFiltersV1OK{}
}

/*AdminGetProfanityListFiltersV1OK handles this case with default header values.

  OK
*/
type AdminGetProfanityListFiltersV1OK struct {
	Payload *lobbyclientmodels.ModelsAdminGetProfanityListFiltersV1Response
}

func (o *AdminGetProfanityListFiltersV1OK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters][%d] adminGetProfanityListFiltersV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetProfanityListFiltersV1OK) ToJSONString() string {
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

func (o *AdminGetProfanityListFiltersV1OK) GetPayload() *lobbyclientmodels.ModelsAdminGetProfanityListFiltersV1Response {
	return o.Payload
}

func (o *AdminGetProfanityListFiltersV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelsAdminGetProfanityListFiltersV1Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetProfanityListFiltersV1BadRequest creates a AdminGetProfanityListFiltersV1BadRequest with default headers values
func NewAdminGetProfanityListFiltersV1BadRequest() *AdminGetProfanityListFiltersV1BadRequest {
	return &AdminGetProfanityListFiltersV1BadRequest{}
}

/*AdminGetProfanityListFiltersV1BadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetProfanityListFiltersV1BadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetProfanityListFiltersV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters][%d] adminGetProfanityListFiltersV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetProfanityListFiltersV1BadRequest) ToJSONString() string {
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

func (o *AdminGetProfanityListFiltersV1BadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetProfanityListFiltersV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetProfanityListFiltersV1Unauthorized creates a AdminGetProfanityListFiltersV1Unauthorized with default headers values
func NewAdminGetProfanityListFiltersV1Unauthorized() *AdminGetProfanityListFiltersV1Unauthorized {
	return &AdminGetProfanityListFiltersV1Unauthorized{}
}

/*AdminGetProfanityListFiltersV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetProfanityListFiltersV1Unauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetProfanityListFiltersV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters][%d] adminGetProfanityListFiltersV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetProfanityListFiltersV1Unauthorized) ToJSONString() string {
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

func (o *AdminGetProfanityListFiltersV1Unauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetProfanityListFiltersV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetProfanityListFiltersV1Forbidden creates a AdminGetProfanityListFiltersV1Forbidden with default headers values
func NewAdminGetProfanityListFiltersV1Forbidden() *AdminGetProfanityListFiltersV1Forbidden {
	return &AdminGetProfanityListFiltersV1Forbidden{}
}

/*AdminGetProfanityListFiltersV1Forbidden handles this case with default header values.

  Forbidden
*/
type AdminGetProfanityListFiltersV1Forbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetProfanityListFiltersV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters][%d] adminGetProfanityListFiltersV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetProfanityListFiltersV1Forbidden) ToJSONString() string {
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

func (o *AdminGetProfanityListFiltersV1Forbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetProfanityListFiltersV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetProfanityListFiltersV1NotFound creates a AdminGetProfanityListFiltersV1NotFound with default headers values
func NewAdminGetProfanityListFiltersV1NotFound() *AdminGetProfanityListFiltersV1NotFound {
	return &AdminGetProfanityListFiltersV1NotFound{}
}

/*AdminGetProfanityListFiltersV1NotFound handles this case with default header values.

  Not Found
*/
type AdminGetProfanityListFiltersV1NotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetProfanityListFiltersV1NotFound) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters][%d] adminGetProfanityListFiltersV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetProfanityListFiltersV1NotFound) ToJSONString() string {
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

func (o *AdminGetProfanityListFiltersV1NotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetProfanityListFiltersV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetProfanityListFiltersV1InternalServerError creates a AdminGetProfanityListFiltersV1InternalServerError with default headers values
func NewAdminGetProfanityListFiltersV1InternalServerError() *AdminGetProfanityListFiltersV1InternalServerError {
	return &AdminGetProfanityListFiltersV1InternalServerError{}
}

/*AdminGetProfanityListFiltersV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetProfanityListFiltersV1InternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetProfanityListFiltersV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters][%d] adminGetProfanityListFiltersV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetProfanityListFiltersV1InternalServerError) ToJSONString() string {
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

func (o *AdminGetProfanityListFiltersV1InternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetProfanityListFiltersV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
