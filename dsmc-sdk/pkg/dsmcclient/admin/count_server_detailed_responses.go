// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin

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

type CountServerDetailedResponse struct {
	dsmcclientmodels.ApiResponse
	Data *dsmcclientmodels.ModelsDetailedCountServerResponse

	Error401 *dsmcclientmodels.ResponseError
	Error500 *dsmcclientmodels.ResponseError
}

func (m *CountServerDetailedResponse) Unpack() (*dsmcclientmodels.ModelsDetailedCountServerResponse, *dsmcclientmodels.ApiError) {
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

// CountServerDetailedReader is a Reader for the CountServerDetailed structure.
type CountServerDetailedReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CountServerDetailedReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCountServerDetailedOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCountServerDetailedUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCountServerDetailedInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsmcontroller/admin/namespaces/{namespace}/servers/count/detailed returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCountServerDetailedOK creates a CountServerDetailedOK with default headers values
func NewCountServerDetailedOK() *CountServerDetailedOK {
	return &CountServerDetailedOK{}
}

/*CountServerDetailedOK handles this case with default header values.

  servers listed
*/
type CountServerDetailedOK struct {
	Payload *dsmcclientmodels.ModelsDetailedCountServerResponse
}

func (o *CountServerDetailedOK) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/servers/count/detailed][%d] countServerDetailedOK  %+v", 200, o.ToJSONString())
}

func (o *CountServerDetailedOK) ToJSONString() string {
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

func (o *CountServerDetailedOK) GetPayload() *dsmcclientmodels.ModelsDetailedCountServerResponse {
	return o.Payload
}

func (o *CountServerDetailedOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsDetailedCountServerResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCountServerDetailedUnauthorized creates a CountServerDetailedUnauthorized with default headers values
func NewCountServerDetailedUnauthorized() *CountServerDetailedUnauthorized {
	return &CountServerDetailedUnauthorized{}
}

/*CountServerDetailedUnauthorized handles this case with default header values.

  Unauthorized
*/
type CountServerDetailedUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CountServerDetailedUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/servers/count/detailed][%d] countServerDetailedUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CountServerDetailedUnauthorized) ToJSONString() string {
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

func (o *CountServerDetailedUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CountServerDetailedUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCountServerDetailedInternalServerError creates a CountServerDetailedInternalServerError with default headers values
func NewCountServerDetailedInternalServerError() *CountServerDetailedInternalServerError {
	return &CountServerDetailedInternalServerError{}
}

/*CountServerDetailedInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CountServerDetailedInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CountServerDetailedInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/admin/namespaces/{namespace}/servers/count/detailed][%d] countServerDetailedInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CountServerDetailedInternalServerError) ToJSONString() string {
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

func (o *CountServerDetailedInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CountServerDetailedInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
