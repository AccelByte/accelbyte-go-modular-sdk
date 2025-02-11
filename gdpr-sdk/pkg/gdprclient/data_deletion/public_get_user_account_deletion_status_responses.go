// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package data_deletion

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclientmodels"
)

type PublicGetUserAccountDeletionStatusResponse struct {
	gdprclientmodels.ApiResponse
	Data *gdprclientmodels.ModelsDeletionStatus

	Error401 *gdprclientmodels.ResponseError
	Error403 *gdprclientmodels.ResponseError
	Error500 *gdprclientmodels.ResponseError
}

func (m *PublicGetUserAccountDeletionStatusResponse) Unpack() (*gdprclientmodels.ModelsDeletionStatus, *gdprclientmodels.ApiError) {
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

		case 500:
			e, err := m.Error500.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		default:
			return nil, &gdprclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// PublicGetUserAccountDeletionStatusReader is a Reader for the PublicGetUserAccountDeletionStatus structure.
type PublicGetUserAccountDeletionStatusReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetUserAccountDeletionStatusReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetUserAccountDeletionStatusOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetUserAccountDeletionStatusUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetUserAccountDeletionStatusForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetUserAccountDeletionStatusInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /gdpr/public/namespaces/{namespace}/users/{userId}/deletions/status returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetUserAccountDeletionStatusOK creates a PublicGetUserAccountDeletionStatusOK with default headers values
func NewPublicGetUserAccountDeletionStatusOK() *PublicGetUserAccountDeletionStatusOK {
	return &PublicGetUserAccountDeletionStatusOK{}
}

/*PublicGetUserAccountDeletionStatusOK handles this case with default header values.

  OK
*/
type PublicGetUserAccountDeletionStatusOK struct {
	Payload *gdprclientmodels.ModelsDeletionStatus
}

func (o *PublicGetUserAccountDeletionStatusOK) Error() string {
	return fmt.Sprintf("[GET /gdpr/public/namespaces/{namespace}/users/{userId}/deletions/status][%d] publicGetUserAccountDeletionStatusOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetUserAccountDeletionStatusOK) ToJSONString() string {
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

func (o *PublicGetUserAccountDeletionStatusOK) GetPayload() *gdprclientmodels.ModelsDeletionStatus {
	return o.Payload
}

func (o *PublicGetUserAccountDeletionStatusOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ModelsDeletionStatus)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserAccountDeletionStatusUnauthorized creates a PublicGetUserAccountDeletionStatusUnauthorized with default headers values
func NewPublicGetUserAccountDeletionStatusUnauthorized() *PublicGetUserAccountDeletionStatusUnauthorized {
	return &PublicGetUserAccountDeletionStatusUnauthorized{}
}

/*PublicGetUserAccountDeletionStatusUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGetUserAccountDeletionStatusUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicGetUserAccountDeletionStatusUnauthorized) Error() string {
	return fmt.Sprintf("[GET /gdpr/public/namespaces/{namespace}/users/{userId}/deletions/status][%d] publicGetUserAccountDeletionStatusUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetUserAccountDeletionStatusUnauthorized) ToJSONString() string {
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

func (o *PublicGetUserAccountDeletionStatusUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetUserAccountDeletionStatusUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserAccountDeletionStatusForbidden creates a PublicGetUserAccountDeletionStatusForbidden with default headers values
func NewPublicGetUserAccountDeletionStatusForbidden() *PublicGetUserAccountDeletionStatusForbidden {
	return &PublicGetUserAccountDeletionStatusForbidden{}
}

/*PublicGetUserAccountDeletionStatusForbidden handles this case with default header values.

  Forbidden
*/
type PublicGetUserAccountDeletionStatusForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicGetUserAccountDeletionStatusForbidden) Error() string {
	return fmt.Sprintf("[GET /gdpr/public/namespaces/{namespace}/users/{userId}/deletions/status][%d] publicGetUserAccountDeletionStatusForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetUserAccountDeletionStatusForbidden) ToJSONString() string {
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

func (o *PublicGetUserAccountDeletionStatusForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetUserAccountDeletionStatusForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserAccountDeletionStatusInternalServerError creates a PublicGetUserAccountDeletionStatusInternalServerError with default headers values
func NewPublicGetUserAccountDeletionStatusInternalServerError() *PublicGetUserAccountDeletionStatusInternalServerError {
	return &PublicGetUserAccountDeletionStatusInternalServerError{}
}

/*PublicGetUserAccountDeletionStatusInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGetUserAccountDeletionStatusInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicGetUserAccountDeletionStatusInternalServerError) Error() string {
	return fmt.Sprintf("[GET /gdpr/public/namespaces/{namespace}/users/{userId}/deletions/status][%d] publicGetUserAccountDeletionStatusInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetUserAccountDeletionStatusInternalServerError) ToJSONString() string {
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

func (o *PublicGetUserAccountDeletionStatusInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetUserAccountDeletionStatusInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
