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

type ImageDetailClientResponse struct {
	dsmcclientmodels.ApiResponse
	Data *dsmcclientmodels.ModelsGetImageDetailResponse

	Error401 *dsmcclientmodels.ResponseError
	Error404 *dsmcclientmodels.ResponseError
	Error500 *dsmcclientmodels.ResponseError
}

func (m *ImageDetailClientResponse) Unpack() (*dsmcclientmodels.ModelsGetImageDetailResponse, *dsmcclientmodels.ApiError) {
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

// ImageDetailClientReader is a Reader for the ImageDetailClient structure.
type ImageDetailClientReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ImageDetailClientReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewImageDetailClientOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewImageDetailClientUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewImageDetailClientNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewImageDetailClientInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsmcontroller/namespaces/{namespace}/images/versions/{version} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewImageDetailClientOK creates a ImageDetailClientOK with default headers values
func NewImageDetailClientOK() *ImageDetailClientOK {
	return &ImageDetailClientOK{}
}

/*ImageDetailClientOK handles this case with default header values.

  ok
*/
type ImageDetailClientOK struct {
	Payload *dsmcclientmodels.ModelsGetImageDetailResponse
}

func (o *ImageDetailClientOK) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/images/versions/{version}][%d] imageDetailClientOK  %+v", 200, o.ToJSONString())
}

func (o *ImageDetailClientOK) ToJSONString() string {
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

func (o *ImageDetailClientOK) GetPayload() *dsmcclientmodels.ModelsGetImageDetailResponse {
	return o.Payload
}

func (o *ImageDetailClientOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsGetImageDetailResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewImageDetailClientUnauthorized creates a ImageDetailClientUnauthorized with default headers values
func NewImageDetailClientUnauthorized() *ImageDetailClientUnauthorized {
	return &ImageDetailClientUnauthorized{}
}

/*ImageDetailClientUnauthorized handles this case with default header values.

  Unauthorized
*/
type ImageDetailClientUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ImageDetailClientUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/images/versions/{version}][%d] imageDetailClientUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ImageDetailClientUnauthorized) ToJSONString() string {
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

func (o *ImageDetailClientUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ImageDetailClientUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewImageDetailClientNotFound creates a ImageDetailClientNotFound with default headers values
func NewImageDetailClientNotFound() *ImageDetailClientNotFound {
	return &ImageDetailClientNotFound{}
}

/*ImageDetailClientNotFound handles this case with default header values.

  image version not found
*/
type ImageDetailClientNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ImageDetailClientNotFound) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/images/versions/{version}][%d] imageDetailClientNotFound  %+v", 404, o.ToJSONString())
}

func (o *ImageDetailClientNotFound) ToJSONString() string {
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

func (o *ImageDetailClientNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ImageDetailClientNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewImageDetailClientInternalServerError creates a ImageDetailClientInternalServerError with default headers values
func NewImageDetailClientInternalServerError() *ImageDetailClientInternalServerError {
	return &ImageDetailClientInternalServerError{}
}

/*ImageDetailClientInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ImageDetailClientInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ImageDetailClientInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/images/versions/{version}][%d] imageDetailClientInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ImageDetailClientInternalServerError) ToJSONString() string {
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

func (o *ImageDetailClientInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ImageDetailClientInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
