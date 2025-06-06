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

type AdminSubmitUserAccountDeletionRequestResponse struct {
	gdprclientmodels.ApiResponse
	Data *gdprclientmodels.ModelsRequestDeleteResponse

	Error401 *gdprclientmodels.ResponseError
	Error403 *gdprclientmodels.ResponseError
	Error404 *gdprclientmodels.ResponseError
	Error409 *gdprclientmodels.ResponseError
	Error500 *gdprclientmodels.ResponseError
}

func (m *AdminSubmitUserAccountDeletionRequestResponse) Unpack() (*gdprclientmodels.ModelsRequestDeleteResponse, *gdprclientmodels.ApiError) {
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

		case 409:
			e, err := m.Error409.TranslateToApiError()
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

// AdminSubmitUserAccountDeletionRequestReader is a Reader for the AdminSubmitUserAccountDeletionRequest structure.
type AdminSubmitUserAccountDeletionRequestReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminSubmitUserAccountDeletionRequestReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminSubmitUserAccountDeletionRequestCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminSubmitUserAccountDeletionRequestUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminSubmitUserAccountDeletionRequestForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminSubmitUserAccountDeletionRequestNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminSubmitUserAccountDeletionRequestConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminSubmitUserAccountDeletionRequestInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminSubmitUserAccountDeletionRequestCreated creates a AdminSubmitUserAccountDeletionRequestCreated with default headers values
func NewAdminSubmitUserAccountDeletionRequestCreated() *AdminSubmitUserAccountDeletionRequestCreated {
	return &AdminSubmitUserAccountDeletionRequestCreated{}
}

/*AdminSubmitUserAccountDeletionRequestCreated handles this case with default header values.

  Created
*/
type AdminSubmitUserAccountDeletionRequestCreated struct {
	Payload *gdprclientmodels.ModelsRequestDeleteResponse
}

func (o *AdminSubmitUserAccountDeletionRequestCreated) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions][%d] adminSubmitUserAccountDeletionRequestCreated  %+v", 201, o.ToJSONString())
}

func (o *AdminSubmitUserAccountDeletionRequestCreated) ToJSONString() string {
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

func (o *AdminSubmitUserAccountDeletionRequestCreated) GetPayload() *gdprclientmodels.ModelsRequestDeleteResponse {
	return o.Payload
}

func (o *AdminSubmitUserAccountDeletionRequestCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ModelsRequestDeleteResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminSubmitUserAccountDeletionRequestUnauthorized creates a AdminSubmitUserAccountDeletionRequestUnauthorized with default headers values
func NewAdminSubmitUserAccountDeletionRequestUnauthorized() *AdminSubmitUserAccountDeletionRequestUnauthorized {
	return &AdminSubmitUserAccountDeletionRequestUnauthorized{}
}

/*AdminSubmitUserAccountDeletionRequestUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminSubmitUserAccountDeletionRequestUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminSubmitUserAccountDeletionRequestUnauthorized) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions][%d] adminSubmitUserAccountDeletionRequestUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminSubmitUserAccountDeletionRequestUnauthorized) ToJSONString() string {
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

func (o *AdminSubmitUserAccountDeletionRequestUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSubmitUserAccountDeletionRequestUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSubmitUserAccountDeletionRequestForbidden creates a AdminSubmitUserAccountDeletionRequestForbidden with default headers values
func NewAdminSubmitUserAccountDeletionRequestForbidden() *AdminSubmitUserAccountDeletionRequestForbidden {
	return &AdminSubmitUserAccountDeletionRequestForbidden{}
}

/*AdminSubmitUserAccountDeletionRequestForbidden handles this case with default header values.

  Forbidden
*/
type AdminSubmitUserAccountDeletionRequestForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminSubmitUserAccountDeletionRequestForbidden) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions][%d] adminSubmitUserAccountDeletionRequestForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminSubmitUserAccountDeletionRequestForbidden) ToJSONString() string {
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

func (o *AdminSubmitUserAccountDeletionRequestForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSubmitUserAccountDeletionRequestForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSubmitUserAccountDeletionRequestNotFound creates a AdminSubmitUserAccountDeletionRequestNotFound with default headers values
func NewAdminSubmitUserAccountDeletionRequestNotFound() *AdminSubmitUserAccountDeletionRequestNotFound {
	return &AdminSubmitUserAccountDeletionRequestNotFound{}
}

/*AdminSubmitUserAccountDeletionRequestNotFound handles this case with default header values.

  Not Found
*/
type AdminSubmitUserAccountDeletionRequestNotFound struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminSubmitUserAccountDeletionRequestNotFound) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions][%d] adminSubmitUserAccountDeletionRequestNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminSubmitUserAccountDeletionRequestNotFound) ToJSONString() string {
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

func (o *AdminSubmitUserAccountDeletionRequestNotFound) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSubmitUserAccountDeletionRequestNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSubmitUserAccountDeletionRequestConflict creates a AdminSubmitUserAccountDeletionRequestConflict with default headers values
func NewAdminSubmitUserAccountDeletionRequestConflict() *AdminSubmitUserAccountDeletionRequestConflict {
	return &AdminSubmitUserAccountDeletionRequestConflict{}
}

/*AdminSubmitUserAccountDeletionRequestConflict handles this case with default header values.

  Conflict
*/
type AdminSubmitUserAccountDeletionRequestConflict struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminSubmitUserAccountDeletionRequestConflict) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions][%d] adminSubmitUserAccountDeletionRequestConflict  %+v", 409, o.ToJSONString())
}

func (o *AdminSubmitUserAccountDeletionRequestConflict) ToJSONString() string {
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

func (o *AdminSubmitUserAccountDeletionRequestConflict) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSubmitUserAccountDeletionRequestConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSubmitUserAccountDeletionRequestInternalServerError creates a AdminSubmitUserAccountDeletionRequestInternalServerError with default headers values
func NewAdminSubmitUserAccountDeletionRequestInternalServerError() *AdminSubmitUserAccountDeletionRequestInternalServerError {
	return &AdminSubmitUserAccountDeletionRequestInternalServerError{}
}

/*AdminSubmitUserAccountDeletionRequestInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminSubmitUserAccountDeletionRequestInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminSubmitUserAccountDeletionRequestInternalServerError) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions][%d] adminSubmitUserAccountDeletionRequestInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminSubmitUserAccountDeletionRequestInternalServerError) ToJSONString() string {
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

func (o *AdminSubmitUserAccountDeletionRequestInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSubmitUserAccountDeletionRequestInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
