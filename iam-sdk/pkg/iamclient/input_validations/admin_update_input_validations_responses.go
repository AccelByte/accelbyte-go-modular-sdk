// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package input_validations

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
)

type AdminUpdateInputValidationsResponse struct {
	iamclientmodels.ApiResponse

	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 *iamclientmodels.RestErrorResponse
}

func (m *AdminUpdateInputValidationsResponse) Unpack() *iamclientmodels.ApiError {
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

		default:
			return &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// AdminUpdateInputValidationsReader is a Reader for the AdminUpdateInputValidations structure.
type AdminUpdateInputValidationsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateInputValidationsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminUpdateInputValidationsNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateInputValidationsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateInputValidationsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateInputValidationsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/v3/admin/inputValidations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateInputValidationsNoContent creates a AdminUpdateInputValidationsNoContent with default headers values
func NewAdminUpdateInputValidationsNoContent() *AdminUpdateInputValidationsNoContent {
	return &AdminUpdateInputValidationsNoContent{}
}

/*AdminUpdateInputValidationsNoContent handles this case with default header values.

  No Content
*/
type AdminUpdateInputValidationsNoContent struct {
}

func (o *AdminUpdateInputValidationsNoContent) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/inputValidations][%d] adminUpdateInputValidationsNoContent ", 204)
}

func (o *AdminUpdateInputValidationsNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminUpdateInputValidationsUnauthorized creates a AdminUpdateInputValidationsUnauthorized with default headers values
func NewAdminUpdateInputValidationsUnauthorized() *AdminUpdateInputValidationsUnauthorized {
	return &AdminUpdateInputValidationsUnauthorized{}
}

/*AdminUpdateInputValidationsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUpdateInputValidationsUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateInputValidationsUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/inputValidations][%d] adminUpdateInputValidationsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateInputValidationsUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateInputValidationsUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateInputValidationsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateInputValidationsForbidden creates a AdminUpdateInputValidationsForbidden with default headers values
func NewAdminUpdateInputValidationsForbidden() *AdminUpdateInputValidationsForbidden {
	return &AdminUpdateInputValidationsForbidden{}
}

/*AdminUpdateInputValidationsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminUpdateInputValidationsForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateInputValidationsForbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/inputValidations][%d] adminUpdateInputValidationsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateInputValidationsForbidden) ToJSONString() string {
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

func (o *AdminUpdateInputValidationsForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateInputValidationsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateInputValidationsNotFound creates a AdminUpdateInputValidationsNotFound with default headers values
func NewAdminUpdateInputValidationsNotFound() *AdminUpdateInputValidationsNotFound {
	return &AdminUpdateInputValidationsNotFound{}
}

/*AdminUpdateInputValidationsNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10188</td><td>input validation field not found</td></tr></table>
*/
type AdminUpdateInputValidationsNotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateInputValidationsNotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/inputValidations][%d] adminUpdateInputValidationsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateInputValidationsNotFound) ToJSONString() string {
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

func (o *AdminUpdateInputValidationsNotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateInputValidationsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
