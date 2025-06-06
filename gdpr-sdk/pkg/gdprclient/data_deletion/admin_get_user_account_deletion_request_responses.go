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

type AdminGetUserAccountDeletionRequestResponse struct {
	gdprclientmodels.ApiResponse
	Data *gdprclientmodels.ModelsDeletionData

	Error401 *gdprclientmodels.ResponseError
	Error403 *gdprclientmodels.ResponseError
	Error404 *gdprclientmodels.ResponseError
	Error500 *gdprclientmodels.ResponseError
}

func (m *AdminGetUserAccountDeletionRequestResponse) Unpack() (*gdprclientmodels.ModelsDeletionData, *gdprclientmodels.ApiError) {
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
			return nil, &gdprclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// AdminGetUserAccountDeletionRequestReader is a Reader for the AdminGetUserAccountDeletionRequest structure.
type AdminGetUserAccountDeletionRequestReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetUserAccountDeletionRequestReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetUserAccountDeletionRequestOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetUserAccountDeletionRequestUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetUserAccountDeletionRequestForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetUserAccountDeletionRequestNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetUserAccountDeletionRequestInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetUserAccountDeletionRequestOK creates a AdminGetUserAccountDeletionRequestOK with default headers values
func NewAdminGetUserAccountDeletionRequestOK() *AdminGetUserAccountDeletionRequestOK {
	return &AdminGetUserAccountDeletionRequestOK{}
}

/*AdminGetUserAccountDeletionRequestOK handles this case with default header values.

  OK
*/
type AdminGetUserAccountDeletionRequestOK struct {
	Payload *gdprclientmodels.ModelsDeletionData
}

func (o *AdminGetUserAccountDeletionRequestOK) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions][%d] adminGetUserAccountDeletionRequestOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetUserAccountDeletionRequestOK) ToJSONString() string {
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

func (o *AdminGetUserAccountDeletionRequestOK) GetPayload() *gdprclientmodels.ModelsDeletionData {
	return o.Payload
}

func (o *AdminGetUserAccountDeletionRequestOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ModelsDeletionData)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUserAccountDeletionRequestUnauthorized creates a AdminGetUserAccountDeletionRequestUnauthorized with default headers values
func NewAdminGetUserAccountDeletionRequestUnauthorized() *AdminGetUserAccountDeletionRequestUnauthorized {
	return &AdminGetUserAccountDeletionRequestUnauthorized{}
}

/*AdminGetUserAccountDeletionRequestUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetUserAccountDeletionRequestUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetUserAccountDeletionRequestUnauthorized) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions][%d] adminGetUserAccountDeletionRequestUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetUserAccountDeletionRequestUnauthorized) ToJSONString() string {
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

func (o *AdminGetUserAccountDeletionRequestUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetUserAccountDeletionRequestUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserAccountDeletionRequestForbidden creates a AdminGetUserAccountDeletionRequestForbidden with default headers values
func NewAdminGetUserAccountDeletionRequestForbidden() *AdminGetUserAccountDeletionRequestForbidden {
	return &AdminGetUserAccountDeletionRequestForbidden{}
}

/*AdminGetUserAccountDeletionRequestForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetUserAccountDeletionRequestForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetUserAccountDeletionRequestForbidden) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions][%d] adminGetUserAccountDeletionRequestForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetUserAccountDeletionRequestForbidden) ToJSONString() string {
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

func (o *AdminGetUserAccountDeletionRequestForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetUserAccountDeletionRequestForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserAccountDeletionRequestNotFound creates a AdminGetUserAccountDeletionRequestNotFound with default headers values
func NewAdminGetUserAccountDeletionRequestNotFound() *AdminGetUserAccountDeletionRequestNotFound {
	return &AdminGetUserAccountDeletionRequestNotFound{}
}

/*AdminGetUserAccountDeletionRequestNotFound handles this case with default header values.

  Not Found
*/
type AdminGetUserAccountDeletionRequestNotFound struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetUserAccountDeletionRequestNotFound) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions][%d] adminGetUserAccountDeletionRequestNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetUserAccountDeletionRequestNotFound) ToJSONString() string {
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

func (o *AdminGetUserAccountDeletionRequestNotFound) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetUserAccountDeletionRequestNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserAccountDeletionRequestInternalServerError creates a AdminGetUserAccountDeletionRequestInternalServerError with default headers values
func NewAdminGetUserAccountDeletionRequestInternalServerError() *AdminGetUserAccountDeletionRequestInternalServerError {
	return &AdminGetUserAccountDeletionRequestInternalServerError{}
}

/*AdminGetUserAccountDeletionRequestInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetUserAccountDeletionRequestInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetUserAccountDeletionRequestInternalServerError) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions][%d] adminGetUserAccountDeletionRequestInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetUserAccountDeletionRequestInternalServerError) ToJSONString() string {
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

func (o *AdminGetUserAccountDeletionRequestInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetUserAccountDeletionRequestInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
