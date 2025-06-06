// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package notification

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

type GetSingleTemplateLocalizationV1AdminResponse struct {
	lobbyclientmodels.ApiResponse
	Data *lobbyclientmodels.ModelLocalization

	Error401 *lobbyclientmodels.RestapiErrorResponseV1
	Error403 *lobbyclientmodels.RestapiErrorResponseV1
	Error404 *lobbyclientmodels.RestapiErrorResponseV1
	Error500 *lobbyclientmodels.RestapiErrorResponseV1
}

func (m *GetSingleTemplateLocalizationV1AdminResponse) Unpack() (*lobbyclientmodels.ModelLocalization, *lobbyclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

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

// GetSingleTemplateLocalizationV1AdminReader is a Reader for the GetSingleTemplateLocalizationV1Admin structure.
type GetSingleTemplateLocalizationV1AdminReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetSingleTemplateLocalizationV1AdminReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetSingleTemplateLocalizationV1AdminOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetSingleTemplateLocalizationV1AdminUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetSingleTemplateLocalizationV1AdminForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetSingleTemplateLocalizationV1AdminNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetSingleTemplateLocalizationV1AdminInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetSingleTemplateLocalizationV1AdminOK creates a GetSingleTemplateLocalizationV1AdminOK with default headers values
func NewGetSingleTemplateLocalizationV1AdminOK() *GetSingleTemplateLocalizationV1AdminOK {
	return &GetSingleTemplateLocalizationV1AdminOK{}
}

/*GetSingleTemplateLocalizationV1AdminOK handles this case with default header values.

  OK
*/
type GetSingleTemplateLocalizationV1AdminOK struct {
	Payload *lobbyclientmodels.ModelLocalization
}

func (o *GetSingleTemplateLocalizationV1AdminOK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] getSingleTemplateLocalizationV1AdminOK  %+v", 200, o.ToJSONString())
}

func (o *GetSingleTemplateLocalizationV1AdminOK) ToJSONString() string {
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

func (o *GetSingleTemplateLocalizationV1AdminOK) GetPayload() *lobbyclientmodels.ModelLocalization {
	return o.Payload
}

func (o *GetSingleTemplateLocalizationV1AdminOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelLocalization)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetSingleTemplateLocalizationV1AdminUnauthorized creates a GetSingleTemplateLocalizationV1AdminUnauthorized with default headers values
func NewGetSingleTemplateLocalizationV1AdminUnauthorized() *GetSingleTemplateLocalizationV1AdminUnauthorized {
	return &GetSingleTemplateLocalizationV1AdminUnauthorized{}
}

/*GetSingleTemplateLocalizationV1AdminUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetSingleTemplateLocalizationV1AdminUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetSingleTemplateLocalizationV1AdminUnauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] getSingleTemplateLocalizationV1AdminUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetSingleTemplateLocalizationV1AdminUnauthorized) ToJSONString() string {
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

func (o *GetSingleTemplateLocalizationV1AdminUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetSingleTemplateLocalizationV1AdminUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetSingleTemplateLocalizationV1AdminForbidden creates a GetSingleTemplateLocalizationV1AdminForbidden with default headers values
func NewGetSingleTemplateLocalizationV1AdminForbidden() *GetSingleTemplateLocalizationV1AdminForbidden {
	return &GetSingleTemplateLocalizationV1AdminForbidden{}
}

/*GetSingleTemplateLocalizationV1AdminForbidden handles this case with default header values.

  Forbidden
*/
type GetSingleTemplateLocalizationV1AdminForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetSingleTemplateLocalizationV1AdminForbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] getSingleTemplateLocalizationV1AdminForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetSingleTemplateLocalizationV1AdminForbidden) ToJSONString() string {
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

func (o *GetSingleTemplateLocalizationV1AdminForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetSingleTemplateLocalizationV1AdminForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetSingleTemplateLocalizationV1AdminNotFound creates a GetSingleTemplateLocalizationV1AdminNotFound with default headers values
func NewGetSingleTemplateLocalizationV1AdminNotFound() *GetSingleTemplateLocalizationV1AdminNotFound {
	return &GetSingleTemplateLocalizationV1AdminNotFound{}
}

/*GetSingleTemplateLocalizationV1AdminNotFound handles this case with default header values.

  Not Found
*/
type GetSingleTemplateLocalizationV1AdminNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetSingleTemplateLocalizationV1AdminNotFound) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] getSingleTemplateLocalizationV1AdminNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetSingleTemplateLocalizationV1AdminNotFound) ToJSONString() string {
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

func (o *GetSingleTemplateLocalizationV1AdminNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetSingleTemplateLocalizationV1AdminNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetSingleTemplateLocalizationV1AdminInternalServerError creates a GetSingleTemplateLocalizationV1AdminInternalServerError with default headers values
func NewGetSingleTemplateLocalizationV1AdminInternalServerError() *GetSingleTemplateLocalizationV1AdminInternalServerError {
	return &GetSingleTemplateLocalizationV1AdminInternalServerError{}
}

/*GetSingleTemplateLocalizationV1AdminInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetSingleTemplateLocalizationV1AdminInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetSingleTemplateLocalizationV1AdminInternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] getSingleTemplateLocalizationV1AdminInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetSingleTemplateLocalizationV1AdminInternalServerError) ToJSONString() string {
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

func (o *GetSingleTemplateLocalizationV1AdminInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetSingleTemplateLocalizationV1AdminInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
