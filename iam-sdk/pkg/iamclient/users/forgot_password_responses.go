// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

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

type ForgotPasswordResponse struct {
	iamclientmodels.ApiResponse

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 string
}

func (m *ForgotPasswordResponse) Unpack() *iamclientmodels.ApiError {
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
			return &iamclientmodels.ApiError{Code: "404", Message: m.Error404}

		default:
			return &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// ForgotPasswordReader is a Reader for the ForgotPassword structure.
type ForgotPasswordReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ForgotPasswordReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewForgotPasswordNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewForgotPasswordBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewForgotPasswordUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewForgotPasswordForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewForgotPasswordNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/namespaces/{namespace}/users/forgotPassword returns an error %d: %s", response.Code(), string(data))
	}
}

// NewForgotPasswordNoContent creates a ForgotPasswordNoContent with default headers values
func NewForgotPasswordNoContent() *ForgotPasswordNoContent {
	return &ForgotPasswordNoContent{}
}

/*
ForgotPasswordNoContent handles this case with default header values.

	Operation succeeded
*/
type ForgotPasswordNoContent struct {
}

func (o *ForgotPasswordNoContent) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/forgotPassword][%d] forgotPasswordNoContent ", 204)
}

func (o *ForgotPasswordNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewForgotPasswordBadRequest creates a ForgotPasswordBadRequest with default headers values
func NewForgotPasswordBadRequest() *ForgotPasswordBadRequest {
	return &ForgotPasswordBadRequest{}
}

/*
ForgotPasswordBadRequest handles this case with default header values.

	Invalid request
*/
type ForgotPasswordBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *ForgotPasswordBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/forgotPassword][%d] forgotPasswordBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ForgotPasswordBadRequest) ToJSONString() string {
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

func (o *ForgotPasswordBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *ForgotPasswordBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewForgotPasswordUnauthorized creates a ForgotPasswordUnauthorized with default headers values
func NewForgotPasswordUnauthorized() *ForgotPasswordUnauthorized {
	return &ForgotPasswordUnauthorized{}
}

/*
ForgotPasswordUnauthorized handles this case with default header values.

	<table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type ForgotPasswordUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *ForgotPasswordUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/forgotPassword][%d] forgotPasswordUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ForgotPasswordUnauthorized) ToJSONString() string {
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

func (o *ForgotPasswordUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *ForgotPasswordUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewForgotPasswordForbidden creates a ForgotPasswordForbidden with default headers values
func NewForgotPasswordForbidden() *ForgotPasswordForbidden {
	return &ForgotPasswordForbidden{}
}

/*
ForgotPasswordForbidden handles this case with default header values.

	<table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type ForgotPasswordForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *ForgotPasswordForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/forgotPassword][%d] forgotPasswordForbidden  %+v", 403, o.ToJSONString())
}

func (o *ForgotPasswordForbidden) ToJSONString() string {
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

func (o *ForgotPasswordForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *ForgotPasswordForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewForgotPasswordNotFound creates a ForgotPasswordNotFound with default headers values
func NewForgotPasswordNotFound() *ForgotPasswordNotFound {
	return &ForgotPasswordNotFound{}
}

/*
ForgotPasswordNotFound handles this case with default header values.

	Data not found
*/
type ForgotPasswordNotFound struct {
}

func (o *ForgotPasswordNotFound) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/forgotPassword][%d] forgotPasswordNotFound ", 404)
}

func (o *ForgotPasswordNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
