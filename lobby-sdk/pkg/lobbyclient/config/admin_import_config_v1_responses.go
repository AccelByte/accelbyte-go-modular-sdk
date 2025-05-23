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

	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

type AdminImportConfigV1Response struct {
	lobbyclientmodels.ApiResponse
	Data *lobbyclientmodels.ModelsImportConfigResponse

	Error401 *lobbyclientmodels.ResponseError
	Error403 *lobbyclientmodels.ResponseError
	Error500 *lobbyclientmodels.ResponseError
}

func (m *AdminImportConfigV1Response) Unpack() (*lobbyclientmodels.ModelsImportConfigResponse, *lobbyclientmodels.ApiError) {
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
			return nil, &lobbyclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// AdminImportConfigV1Reader is a Reader for the AdminImportConfigV1 structure.
type AdminImportConfigV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminImportConfigV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminImportConfigV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminImportConfigV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminImportConfigV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminImportConfigV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /lobby/v1/admin/config/namespaces/{namespace}/import returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminImportConfigV1OK creates a AdminImportConfigV1OK with default headers values
func NewAdminImportConfigV1OK() *AdminImportConfigV1OK {
	return &AdminImportConfigV1OK{}
}

/*AdminImportConfigV1OK handles this case with default header values.

  OK
*/
type AdminImportConfigV1OK struct {
	Payload *lobbyclientmodels.ModelsImportConfigResponse
}

func (o *AdminImportConfigV1OK) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/config/namespaces/{namespace}/import][%d] adminImportConfigV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminImportConfigV1OK) ToJSONString() string {
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

func (o *AdminImportConfigV1OK) GetPayload() *lobbyclientmodels.ModelsImportConfigResponse {
	return o.Payload
}

func (o *AdminImportConfigV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelsImportConfigResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminImportConfigV1Unauthorized creates a AdminImportConfigV1Unauthorized with default headers values
func NewAdminImportConfigV1Unauthorized() *AdminImportConfigV1Unauthorized {
	return &AdminImportConfigV1Unauthorized{}
}

/*AdminImportConfigV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminImportConfigV1Unauthorized struct {
	Payload *lobbyclientmodels.ResponseError
}

func (o *AdminImportConfigV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/config/namespaces/{namespace}/import][%d] adminImportConfigV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminImportConfigV1Unauthorized) ToJSONString() string {
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

func (o *AdminImportConfigV1Unauthorized) GetPayload() *lobbyclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminImportConfigV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminImportConfigV1Forbidden creates a AdminImportConfigV1Forbidden with default headers values
func NewAdminImportConfigV1Forbidden() *AdminImportConfigV1Forbidden {
	return &AdminImportConfigV1Forbidden{}
}

/*AdminImportConfigV1Forbidden handles this case with default header values.

  Forbidden
*/
type AdminImportConfigV1Forbidden struct {
	Payload *lobbyclientmodels.ResponseError
}

func (o *AdminImportConfigV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/config/namespaces/{namespace}/import][%d] adminImportConfigV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminImportConfigV1Forbidden) ToJSONString() string {
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

func (o *AdminImportConfigV1Forbidden) GetPayload() *lobbyclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminImportConfigV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminImportConfigV1InternalServerError creates a AdminImportConfigV1InternalServerError with default headers values
func NewAdminImportConfigV1InternalServerError() *AdminImportConfigV1InternalServerError {
	return &AdminImportConfigV1InternalServerError{}
}

/*AdminImportConfigV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminImportConfigV1InternalServerError struct {
	Payload *lobbyclientmodels.ResponseError
}

func (o *AdminImportConfigV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/config/namespaces/{namespace}/import][%d] adminImportConfigV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminImportConfigV1InternalServerError) ToJSONString() string {
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

func (o *AdminImportConfigV1InternalServerError) GetPayload() *lobbyclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminImportConfigV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
