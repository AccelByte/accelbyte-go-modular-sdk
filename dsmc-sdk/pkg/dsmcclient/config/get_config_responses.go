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

type GetConfigResponse struct {
	dsmcclientmodels.ApiResponse
	Data *dsmcclientmodels.ModelsDSMConfigRecord

	Error401 *dsmcclientmodels.ResponseError
	Error404 *dsmcclientmodels.ResponseError
	Error500 *dsmcclientmodels.ResponseError
}

func (m *GetConfigResponse) Unpack() (*dsmcclientmodels.ModelsDSMConfigRecord, *dsmcclientmodels.ApiError) {
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

// GetConfigReader is a Reader for the GetConfig structure.
type GetConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetConfigInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsmcontroller/admin/namespaces/{namespace}/configs returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetConfigOK creates a GetConfigOK with default headers values
func NewGetConfigOK() *GetConfigOK {
	return &GetConfigOK{}
}

/*GetConfigOK handles this case with default header values.

  config retrieved
*/
type GetConfigOK struct {
	Payload *dsmcclientmodels.ModelsDSMConfigRecord
}

func (o *GetConfigOK) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/configs][%d] getConfigOK  %+v", 200, o.ToJSONString())
}

func (o *GetConfigOK) ToJSONString() string {
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

func (o *GetConfigOK) GetPayload() *dsmcclientmodels.ModelsDSMConfigRecord {
	return o.Payload
}

func (o *GetConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetConfigUnauthorized creates a GetConfigUnauthorized with default headers values
func NewGetConfigUnauthorized() *GetConfigUnauthorized {
	return &GetConfigUnauthorized{}
}

/*GetConfigUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetConfigUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetConfigUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/configs][%d] getConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetConfigUnauthorized) ToJSONString() string {
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

func (o *GetConfigUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetConfigNotFound creates a GetConfigNotFound with default headers values
func NewGetConfigNotFound() *GetConfigNotFound {
	return &GetConfigNotFound{}
}

/*GetConfigNotFound handles this case with default header values.

  config not found
*/
type GetConfigNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetConfigNotFound) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/configs][%d] getConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetConfigNotFound) ToJSONString() string {
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

func (o *GetConfigNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetConfigInternalServerError creates a GetConfigInternalServerError with default headers values
func NewGetConfigInternalServerError() *GetConfigInternalServerError {
	return &GetConfigInternalServerError{}
}

/*GetConfigInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetConfigInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetConfigInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/configs][%d] getConfigInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetConfigInternalServerError) ToJSONString() string {
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

func (o *GetConfigInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetConfigInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
