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

type CreateTemplateResponse struct {
	lobbyclientmodels.ApiResponse

	Error400 *lobbyclientmodels.RestapiErrorResponseBody
	Error401 *lobbyclientmodels.RestapiErrorResponseBody
	Error403 *lobbyclientmodels.RestapiErrorResponseBody
	Error404 *lobbyclientmodels.RestapiErrorResponseBody
}

func (m *CreateTemplateResponse) Unpack() *lobbyclientmodels.ApiError {
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

// CreateTemplateReader is a Reader for the CreateTemplate structure.
type CreateTemplateReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateTemplateReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewCreateTemplateNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateTemplateBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateTemplateUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateTemplateForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateTemplateNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /notification/namespaces/{namespace}/templates returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateTemplateNoContent creates a CreateTemplateNoContent with default headers values
func NewCreateTemplateNoContent() *CreateTemplateNoContent {
	return &CreateTemplateNoContent{}
}

/*CreateTemplateNoContent handles this case with default header values.

  No Content
*/
type CreateTemplateNoContent struct {
}

func (o *CreateTemplateNoContent) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/templates][%d] createTemplateNoContent ", 204)
}

func (o *CreateTemplateNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewCreateTemplateBadRequest creates a CreateTemplateBadRequest with default headers values
func NewCreateTemplateBadRequest() *CreateTemplateBadRequest {
	return &CreateTemplateBadRequest{}
}

/*CreateTemplateBadRequest handles this case with default header values.

  Bad Request
*/
type CreateTemplateBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *CreateTemplateBadRequest) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/templates][%d] createTemplateBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateTemplateBadRequest) ToJSONString() string {
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

func (o *CreateTemplateBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *CreateTemplateBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateTemplateUnauthorized creates a CreateTemplateUnauthorized with default headers values
func NewCreateTemplateUnauthorized() *CreateTemplateUnauthorized {
	return &CreateTemplateUnauthorized{}
}

/*CreateTemplateUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreateTemplateUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *CreateTemplateUnauthorized) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/templates][%d] createTemplateUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateTemplateUnauthorized) ToJSONString() string {
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

func (o *CreateTemplateUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *CreateTemplateUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateTemplateForbidden creates a CreateTemplateForbidden with default headers values
func NewCreateTemplateForbidden() *CreateTemplateForbidden {
	return &CreateTemplateForbidden{}
}

/*CreateTemplateForbidden handles this case with default header values.

  Forbidden
*/
type CreateTemplateForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *CreateTemplateForbidden) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/templates][%d] createTemplateForbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateTemplateForbidden) ToJSONString() string {
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

func (o *CreateTemplateForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *CreateTemplateForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateTemplateNotFound creates a CreateTemplateNotFound with default headers values
func NewCreateTemplateNotFound() *CreateTemplateNotFound {
	return &CreateTemplateNotFound{}
}

/*CreateTemplateNotFound handles this case with default header values.

  Not Found
*/
type CreateTemplateNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *CreateTemplateNotFound) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/templates][%d] createTemplateNotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateTemplateNotFound) ToJSONString() string {
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

func (o *CreateTemplateNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *CreateTemplateNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
