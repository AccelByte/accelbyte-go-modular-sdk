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

type FreeFormNotificationByUserIDResponse struct {
	lobbyclientmodels.ApiResponse

	Error400 *lobbyclientmodels.RestapiErrorResponseBody
	Error401 *lobbyclientmodels.RestapiErrorResponseBody
	Error403 *lobbyclientmodels.RestapiErrorResponseBody
	Error404 *lobbyclientmodels.RestapiErrorResponseBody
}

func (m *FreeFormNotificationByUserIDResponse) Unpack() *lobbyclientmodels.ApiError {
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

// FreeFormNotificationByUserIDReader is a Reader for the FreeFormNotificationByUserID structure.
type FreeFormNotificationByUserIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *FreeFormNotificationByUserIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewFreeFormNotificationByUserIDNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewFreeFormNotificationByUserIDBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewFreeFormNotificationByUserIDUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewFreeFormNotificationByUserIDForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewFreeFormNotificationByUserIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /notification/namespaces/{namespace}/users/{userId}/freeform returns an error %d: %s", response.Code(), string(data))
	}
}

// NewFreeFormNotificationByUserIDNoContent creates a FreeFormNotificationByUserIDNoContent with default headers values
func NewFreeFormNotificationByUserIDNoContent() *FreeFormNotificationByUserIDNoContent {
	return &FreeFormNotificationByUserIDNoContent{}
}

/*FreeFormNotificationByUserIDNoContent handles this case with default header values.

  No Content
*/
type FreeFormNotificationByUserIDNoContent struct {
}

func (o *FreeFormNotificationByUserIDNoContent) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/users/{userId}/freeform][%d] freeFormNotificationByUserIdNoContent ", 204)
}

func (o *FreeFormNotificationByUserIDNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewFreeFormNotificationByUserIDBadRequest creates a FreeFormNotificationByUserIDBadRequest with default headers values
func NewFreeFormNotificationByUserIDBadRequest() *FreeFormNotificationByUserIDBadRequest {
	return &FreeFormNotificationByUserIDBadRequest{}
}

/*FreeFormNotificationByUserIDBadRequest handles this case with default header values.

  Bad Request
*/
type FreeFormNotificationByUserIDBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *FreeFormNotificationByUserIDBadRequest) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/users/{userId}/freeform][%d] freeFormNotificationByUserIdBadRequest  %+v", 400, o.ToJSONString())
}

func (o *FreeFormNotificationByUserIDBadRequest) ToJSONString() string {
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

func (o *FreeFormNotificationByUserIDBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *FreeFormNotificationByUserIDBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewFreeFormNotificationByUserIDUnauthorized creates a FreeFormNotificationByUserIDUnauthorized with default headers values
func NewFreeFormNotificationByUserIDUnauthorized() *FreeFormNotificationByUserIDUnauthorized {
	return &FreeFormNotificationByUserIDUnauthorized{}
}

/*FreeFormNotificationByUserIDUnauthorized handles this case with default header values.

  Unauthorized
*/
type FreeFormNotificationByUserIDUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *FreeFormNotificationByUserIDUnauthorized) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/users/{userId}/freeform][%d] freeFormNotificationByUserIdUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *FreeFormNotificationByUserIDUnauthorized) ToJSONString() string {
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

func (o *FreeFormNotificationByUserIDUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *FreeFormNotificationByUserIDUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewFreeFormNotificationByUserIDForbidden creates a FreeFormNotificationByUserIDForbidden with default headers values
func NewFreeFormNotificationByUserIDForbidden() *FreeFormNotificationByUserIDForbidden {
	return &FreeFormNotificationByUserIDForbidden{}
}

/*FreeFormNotificationByUserIDForbidden handles this case with default header values.

  Forbidden
*/
type FreeFormNotificationByUserIDForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *FreeFormNotificationByUserIDForbidden) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/users/{userId}/freeform][%d] freeFormNotificationByUserIdForbidden  %+v", 403, o.ToJSONString())
}

func (o *FreeFormNotificationByUserIDForbidden) ToJSONString() string {
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

func (o *FreeFormNotificationByUserIDForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *FreeFormNotificationByUserIDForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewFreeFormNotificationByUserIDNotFound creates a FreeFormNotificationByUserIDNotFound with default headers values
func NewFreeFormNotificationByUserIDNotFound() *FreeFormNotificationByUserIDNotFound {
	return &FreeFormNotificationByUserIDNotFound{}
}

/*FreeFormNotificationByUserIDNotFound handles this case with default header values.

  Not Found
*/
type FreeFormNotificationByUserIDNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *FreeFormNotificationByUserIDNotFound) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/users/{userId}/freeform][%d] freeFormNotificationByUserIdNotFound  %+v", 404, o.ToJSONString())
}

func (o *FreeFormNotificationByUserIDNotFound) ToJSONString() string {
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

func (o *FreeFormNotificationByUserIDNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *FreeFormNotificationByUserIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
