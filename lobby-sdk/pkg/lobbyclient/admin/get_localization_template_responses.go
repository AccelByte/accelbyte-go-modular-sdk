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

type GetLocalizationTemplateResponse struct {
	lobbyclientmodels.ApiResponse
	Data *lobbyclientmodels.ModelTemplateLocalization

	Error400 *lobbyclientmodels.RestapiErrorResponseBody
	Error401 *lobbyclientmodels.RestapiErrorResponseBody
	Error403 *lobbyclientmodels.RestapiErrorResponseBody
	Error404 *lobbyclientmodels.RestapiErrorResponseBody
}

func (m *GetLocalizationTemplateResponse) Unpack() (*lobbyclientmodels.ModelTemplateLocalization, *lobbyclientmodels.ApiError) {
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

		default:
			return nil, &lobbyclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// GetLocalizationTemplateReader is a Reader for the GetLocalizationTemplate structure.
type GetLocalizationTemplateReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetLocalizationTemplateReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetLocalizationTemplateOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetLocalizationTemplateBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetLocalizationTemplateUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetLocalizationTemplateForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetLocalizationTemplateNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetLocalizationTemplateOK creates a GetLocalizationTemplateOK with default headers values
func NewGetLocalizationTemplateOK() *GetLocalizationTemplateOK {
	return &GetLocalizationTemplateOK{}
}

/*GetLocalizationTemplateOK handles this case with default header values.

  OK
*/
type GetLocalizationTemplateOK struct {
	Payload *lobbyclientmodels.ModelTemplateLocalization
}

func (o *GetLocalizationTemplateOK) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] getLocalizationTemplateOK  %+v", 200, o.ToJSONString())
}

func (o *GetLocalizationTemplateOK) ToJSONString() string {
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

func (o *GetLocalizationTemplateOK) GetPayload() *lobbyclientmodels.ModelTemplateLocalization {
	return o.Payload
}

func (o *GetLocalizationTemplateOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelTemplateLocalization)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetLocalizationTemplateBadRequest creates a GetLocalizationTemplateBadRequest with default headers values
func NewGetLocalizationTemplateBadRequest() *GetLocalizationTemplateBadRequest {
	return &GetLocalizationTemplateBadRequest{}
}

/*GetLocalizationTemplateBadRequest handles this case with default header values.

  Bad Request
*/
type GetLocalizationTemplateBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetLocalizationTemplateBadRequest) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] getLocalizationTemplateBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetLocalizationTemplateBadRequest) ToJSONString() string {
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

func (o *GetLocalizationTemplateBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetLocalizationTemplateBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetLocalizationTemplateUnauthorized creates a GetLocalizationTemplateUnauthorized with default headers values
func NewGetLocalizationTemplateUnauthorized() *GetLocalizationTemplateUnauthorized {
	return &GetLocalizationTemplateUnauthorized{}
}

/*GetLocalizationTemplateUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetLocalizationTemplateUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetLocalizationTemplateUnauthorized) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] getLocalizationTemplateUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetLocalizationTemplateUnauthorized) ToJSONString() string {
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

func (o *GetLocalizationTemplateUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetLocalizationTemplateUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetLocalizationTemplateForbidden creates a GetLocalizationTemplateForbidden with default headers values
func NewGetLocalizationTemplateForbidden() *GetLocalizationTemplateForbidden {
	return &GetLocalizationTemplateForbidden{}
}

/*GetLocalizationTemplateForbidden handles this case with default header values.

  Forbidden
*/
type GetLocalizationTemplateForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetLocalizationTemplateForbidden) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] getLocalizationTemplateForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetLocalizationTemplateForbidden) ToJSONString() string {
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

func (o *GetLocalizationTemplateForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetLocalizationTemplateForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetLocalizationTemplateNotFound creates a GetLocalizationTemplateNotFound with default headers values
func NewGetLocalizationTemplateNotFound() *GetLocalizationTemplateNotFound {
	return &GetLocalizationTemplateNotFound{}
}

/*GetLocalizationTemplateNotFound handles this case with default header values.

  Not Found
*/
type GetLocalizationTemplateNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetLocalizationTemplateNotFound) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] getLocalizationTemplateNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetLocalizationTemplateNotFound) ToJSONString() string {
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

func (o *GetLocalizationTemplateNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetLocalizationTemplateNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
