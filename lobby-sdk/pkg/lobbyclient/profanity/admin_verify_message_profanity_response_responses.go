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

type AdminVerifyMessageProfanityResponseResponse struct {
	lobbyclientmodels.ApiResponse
	Data *lobbyclientmodels.ModelsAdminVerifyMessageProfanityResponse

	Error400 *lobbyclientmodels.RestapiErrorResponseBody
	Error401 *lobbyclientmodels.RestapiErrorResponseBody
	Error403 *lobbyclientmodels.RestapiErrorResponseBody
	Error404 *lobbyclientmodels.RestapiErrorResponseBody
	Error500 *lobbyclientmodels.RestapiErrorResponseBody
}

func (m *AdminVerifyMessageProfanityResponseResponse) Unpack() (*lobbyclientmodels.ModelsAdminVerifyMessageProfanityResponse, *lobbyclientmodels.ApiError) {
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

// AdminVerifyMessageProfanityResponseReader is a Reader for the AdminVerifyMessageProfanityResponse structure.
type AdminVerifyMessageProfanityResponseReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminVerifyMessageProfanityResponseReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminVerifyMessageProfanityResponseOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminVerifyMessageProfanityResponseBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminVerifyMessageProfanityResponseUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminVerifyMessageProfanityResponseForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminVerifyMessageProfanityResponseNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminVerifyMessageProfanityResponseInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /lobby/v1/admin/profanity/namespaces/{namespace}/verify returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminVerifyMessageProfanityResponseOK creates a AdminVerifyMessageProfanityResponseOK with default headers values
func NewAdminVerifyMessageProfanityResponseOK() *AdminVerifyMessageProfanityResponseOK {
	return &AdminVerifyMessageProfanityResponseOK{}
}

/*AdminVerifyMessageProfanityResponseOK handles this case with default header values.

  OK
*/
type AdminVerifyMessageProfanityResponseOK struct {
	Payload *lobbyclientmodels.ModelsAdminVerifyMessageProfanityResponse
}

func (o *AdminVerifyMessageProfanityResponseOK) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/verify][%d] adminVerifyMessageProfanityResponseOK  %+v", 200, o.ToJSONString())
}

func (o *AdminVerifyMessageProfanityResponseOK) ToJSONString() string {
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

func (o *AdminVerifyMessageProfanityResponseOK) GetPayload() *lobbyclientmodels.ModelsAdminVerifyMessageProfanityResponse {
	return o.Payload
}

func (o *AdminVerifyMessageProfanityResponseOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelsAdminVerifyMessageProfanityResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminVerifyMessageProfanityResponseBadRequest creates a AdminVerifyMessageProfanityResponseBadRequest with default headers values
func NewAdminVerifyMessageProfanityResponseBadRequest() *AdminVerifyMessageProfanityResponseBadRequest {
	return &AdminVerifyMessageProfanityResponseBadRequest{}
}

/*AdminVerifyMessageProfanityResponseBadRequest handles this case with default header values.

  Bad Request
*/
type AdminVerifyMessageProfanityResponseBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminVerifyMessageProfanityResponseBadRequest) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/verify][%d] adminVerifyMessageProfanityResponseBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminVerifyMessageProfanityResponseBadRequest) ToJSONString() string {
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

func (o *AdminVerifyMessageProfanityResponseBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminVerifyMessageProfanityResponseBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminVerifyMessageProfanityResponseUnauthorized creates a AdminVerifyMessageProfanityResponseUnauthorized with default headers values
func NewAdminVerifyMessageProfanityResponseUnauthorized() *AdminVerifyMessageProfanityResponseUnauthorized {
	return &AdminVerifyMessageProfanityResponseUnauthorized{}
}

/*AdminVerifyMessageProfanityResponseUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminVerifyMessageProfanityResponseUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminVerifyMessageProfanityResponseUnauthorized) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/verify][%d] adminVerifyMessageProfanityResponseUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminVerifyMessageProfanityResponseUnauthorized) ToJSONString() string {
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

func (o *AdminVerifyMessageProfanityResponseUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminVerifyMessageProfanityResponseUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminVerifyMessageProfanityResponseForbidden creates a AdminVerifyMessageProfanityResponseForbidden with default headers values
func NewAdminVerifyMessageProfanityResponseForbidden() *AdminVerifyMessageProfanityResponseForbidden {
	return &AdminVerifyMessageProfanityResponseForbidden{}
}

/*AdminVerifyMessageProfanityResponseForbidden handles this case with default header values.

  Forbidden
*/
type AdminVerifyMessageProfanityResponseForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminVerifyMessageProfanityResponseForbidden) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/verify][%d] adminVerifyMessageProfanityResponseForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminVerifyMessageProfanityResponseForbidden) ToJSONString() string {
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

func (o *AdminVerifyMessageProfanityResponseForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminVerifyMessageProfanityResponseForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminVerifyMessageProfanityResponseNotFound creates a AdminVerifyMessageProfanityResponseNotFound with default headers values
func NewAdminVerifyMessageProfanityResponseNotFound() *AdminVerifyMessageProfanityResponseNotFound {
	return &AdminVerifyMessageProfanityResponseNotFound{}
}

/*AdminVerifyMessageProfanityResponseNotFound handles this case with default header values.

  Not Found
*/
type AdminVerifyMessageProfanityResponseNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminVerifyMessageProfanityResponseNotFound) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/verify][%d] adminVerifyMessageProfanityResponseNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminVerifyMessageProfanityResponseNotFound) ToJSONString() string {
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

func (o *AdminVerifyMessageProfanityResponseNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminVerifyMessageProfanityResponseNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminVerifyMessageProfanityResponseInternalServerError creates a AdminVerifyMessageProfanityResponseInternalServerError with default headers values
func NewAdminVerifyMessageProfanityResponseInternalServerError() *AdminVerifyMessageProfanityResponseInternalServerError {
	return &AdminVerifyMessageProfanityResponseInternalServerError{}
}

/*AdminVerifyMessageProfanityResponseInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminVerifyMessageProfanityResponseInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminVerifyMessageProfanityResponseInternalServerError) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/verify][%d] adminVerifyMessageProfanityResponseInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminVerifyMessageProfanityResponseInternalServerError) ToJSONString() string {
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

func (o *AdminVerifyMessageProfanityResponseInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminVerifyMessageProfanityResponseInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
