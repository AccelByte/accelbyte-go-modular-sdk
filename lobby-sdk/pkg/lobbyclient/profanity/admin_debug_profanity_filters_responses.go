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

type AdminDebugProfanityFiltersResponse struct {
	lobbyclientmodels.ApiResponse
	Data []*lobbyclientmodels.ModelsProfanityFilter

	Error400 *lobbyclientmodels.RestapiErrorResponseBody
	Error401 *lobbyclientmodels.RestapiErrorResponseBody
	Error403 *lobbyclientmodels.RestapiErrorResponseBody
	Error404 *lobbyclientmodels.RestapiErrorResponseBody
	Error500 *lobbyclientmodels.RestapiErrorResponseBody
}

func (m *AdminDebugProfanityFiltersResponse) Unpack() ([]*lobbyclientmodels.ModelsProfanityFilter, *lobbyclientmodels.ApiError) {
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

// AdminDebugProfanityFiltersReader is a Reader for the AdminDebugProfanityFilters structure.
type AdminDebugProfanityFiltersReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDebugProfanityFiltersReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminDebugProfanityFiltersOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDebugProfanityFiltersBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDebugProfanityFiltersUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDebugProfanityFiltersForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDebugProfanityFiltersNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDebugProfanityFiltersInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /lobby/v1/admin/profanity/namespaces/{namespace}/filters/debug returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDebugProfanityFiltersOK creates a AdminDebugProfanityFiltersOK with default headers values
func NewAdminDebugProfanityFiltersOK() *AdminDebugProfanityFiltersOK {
	return &AdminDebugProfanityFiltersOK{}
}

/*AdminDebugProfanityFiltersOK handles this case with default header values.

  OK
*/
type AdminDebugProfanityFiltersOK struct {
	Payload []*lobbyclientmodels.ModelsProfanityFilter
}

func (o *AdminDebugProfanityFiltersOK) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/filters/debug][%d] adminDebugProfanityFiltersOK  %+v", 200, o.ToJSONString())
}

func (o *AdminDebugProfanityFiltersOK) ToJSONString() string {
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

func (o *AdminDebugProfanityFiltersOK) GetPayload() []*lobbyclientmodels.ModelsProfanityFilter {
	return o.Payload
}

func (o *AdminDebugProfanityFiltersOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDebugProfanityFiltersBadRequest creates a AdminDebugProfanityFiltersBadRequest with default headers values
func NewAdminDebugProfanityFiltersBadRequest() *AdminDebugProfanityFiltersBadRequest {
	return &AdminDebugProfanityFiltersBadRequest{}
}

/*AdminDebugProfanityFiltersBadRequest handles this case with default header values.

  Bad Request
*/
type AdminDebugProfanityFiltersBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminDebugProfanityFiltersBadRequest) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/filters/debug][%d] adminDebugProfanityFiltersBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDebugProfanityFiltersBadRequest) ToJSONString() string {
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

func (o *AdminDebugProfanityFiltersBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDebugProfanityFiltersBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDebugProfanityFiltersUnauthorized creates a AdminDebugProfanityFiltersUnauthorized with default headers values
func NewAdminDebugProfanityFiltersUnauthorized() *AdminDebugProfanityFiltersUnauthorized {
	return &AdminDebugProfanityFiltersUnauthorized{}
}

/*AdminDebugProfanityFiltersUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminDebugProfanityFiltersUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminDebugProfanityFiltersUnauthorized) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/filters/debug][%d] adminDebugProfanityFiltersUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDebugProfanityFiltersUnauthorized) ToJSONString() string {
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

func (o *AdminDebugProfanityFiltersUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDebugProfanityFiltersUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDebugProfanityFiltersForbidden creates a AdminDebugProfanityFiltersForbidden with default headers values
func NewAdminDebugProfanityFiltersForbidden() *AdminDebugProfanityFiltersForbidden {
	return &AdminDebugProfanityFiltersForbidden{}
}

/*AdminDebugProfanityFiltersForbidden handles this case with default header values.

  Forbidden
*/
type AdminDebugProfanityFiltersForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminDebugProfanityFiltersForbidden) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/filters/debug][%d] adminDebugProfanityFiltersForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDebugProfanityFiltersForbidden) ToJSONString() string {
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

func (o *AdminDebugProfanityFiltersForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDebugProfanityFiltersForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDebugProfanityFiltersNotFound creates a AdminDebugProfanityFiltersNotFound with default headers values
func NewAdminDebugProfanityFiltersNotFound() *AdminDebugProfanityFiltersNotFound {
	return &AdminDebugProfanityFiltersNotFound{}
}

/*AdminDebugProfanityFiltersNotFound handles this case with default header values.

  Not Found
*/
type AdminDebugProfanityFiltersNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminDebugProfanityFiltersNotFound) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/filters/debug][%d] adminDebugProfanityFiltersNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDebugProfanityFiltersNotFound) ToJSONString() string {
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

func (o *AdminDebugProfanityFiltersNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDebugProfanityFiltersNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDebugProfanityFiltersInternalServerError creates a AdminDebugProfanityFiltersInternalServerError with default headers values
func NewAdminDebugProfanityFiltersInternalServerError() *AdminDebugProfanityFiltersInternalServerError {
	return &AdminDebugProfanityFiltersInternalServerError{}
}

/*AdminDebugProfanityFiltersInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminDebugProfanityFiltersInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminDebugProfanityFiltersInternalServerError) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/filters/debug][%d] adminDebugProfanityFiltersInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDebugProfanityFiltersInternalServerError) ToJSONString() string {
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

func (o *AdminDebugProfanityFiltersInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDebugProfanityFiltersInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
