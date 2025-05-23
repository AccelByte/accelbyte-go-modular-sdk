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

type SendMultipleUsersFreeformNotificationV1AdminResponse struct {
	lobbyclientmodels.ApiResponse

	Error400 *lobbyclientmodels.RestapiErrorResponseV1
	Error401 *lobbyclientmodels.RestapiErrorResponseV1
	Error403 *lobbyclientmodels.RestapiErrorResponseV1
}

func (m *SendMultipleUsersFreeformNotificationV1AdminResponse) Unpack() *lobbyclientmodels.ApiError {
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

		default:
			return &lobbyclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// SendMultipleUsersFreeformNotificationV1AdminReader is a Reader for the SendMultipleUsersFreeformNotificationV1Admin structure.
type SendMultipleUsersFreeformNotificationV1AdminReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SendMultipleUsersFreeformNotificationV1AdminReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewSendMultipleUsersFreeformNotificationV1AdminNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSendMultipleUsersFreeformNotificationV1AdminBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSendMultipleUsersFreeformNotificationV1AdminUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewSendMultipleUsersFreeformNotificationV1AdminForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /lobby/v1/admin/notification/namespaces/{namespace}/bulkUsers/freeform/notify returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSendMultipleUsersFreeformNotificationV1AdminNoContent creates a SendMultipleUsersFreeformNotificationV1AdminNoContent with default headers values
func NewSendMultipleUsersFreeformNotificationV1AdminNoContent() *SendMultipleUsersFreeformNotificationV1AdminNoContent {
	return &SendMultipleUsersFreeformNotificationV1AdminNoContent{}
}

/*SendMultipleUsersFreeformNotificationV1AdminNoContent handles this case with default header values.

  No Content
*/
type SendMultipleUsersFreeformNotificationV1AdminNoContent struct {
}

func (o *SendMultipleUsersFreeformNotificationV1AdminNoContent) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/bulkUsers/freeform/notify][%d] sendMultipleUsersFreeformNotificationV1AdminNoContent ", 204)
}

func (o *SendMultipleUsersFreeformNotificationV1AdminNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSendMultipleUsersFreeformNotificationV1AdminBadRequest creates a SendMultipleUsersFreeformNotificationV1AdminBadRequest with default headers values
func NewSendMultipleUsersFreeformNotificationV1AdminBadRequest() *SendMultipleUsersFreeformNotificationV1AdminBadRequest {
	return &SendMultipleUsersFreeformNotificationV1AdminBadRequest{}
}

/*SendMultipleUsersFreeformNotificationV1AdminBadRequest handles this case with default header values.

  Bad Request
*/
type SendMultipleUsersFreeformNotificationV1AdminBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SendMultipleUsersFreeformNotificationV1AdminBadRequest) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/bulkUsers/freeform/notify][%d] sendMultipleUsersFreeformNotificationV1AdminBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SendMultipleUsersFreeformNotificationV1AdminBadRequest) ToJSONString() string {
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

func (o *SendMultipleUsersFreeformNotificationV1AdminBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SendMultipleUsersFreeformNotificationV1AdminBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSendMultipleUsersFreeformNotificationV1AdminUnauthorized creates a SendMultipleUsersFreeformNotificationV1AdminUnauthorized with default headers values
func NewSendMultipleUsersFreeformNotificationV1AdminUnauthorized() *SendMultipleUsersFreeformNotificationV1AdminUnauthorized {
	return &SendMultipleUsersFreeformNotificationV1AdminUnauthorized{}
}

/*SendMultipleUsersFreeformNotificationV1AdminUnauthorized handles this case with default header values.

  Unauthorized
*/
type SendMultipleUsersFreeformNotificationV1AdminUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SendMultipleUsersFreeformNotificationV1AdminUnauthorized) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/bulkUsers/freeform/notify][%d] sendMultipleUsersFreeformNotificationV1AdminUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *SendMultipleUsersFreeformNotificationV1AdminUnauthorized) ToJSONString() string {
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

func (o *SendMultipleUsersFreeformNotificationV1AdminUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SendMultipleUsersFreeformNotificationV1AdminUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSendMultipleUsersFreeformNotificationV1AdminForbidden creates a SendMultipleUsersFreeformNotificationV1AdminForbidden with default headers values
func NewSendMultipleUsersFreeformNotificationV1AdminForbidden() *SendMultipleUsersFreeformNotificationV1AdminForbidden {
	return &SendMultipleUsersFreeformNotificationV1AdminForbidden{}
}

/*SendMultipleUsersFreeformNotificationV1AdminForbidden handles this case with default header values.

  Forbidden
*/
type SendMultipleUsersFreeformNotificationV1AdminForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *SendMultipleUsersFreeformNotificationV1AdminForbidden) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/bulkUsers/freeform/notify][%d] sendMultipleUsersFreeformNotificationV1AdminForbidden  %+v", 403, o.ToJSONString())
}

func (o *SendMultipleUsersFreeformNotificationV1AdminForbidden) ToJSONString() string {
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

func (o *SendMultipleUsersFreeformNotificationV1AdminForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *SendMultipleUsersFreeformNotificationV1AdminForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
