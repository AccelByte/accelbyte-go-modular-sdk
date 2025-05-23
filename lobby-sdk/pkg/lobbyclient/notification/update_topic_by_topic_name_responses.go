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

type UpdateTopicByTopicNameResponse struct {
	lobbyclientmodels.ApiResponse

	Error401 *lobbyclientmodels.RestapiErrorResponseBody
	Error403 *lobbyclientmodels.RestapiErrorResponseBody
	Error404 *lobbyclientmodels.RestapiErrorResponseBody
	Error500 *lobbyclientmodels.RestapiErrorResponseBody
}

func (m *UpdateTopicByTopicNameResponse) Unpack() *lobbyclientmodels.ApiError {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

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

// UpdateTopicByTopicNameReader is a Reader for the UpdateTopicByTopicName structure.
type UpdateTopicByTopicNameReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateTopicByTopicNameReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewUpdateTopicByTopicNameNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateTopicByTopicNameUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateTopicByTopicNameForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateTopicByTopicNameNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateTopicByTopicNameInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /notification/namespaces/{namespace}/topics/{topic} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateTopicByTopicNameNoContent creates a UpdateTopicByTopicNameNoContent with default headers values
func NewUpdateTopicByTopicNameNoContent() *UpdateTopicByTopicNameNoContent {
	return &UpdateTopicByTopicNameNoContent{}
}

/*UpdateTopicByTopicNameNoContent handles this case with default header values.

  No Content
*/
type UpdateTopicByTopicNameNoContent struct {
}

func (o *UpdateTopicByTopicNameNoContent) Error() string {
	return fmt.Sprintf("[PUT /notification/namespaces/{namespace}/topics/{topic}][%d] updateTopicByTopicNameNoContent ", 204)
}

func (o *UpdateTopicByTopicNameNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUpdateTopicByTopicNameUnauthorized creates a UpdateTopicByTopicNameUnauthorized with default headers values
func NewUpdateTopicByTopicNameUnauthorized() *UpdateTopicByTopicNameUnauthorized {
	return &UpdateTopicByTopicNameUnauthorized{}
}

/*UpdateTopicByTopicNameUnauthorized handles this case with default header values.

  Unauthorized
*/
type UpdateTopicByTopicNameUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *UpdateTopicByTopicNameUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /notification/namespaces/{namespace}/topics/{topic}][%d] updateTopicByTopicNameUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateTopicByTopicNameUnauthorized) ToJSONString() string {
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

func (o *UpdateTopicByTopicNameUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *UpdateTopicByTopicNameUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateTopicByTopicNameForbidden creates a UpdateTopicByTopicNameForbidden with default headers values
func NewUpdateTopicByTopicNameForbidden() *UpdateTopicByTopicNameForbidden {
	return &UpdateTopicByTopicNameForbidden{}
}

/*UpdateTopicByTopicNameForbidden handles this case with default header values.

  Forbidden
*/
type UpdateTopicByTopicNameForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *UpdateTopicByTopicNameForbidden) Error() string {
	return fmt.Sprintf("[PUT /notification/namespaces/{namespace}/topics/{topic}][%d] updateTopicByTopicNameForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateTopicByTopicNameForbidden) ToJSONString() string {
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

func (o *UpdateTopicByTopicNameForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *UpdateTopicByTopicNameForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateTopicByTopicNameNotFound creates a UpdateTopicByTopicNameNotFound with default headers values
func NewUpdateTopicByTopicNameNotFound() *UpdateTopicByTopicNameNotFound {
	return &UpdateTopicByTopicNameNotFound{}
}

/*UpdateTopicByTopicNameNotFound handles this case with default header values.

  Not Found
*/
type UpdateTopicByTopicNameNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *UpdateTopicByTopicNameNotFound) Error() string {
	return fmt.Sprintf("[PUT /notification/namespaces/{namespace}/topics/{topic}][%d] updateTopicByTopicNameNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateTopicByTopicNameNotFound) ToJSONString() string {
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

func (o *UpdateTopicByTopicNameNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *UpdateTopicByTopicNameNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateTopicByTopicNameInternalServerError creates a UpdateTopicByTopicNameInternalServerError with default headers values
func NewUpdateTopicByTopicNameInternalServerError() *UpdateTopicByTopicNameInternalServerError {
	return &UpdateTopicByTopicNameInternalServerError{}
}

/*UpdateTopicByTopicNameInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateTopicByTopicNameInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *UpdateTopicByTopicNameInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /notification/namespaces/{namespace}/topics/{topic}][%d] updateTopicByTopicNameInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateTopicByTopicNameInternalServerError) ToJSONString() string {
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

func (o *UpdateTopicByTopicNameInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *UpdateTopicByTopicNameInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
