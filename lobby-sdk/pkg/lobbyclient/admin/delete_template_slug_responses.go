// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin

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

type DeleteTemplateSlugResponse struct {
	lobbyclientmodels.ApiResponse

	Error400 *lobbyclientmodels.RestapiErrorResponseBody
	Error401 *lobbyclientmodels.RestapiErrorResponseBody
	Error403 *lobbyclientmodels.RestapiErrorResponseBody
	Error404 *lobbyclientmodels.RestapiErrorResponseBody
}

func (m *DeleteTemplateSlugResponse) Unpack() *lobbyclientmodels.ApiError {
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

		default:
			return &lobbyclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// DeleteTemplateSlugReader is a Reader for the DeleteTemplateSlug structure.
type DeleteTemplateSlugReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteTemplateSlugReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteTemplateSlugNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteTemplateSlugBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteTemplateSlugUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteTemplateSlugForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteTemplateSlugNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /notification/namespaces/{namespace}/templates/{templateSlug} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteTemplateSlugNoContent creates a DeleteTemplateSlugNoContent with default headers values
func NewDeleteTemplateSlugNoContent() *DeleteTemplateSlugNoContent {
	return &DeleteTemplateSlugNoContent{}
}

/*DeleteTemplateSlugNoContent handles this case with default header values.

  No Content
*/
type DeleteTemplateSlugNoContent struct {
}

func (o *DeleteTemplateSlugNoContent) Error() string {
	return fmt.Sprintf("[DELETE /notification/namespaces/{namespace}/templates/{templateSlug}][%d] deleteTemplateSlugNoContent ", 204)
}

func (o *DeleteTemplateSlugNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteTemplateSlugBadRequest creates a DeleteTemplateSlugBadRequest with default headers values
func NewDeleteTemplateSlugBadRequest() *DeleteTemplateSlugBadRequest {
	return &DeleteTemplateSlugBadRequest{}
}

/*DeleteTemplateSlugBadRequest handles this case with default header values.

  Bad Request
*/
type DeleteTemplateSlugBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *DeleteTemplateSlugBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /notification/namespaces/{namespace}/templates/{templateSlug}][%d] deleteTemplateSlugBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteTemplateSlugBadRequest) ToJSONString() string {
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

func (o *DeleteTemplateSlugBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *DeleteTemplateSlugBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteTemplateSlugUnauthorized creates a DeleteTemplateSlugUnauthorized with default headers values
func NewDeleteTemplateSlugUnauthorized() *DeleteTemplateSlugUnauthorized {
	return &DeleteTemplateSlugUnauthorized{}
}

/*DeleteTemplateSlugUnauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteTemplateSlugUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *DeleteTemplateSlugUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /notification/namespaces/{namespace}/templates/{templateSlug}][%d] deleteTemplateSlugUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteTemplateSlugUnauthorized) ToJSONString() string {
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

func (o *DeleteTemplateSlugUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *DeleteTemplateSlugUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteTemplateSlugForbidden creates a DeleteTemplateSlugForbidden with default headers values
func NewDeleteTemplateSlugForbidden() *DeleteTemplateSlugForbidden {
	return &DeleteTemplateSlugForbidden{}
}

/*DeleteTemplateSlugForbidden handles this case with default header values.

  Forbidden
*/
type DeleteTemplateSlugForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *DeleteTemplateSlugForbidden) Error() string {
	return fmt.Sprintf("[DELETE /notification/namespaces/{namespace}/templates/{templateSlug}][%d] deleteTemplateSlugForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteTemplateSlugForbidden) ToJSONString() string {
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

func (o *DeleteTemplateSlugForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *DeleteTemplateSlugForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteTemplateSlugNotFound creates a DeleteTemplateSlugNotFound with default headers values
func NewDeleteTemplateSlugNotFound() *DeleteTemplateSlugNotFound {
	return &DeleteTemplateSlugNotFound{}
}

/*DeleteTemplateSlugNotFound handles this case with default header values.

  Not Found
*/
type DeleteTemplateSlugNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *DeleteTemplateSlugNotFound) Error() string {
	return fmt.Sprintf("[DELETE /notification/namespaces/{namespace}/templates/{templateSlug}][%d] deleteTemplateSlugNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteTemplateSlugNotFound) ToJSONString() string {
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

func (o *DeleteTemplateSlugNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *DeleteTemplateSlugNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
