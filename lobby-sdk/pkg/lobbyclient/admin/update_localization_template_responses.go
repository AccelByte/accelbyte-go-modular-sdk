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

type UpdateLocalizationTemplateResponse struct {
	lobbyclientmodels.ApiResponse

	Error400 *lobbyclientmodels.RestapiErrorResponseBody
	Error401 *lobbyclientmodels.RestapiErrorResponseBody
	Error403 *lobbyclientmodels.RestapiErrorResponseBody
	Error404 *lobbyclientmodels.RestapiErrorResponseBody
}

func (m *UpdateLocalizationTemplateResponse) Unpack() *lobbyclientmodels.ApiError {
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

// UpdateLocalizationTemplateReader is a Reader for the UpdateLocalizationTemplate structure.
type UpdateLocalizationTemplateReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateLocalizationTemplateReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewUpdateLocalizationTemplateNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateLocalizationTemplateBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateLocalizationTemplateUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateLocalizationTemplateForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateLocalizationTemplateNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateLocalizationTemplateNoContent creates a UpdateLocalizationTemplateNoContent with default headers values
func NewUpdateLocalizationTemplateNoContent() *UpdateLocalizationTemplateNoContent {
	return &UpdateLocalizationTemplateNoContent{}
}

/*UpdateLocalizationTemplateNoContent handles this case with default header values.

  No Content
*/
type UpdateLocalizationTemplateNoContent struct {
}

func (o *UpdateLocalizationTemplateNoContent) Error() string {
	return fmt.Sprintf("[PUT /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] updateLocalizationTemplateNoContent ", 204)
}

func (o *UpdateLocalizationTemplateNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUpdateLocalizationTemplateBadRequest creates a UpdateLocalizationTemplateBadRequest with default headers values
func NewUpdateLocalizationTemplateBadRequest() *UpdateLocalizationTemplateBadRequest {
	return &UpdateLocalizationTemplateBadRequest{}
}

/*UpdateLocalizationTemplateBadRequest handles this case with default header values.

  Bad Request
*/
type UpdateLocalizationTemplateBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *UpdateLocalizationTemplateBadRequest) Error() string {
	return fmt.Sprintf("[PUT /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] updateLocalizationTemplateBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateLocalizationTemplateBadRequest) ToJSONString() string {
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

func (o *UpdateLocalizationTemplateBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *UpdateLocalizationTemplateBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateLocalizationTemplateUnauthorized creates a UpdateLocalizationTemplateUnauthorized with default headers values
func NewUpdateLocalizationTemplateUnauthorized() *UpdateLocalizationTemplateUnauthorized {
	return &UpdateLocalizationTemplateUnauthorized{}
}

/*UpdateLocalizationTemplateUnauthorized handles this case with default header values.

  Unauthorized
*/
type UpdateLocalizationTemplateUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *UpdateLocalizationTemplateUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] updateLocalizationTemplateUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateLocalizationTemplateUnauthorized) ToJSONString() string {
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

func (o *UpdateLocalizationTemplateUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *UpdateLocalizationTemplateUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateLocalizationTemplateForbidden creates a UpdateLocalizationTemplateForbidden with default headers values
func NewUpdateLocalizationTemplateForbidden() *UpdateLocalizationTemplateForbidden {
	return &UpdateLocalizationTemplateForbidden{}
}

/*UpdateLocalizationTemplateForbidden handles this case with default header values.

  Forbidden
*/
type UpdateLocalizationTemplateForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *UpdateLocalizationTemplateForbidden) Error() string {
	return fmt.Sprintf("[PUT /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] updateLocalizationTemplateForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateLocalizationTemplateForbidden) ToJSONString() string {
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

func (o *UpdateLocalizationTemplateForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *UpdateLocalizationTemplateForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateLocalizationTemplateNotFound creates a UpdateLocalizationTemplateNotFound with default headers values
func NewUpdateLocalizationTemplateNotFound() *UpdateLocalizationTemplateNotFound {
	return &UpdateLocalizationTemplateNotFound{}
}

/*UpdateLocalizationTemplateNotFound handles this case with default header values.

  Not Found
*/
type UpdateLocalizationTemplateNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *UpdateLocalizationTemplateNotFound) Error() string {
	return fmt.Sprintf("[PUT /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] updateLocalizationTemplateNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateLocalizationTemplateNotFound) ToJSONString() string {
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

func (o *UpdateLocalizationTemplateNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *UpdateLocalizationTemplateNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
