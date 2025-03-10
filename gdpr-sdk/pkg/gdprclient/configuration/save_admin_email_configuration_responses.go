// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configuration

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

type SaveAdminEmailConfigurationResponse struct {
	gdprclientmodels.ApiResponse

	Error400 *gdprclientmodels.ResponseError
	Error401 *gdprclientmodels.ResponseError
	Error500 *gdprclientmodels.ResponseError
}

func (m *SaveAdminEmailConfigurationResponse) Unpack() *gdprclientmodels.ApiError {
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

		case 500:
			e, err := m.Error500.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		default:
			return &gdprclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// SaveAdminEmailConfigurationReader is a Reader for the SaveAdminEmailConfiguration structure.
type SaveAdminEmailConfigurationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SaveAdminEmailConfigurationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewSaveAdminEmailConfigurationNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSaveAdminEmailConfigurationBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSaveAdminEmailConfigurationUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSaveAdminEmailConfigurationInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /gdpr/admin/namespaces/{namespace}/emails/configurations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSaveAdminEmailConfigurationNoContent creates a SaveAdminEmailConfigurationNoContent with default headers values
func NewSaveAdminEmailConfigurationNoContent() *SaveAdminEmailConfigurationNoContent {
	return &SaveAdminEmailConfigurationNoContent{}
}

/*SaveAdminEmailConfigurationNoContent handles this case with default header values.

  No Content
*/
type SaveAdminEmailConfigurationNoContent struct {
}

func (o *SaveAdminEmailConfigurationNoContent) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/emails/configurations][%d] saveAdminEmailConfigurationNoContent ", 204)
}

func (o *SaveAdminEmailConfigurationNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSaveAdminEmailConfigurationBadRequest creates a SaveAdminEmailConfigurationBadRequest with default headers values
func NewSaveAdminEmailConfigurationBadRequest() *SaveAdminEmailConfigurationBadRequest {
	return &SaveAdminEmailConfigurationBadRequest{}
}

/*SaveAdminEmailConfigurationBadRequest handles this case with default header values.

  Bad Request
*/
type SaveAdminEmailConfigurationBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *SaveAdminEmailConfigurationBadRequest) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/emails/configurations][%d] saveAdminEmailConfigurationBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SaveAdminEmailConfigurationBadRequest) ToJSONString() string {
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

func (o *SaveAdminEmailConfigurationBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *SaveAdminEmailConfigurationBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSaveAdminEmailConfigurationUnauthorized creates a SaveAdminEmailConfigurationUnauthorized with default headers values
func NewSaveAdminEmailConfigurationUnauthorized() *SaveAdminEmailConfigurationUnauthorized {
	return &SaveAdminEmailConfigurationUnauthorized{}
}

/*SaveAdminEmailConfigurationUnauthorized handles this case with default header values.

  Unauthorized
*/
type SaveAdminEmailConfigurationUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *SaveAdminEmailConfigurationUnauthorized) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/emails/configurations][%d] saveAdminEmailConfigurationUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *SaveAdminEmailConfigurationUnauthorized) ToJSONString() string {
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

func (o *SaveAdminEmailConfigurationUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *SaveAdminEmailConfigurationUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSaveAdminEmailConfigurationInternalServerError creates a SaveAdminEmailConfigurationInternalServerError with default headers values
func NewSaveAdminEmailConfigurationInternalServerError() *SaveAdminEmailConfigurationInternalServerError {
	return &SaveAdminEmailConfigurationInternalServerError{}
}

/*SaveAdminEmailConfigurationInternalServerError handles this case with default header values.

  Internal Server Error
*/
type SaveAdminEmailConfigurationInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *SaveAdminEmailConfigurationInternalServerError) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/emails/configurations][%d] saveAdminEmailConfigurationInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SaveAdminEmailConfigurationInternalServerError) ToJSONString() string {
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

func (o *SaveAdminEmailConfigurationInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *SaveAdminEmailConfigurationInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
