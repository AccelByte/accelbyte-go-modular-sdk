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

type AdminImportProfanityFiltersFromFileResponse struct {
	lobbyclientmodels.ApiResponse

	Error400 *lobbyclientmodels.RestapiErrorResponseBody
	Error401 *lobbyclientmodels.RestapiErrorResponseBody
	Error403 *lobbyclientmodels.RestapiErrorResponseBody
	Error404 *lobbyclientmodels.RestapiErrorResponseBody
	Error500 *lobbyclientmodels.RestapiErrorResponseBody
}

func (m *AdminImportProfanityFiltersFromFileResponse) Unpack() *lobbyclientmodels.ApiError {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 400:
			e, err := m.Error400.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 401:
			e, err := m.Error401.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 403:
			e, err := m.Error403.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 404:
			e, err := m.Error404.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 500:
			e, err := m.Error500.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		default:
			return &lobbyclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// AdminImportProfanityFiltersFromFileReader is a Reader for the AdminImportProfanityFiltersFromFile structure.
type AdminImportProfanityFiltersFromFileReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminImportProfanityFiltersFromFileReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminImportProfanityFiltersFromFileOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminImportProfanityFiltersFromFileBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminImportProfanityFiltersFromFileUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminImportProfanityFiltersFromFileForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminImportProfanityFiltersFromFileNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminImportProfanityFiltersFromFileInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/bulk-file returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminImportProfanityFiltersFromFileOK creates a AdminImportProfanityFiltersFromFileOK with default headers values
func NewAdminImportProfanityFiltersFromFileOK() *AdminImportProfanityFiltersFromFileOK {
	return &AdminImportProfanityFiltersFromFileOK{}
}

/*AdminImportProfanityFiltersFromFileOK handles this case with default header values.

  OK
*/
type AdminImportProfanityFiltersFromFileOK struct {
}

func (o *AdminImportProfanityFiltersFromFileOK) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/bulk-file][%d] adminImportProfanityFiltersFromFileOK ", 200)
}

func (o *AdminImportProfanityFiltersFromFileOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminImportProfanityFiltersFromFileBadRequest creates a AdminImportProfanityFiltersFromFileBadRequest with default headers values
func NewAdminImportProfanityFiltersFromFileBadRequest() *AdminImportProfanityFiltersFromFileBadRequest {
	return &AdminImportProfanityFiltersFromFileBadRequest{}
}

/*AdminImportProfanityFiltersFromFileBadRequest handles this case with default header values.

  Bad Request
*/
type AdminImportProfanityFiltersFromFileBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminImportProfanityFiltersFromFileBadRequest) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/bulk-file][%d] adminImportProfanityFiltersFromFileBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminImportProfanityFiltersFromFileBadRequest) ToJSONString() string {
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

func (o *AdminImportProfanityFiltersFromFileBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminImportProfanityFiltersFromFileBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminImportProfanityFiltersFromFileUnauthorized creates a AdminImportProfanityFiltersFromFileUnauthorized with default headers values
func NewAdminImportProfanityFiltersFromFileUnauthorized() *AdminImportProfanityFiltersFromFileUnauthorized {
	return &AdminImportProfanityFiltersFromFileUnauthorized{}
}

/*AdminImportProfanityFiltersFromFileUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminImportProfanityFiltersFromFileUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminImportProfanityFiltersFromFileUnauthorized) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/bulk-file][%d] adminImportProfanityFiltersFromFileUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminImportProfanityFiltersFromFileUnauthorized) ToJSONString() string {
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

func (o *AdminImportProfanityFiltersFromFileUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminImportProfanityFiltersFromFileUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminImportProfanityFiltersFromFileForbidden creates a AdminImportProfanityFiltersFromFileForbidden with default headers values
func NewAdminImportProfanityFiltersFromFileForbidden() *AdminImportProfanityFiltersFromFileForbidden {
	return &AdminImportProfanityFiltersFromFileForbidden{}
}

/*AdminImportProfanityFiltersFromFileForbidden handles this case with default header values.

  Forbidden
*/
type AdminImportProfanityFiltersFromFileForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminImportProfanityFiltersFromFileForbidden) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/bulk-file][%d] adminImportProfanityFiltersFromFileForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminImportProfanityFiltersFromFileForbidden) ToJSONString() string {
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

func (o *AdminImportProfanityFiltersFromFileForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminImportProfanityFiltersFromFileForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminImportProfanityFiltersFromFileNotFound creates a AdminImportProfanityFiltersFromFileNotFound with default headers values
func NewAdminImportProfanityFiltersFromFileNotFound() *AdminImportProfanityFiltersFromFileNotFound {
	return &AdminImportProfanityFiltersFromFileNotFound{}
}

/*AdminImportProfanityFiltersFromFileNotFound handles this case with default header values.

  Not Found
*/
type AdminImportProfanityFiltersFromFileNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminImportProfanityFiltersFromFileNotFound) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/bulk-file][%d] adminImportProfanityFiltersFromFileNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminImportProfanityFiltersFromFileNotFound) ToJSONString() string {
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

func (o *AdminImportProfanityFiltersFromFileNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminImportProfanityFiltersFromFileNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminImportProfanityFiltersFromFileInternalServerError creates a AdminImportProfanityFiltersFromFileInternalServerError with default headers values
func NewAdminImportProfanityFiltersFromFileInternalServerError() *AdminImportProfanityFiltersFromFileInternalServerError {
	return &AdminImportProfanityFiltersFromFileInternalServerError{}
}

/*AdminImportProfanityFiltersFromFileInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminImportProfanityFiltersFromFileInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminImportProfanityFiltersFromFileInternalServerError) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/bulk-file][%d] adminImportProfanityFiltersFromFileInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminImportProfanityFiltersFromFileInternalServerError) ToJSONString() string {
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

func (o *AdminImportProfanityFiltersFromFileInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminImportProfanityFiltersFromFileInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
