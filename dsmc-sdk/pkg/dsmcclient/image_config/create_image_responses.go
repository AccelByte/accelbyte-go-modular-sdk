// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package image_config

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

type CreateImageResponse struct {
	dsmcclientmodels.ApiResponse

	Error400 *dsmcclientmodels.ResponseError
	Error401 *dsmcclientmodels.ResponseError
	Error404 *dsmcclientmodels.ResponseError
	Error409 *dsmcclientmodels.ResponseError
	Error500 *dsmcclientmodels.ResponseError
}

func (m *CreateImageResponse) Unpack() *dsmcclientmodels.ApiError {
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

		case 404:
			e, err := m.Error404.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 409:
			e, err := m.Error409.TranslateToApiError()
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
			return &dsmcclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// CreateImageReader is a Reader for the CreateImage structure.
type CreateImageReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateImageReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewCreateImageNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateImageBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateImageUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateImageNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateImageConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateImageInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /dsmcontroller/admin/images returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateImageNoContent creates a CreateImageNoContent with default headers values
func NewCreateImageNoContent() *CreateImageNoContent {
	return &CreateImageNoContent{}
}

/*CreateImageNoContent handles this case with default header values.

  image created
*/
type CreateImageNoContent struct {
}

func (o *CreateImageNoContent) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/images][%d] createImageNoContent ", 204)
}

func (o *CreateImageNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewCreateImageBadRequest creates a CreateImageBadRequest with default headers values
func NewCreateImageBadRequest() *CreateImageBadRequest {
	return &CreateImageBadRequest{}
}

/*CreateImageBadRequest handles this case with default header values.

  malformed request
*/
type CreateImageBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateImageBadRequest) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/images][%d] createImageBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateImageBadRequest) ToJSONString() string {
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

func (o *CreateImageBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateImageBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateImageUnauthorized creates a CreateImageUnauthorized with default headers values
func NewCreateImageUnauthorized() *CreateImageUnauthorized {
	return &CreateImageUnauthorized{}
}

/*CreateImageUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreateImageUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateImageUnauthorized) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/images][%d] createImageUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateImageUnauthorized) ToJSONString() string {
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

func (o *CreateImageUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateImageUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateImageNotFound creates a CreateImageNotFound with default headers values
func NewCreateImageNotFound() *CreateImageNotFound {
	return &CreateImageNotFound{}
}

/*CreateImageNotFound handles this case with default header values.

  the image is not exist in the container registry
*/
type CreateImageNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateImageNotFound) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/images][%d] createImageNotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateImageNotFound) ToJSONString() string {
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

func (o *CreateImageNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateImageNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateImageConflict creates a CreateImageConflict with default headers values
func NewCreateImageConflict() *CreateImageConflict {
	return &CreateImageConflict{}
}

/*CreateImageConflict handles this case with default header values.

  conflict. duplicate image version record
*/
type CreateImageConflict struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateImageConflict) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/images][%d] createImageConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateImageConflict) ToJSONString() string {
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

func (o *CreateImageConflict) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateImageConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateImageInternalServerError creates a CreateImageInternalServerError with default headers values
func NewCreateImageInternalServerError() *CreateImageInternalServerError {
	return &CreateImageInternalServerError{}
}

/*CreateImageInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateImageInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateImageInternalServerError) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/images][%d] createImageInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateImageInternalServerError) ToJSONString() string {
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

func (o *CreateImageInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateImageInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
