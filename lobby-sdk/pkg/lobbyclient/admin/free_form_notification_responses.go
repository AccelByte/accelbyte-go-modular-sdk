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

type FreeFormNotificationResponse struct {
	lobbyclientmodels.ApiResponse

	Error400 *lobbyclientmodels.RestapiErrorResponseBody
	Error401 *lobbyclientmodels.RestapiErrorResponseBody
	Error403 *lobbyclientmodels.RestapiErrorResponseBody
	Error404 *lobbyclientmodels.RestapiErrorResponseBody
}

func (m *FreeFormNotificationResponse) Unpack() *lobbyclientmodels.ApiError {
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

// FreeFormNotificationReader is a Reader for the FreeFormNotification structure.
type FreeFormNotificationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *FreeFormNotificationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 202:
		result := NewFreeFormNotificationAccepted()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewFreeFormNotificationBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewFreeFormNotificationUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewFreeFormNotificationForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewFreeFormNotificationNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /notification/namespaces/{namespace}/freeform returns an error %d: %s", response.Code(), string(data))
	}
}

// NewFreeFormNotificationAccepted creates a FreeFormNotificationAccepted with default headers values
func NewFreeFormNotificationAccepted() *FreeFormNotificationAccepted {
	return &FreeFormNotificationAccepted{}
}

/*FreeFormNotificationAccepted handles this case with default header values.

  Accepted
*/
type FreeFormNotificationAccepted struct {
}

func (o *FreeFormNotificationAccepted) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/freeform][%d] freeFormNotificationAccepted ", 202)
}

func (o *FreeFormNotificationAccepted) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewFreeFormNotificationBadRequest creates a FreeFormNotificationBadRequest with default headers values
func NewFreeFormNotificationBadRequest() *FreeFormNotificationBadRequest {
	return &FreeFormNotificationBadRequest{}
}

/*FreeFormNotificationBadRequest handles this case with default header values.

  Bad Request
*/
type FreeFormNotificationBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *FreeFormNotificationBadRequest) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/freeform][%d] freeFormNotificationBadRequest  %+v", 400, o.ToJSONString())
}

func (o *FreeFormNotificationBadRequest) ToJSONString() string {
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

func (o *FreeFormNotificationBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *FreeFormNotificationBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewFreeFormNotificationUnauthorized creates a FreeFormNotificationUnauthorized with default headers values
func NewFreeFormNotificationUnauthorized() *FreeFormNotificationUnauthorized {
	return &FreeFormNotificationUnauthorized{}
}

/*FreeFormNotificationUnauthorized handles this case with default header values.

  Unauthorized
*/
type FreeFormNotificationUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *FreeFormNotificationUnauthorized) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/freeform][%d] freeFormNotificationUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *FreeFormNotificationUnauthorized) ToJSONString() string {
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

func (o *FreeFormNotificationUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *FreeFormNotificationUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewFreeFormNotificationForbidden creates a FreeFormNotificationForbidden with default headers values
func NewFreeFormNotificationForbidden() *FreeFormNotificationForbidden {
	return &FreeFormNotificationForbidden{}
}

/*FreeFormNotificationForbidden handles this case with default header values.

  Forbidden
*/
type FreeFormNotificationForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *FreeFormNotificationForbidden) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/freeform][%d] freeFormNotificationForbidden  %+v", 403, o.ToJSONString())
}

func (o *FreeFormNotificationForbidden) ToJSONString() string {
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

func (o *FreeFormNotificationForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *FreeFormNotificationForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewFreeFormNotificationNotFound creates a FreeFormNotificationNotFound with default headers values
func NewFreeFormNotificationNotFound() *FreeFormNotificationNotFound {
	return &FreeFormNotificationNotFound{}
}

/*FreeFormNotificationNotFound handles this case with default header values.

  Not Found
*/
type FreeFormNotificationNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *FreeFormNotificationNotFound) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/freeform][%d] freeFormNotificationNotFound  %+v", 404, o.ToJSONString())
}

func (o *FreeFormNotificationNotFound) ToJSONString() string {
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

func (o *FreeFormNotificationNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *FreeFormNotificationNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
