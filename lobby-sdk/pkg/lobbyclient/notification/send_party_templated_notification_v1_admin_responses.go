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

type SendPartyTemplatedNotificationV1AdminResponse struct {
	lobbyclientmodels.ApiResponse

	Error400 *lobbyclientmodels.RestapiErrorResponseV1
	Error401 *lobbyclientmodels.RestapiErrorResponseV1
	Error403 *lobbyclientmodels.RestapiErrorResponseV1
	Error404 *lobbyclientmodels.RestapiErrorResponseV1
}

func (m *SendPartyTemplatedNotificationV1AdminResponse) Unpack() *lobbyclientmodels.ApiError {
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

// SendPartyTemplatedNotificationV1AdminReader is a Reader for the SendPartyTemplatedNotificationV1Admin structure.
type SendPartyTemplatedNotificationV1AdminReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SendPartyTemplatedNotificationV1AdminReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewSendPartyTemplatedNotificationV1AdminNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSendPartyTemplatedNotificationV1AdminBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSendPartyTemplatedNotificationV1AdminUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewSendPartyTemplatedNotificationV1AdminForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSendPartyTemplatedNotificationV1AdminNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /lobby/v1/admin/notification/namespaces/{namespace}/parties/{partyId}/templates/notify returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSendPartyTemplatedNotificationV1AdminNoContent creates a SendPartyTemplatedNotificationV1AdminNoContent with default headers values
func NewSendPartyTemplatedNotificationV1AdminNoContent() *SendPartyTemplatedNotificationV1AdminNoContent {
	return &SendPartyTemplatedNotificationV1AdminNoContent{}
}

/*SendPartyTemplatedNotificationV1AdminNoContent handles this case with default header values.

  No Content
*/
type SendPartyTemplatedNotificationV1AdminNoContent struct {
}

func (o *SendPartyTemplatedNotificationV1AdminNoContent) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/parties/{partyId}/templates/notify][%d] sendPartyTemplatedNotificationV1AdminNoContent ", 204)
}

func (o *SendPartyTemplatedNotificationV1AdminNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSendPartyTemplatedNotificationV1AdminBadRequest creates a SendPartyTemplatedNotificationV1AdminBadRequest with default headers values
func NewSendPartyTemplatedNotificationV1AdminBadRequest() *SendPartyTemplatedNotificationV1AdminBadRequest {
	return &SendPartyTemplatedNotificationV1AdminBadRequest{}
}

/*SendPartyTemplatedNotificationV1AdminBadRequest handles this case with default header values.

  Bad Request
*/
type SendPartyTemplatedNotificationV1AdminBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SendPartyTemplatedNotificationV1AdminBadRequest) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/parties/{partyId}/templates/notify][%d] sendPartyTemplatedNotificationV1AdminBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SendPartyTemplatedNotificationV1AdminBadRequest) ToJSONString() string {
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

func (o *SendPartyTemplatedNotificationV1AdminBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SendPartyTemplatedNotificationV1AdminBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSendPartyTemplatedNotificationV1AdminUnauthorized creates a SendPartyTemplatedNotificationV1AdminUnauthorized with default headers values
func NewSendPartyTemplatedNotificationV1AdminUnauthorized() *SendPartyTemplatedNotificationV1AdminUnauthorized {
	return &SendPartyTemplatedNotificationV1AdminUnauthorized{}
}

/*SendPartyTemplatedNotificationV1AdminUnauthorized handles this case with default header values.

  Unauthorized
*/
type SendPartyTemplatedNotificationV1AdminUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SendPartyTemplatedNotificationV1AdminUnauthorized) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/parties/{partyId}/templates/notify][%d] sendPartyTemplatedNotificationV1AdminUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *SendPartyTemplatedNotificationV1AdminUnauthorized) ToJSONString() string {
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

func (o *SendPartyTemplatedNotificationV1AdminUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SendPartyTemplatedNotificationV1AdminUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSendPartyTemplatedNotificationV1AdminForbidden creates a SendPartyTemplatedNotificationV1AdminForbidden with default headers values
func NewSendPartyTemplatedNotificationV1AdminForbidden() *SendPartyTemplatedNotificationV1AdminForbidden {
	return &SendPartyTemplatedNotificationV1AdminForbidden{}
}

/*SendPartyTemplatedNotificationV1AdminForbidden handles this case with default header values.

  Forbidden
*/
type SendPartyTemplatedNotificationV1AdminForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SendPartyTemplatedNotificationV1AdminForbidden) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/parties/{partyId}/templates/notify][%d] sendPartyTemplatedNotificationV1AdminForbidden  %+v", 403, o.ToJSONString())
}

func (o *SendPartyTemplatedNotificationV1AdminForbidden) ToJSONString() string {
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

func (o *SendPartyTemplatedNotificationV1AdminForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SendPartyTemplatedNotificationV1AdminForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSendPartyTemplatedNotificationV1AdminNotFound creates a SendPartyTemplatedNotificationV1AdminNotFound with default headers values
func NewSendPartyTemplatedNotificationV1AdminNotFound() *SendPartyTemplatedNotificationV1AdminNotFound {
	return &SendPartyTemplatedNotificationV1AdminNotFound{}
}

/*SendPartyTemplatedNotificationV1AdminNotFound handles this case with default header values.

  Not Found
*/
type SendPartyTemplatedNotificationV1AdminNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SendPartyTemplatedNotificationV1AdminNotFound) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/parties/{partyId}/templates/notify][%d] sendPartyTemplatedNotificationV1AdminNotFound  %+v", 404, o.ToJSONString())
}

func (o *SendPartyTemplatedNotificationV1AdminNotFound) ToJSONString() string {
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

func (o *SendPartyTemplatedNotificationV1AdminNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SendPartyTemplatedNotificationV1AdminNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
