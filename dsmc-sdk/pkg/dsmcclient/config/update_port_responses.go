// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg/dsmcclientmodels"
)

type UpdatePortResponse struct {
	dsmcclientmodels.ApiResponse
	Data *dsmcclientmodels.ModelsDSMConfigRecord

	Error400 *dsmcclientmodels.ResponseError
	Error401 *dsmcclientmodels.ResponseError
	Error404 *dsmcclientmodels.ResponseError
	Error500 *dsmcclientmodels.ResponseError
}

func (m *UpdatePortResponse) Unpack() (*dsmcclientmodels.ModelsDSMConfigRecord, *dsmcclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 400:
			e, err := m.Error400.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		case 401:
			e, err := m.Error401.TranslateToApiError()
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
			return nil, &dsmcclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// UpdatePortReader is a Reader for the UpdatePort structure.
type UpdatePortReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdatePortReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdatePortOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdatePortBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdatePortUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdatePortNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdatePortInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdatePortOK creates a UpdatePortOK with default headers values
func NewUpdatePortOK() *UpdatePortOK {
	return &UpdatePortOK{}
}

/*UpdatePortOK handles this case with default header values.

  pod config updated
*/
type UpdatePortOK struct {
	Payload *dsmcclientmodels.ModelsDSMConfigRecord
}

func (o *UpdatePortOK) Error() string {
	return fmt.Sprintf("[PATCH /dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}][%d] updatePortOK  %+v", 200, o.ToJSONString())
}

func (o *UpdatePortOK) ToJSONString() string {
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

func (o *UpdatePortOK) GetPayload() *dsmcclientmodels.ModelsDSMConfigRecord {
	return o.Payload
}

func (o *UpdatePortOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsDSMConfigRecord)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdatePortBadRequest creates a UpdatePortBadRequest with default headers values
func NewUpdatePortBadRequest() *UpdatePortBadRequest {
	return &UpdatePortBadRequest{}
}

/*UpdatePortBadRequest handles this case with default header values.

  malformed request
*/
type UpdatePortBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *UpdatePortBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}][%d] updatePortBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdatePortBadRequest) ToJSONString() string {
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

func (o *UpdatePortBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdatePortBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdatePortUnauthorized creates a UpdatePortUnauthorized with default headers values
func NewUpdatePortUnauthorized() *UpdatePortUnauthorized {
	return &UpdatePortUnauthorized{}
}

/*UpdatePortUnauthorized handles this case with default header values.

  Unauthorized
*/
type UpdatePortUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *UpdatePortUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}][%d] updatePortUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdatePortUnauthorized) ToJSONString() string {
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

func (o *UpdatePortUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdatePortUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdatePortNotFound creates a UpdatePortNotFound with default headers values
func NewUpdatePortNotFound() *UpdatePortNotFound {
	return &UpdatePortNotFound{}
}

/*UpdatePortNotFound handles this case with default header values.

  port config not found
*/
type UpdatePortNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *UpdatePortNotFound) Error() string {
	return fmt.Sprintf("[PATCH /dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}][%d] updatePortNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdatePortNotFound) ToJSONString() string {
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

func (o *UpdatePortNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdatePortNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdatePortInternalServerError creates a UpdatePortInternalServerError with default headers values
func NewUpdatePortInternalServerError() *UpdatePortInternalServerError {
	return &UpdatePortInternalServerError{}
}

/*UpdatePortInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdatePortInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *UpdatePortInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}][%d] updatePortInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdatePortInternalServerError) ToJSONString() string {
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

func (o *UpdatePortInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdatePortInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
