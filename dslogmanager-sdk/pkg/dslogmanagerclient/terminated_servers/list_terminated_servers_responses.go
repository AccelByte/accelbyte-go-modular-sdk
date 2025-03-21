// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package terminated_servers

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/dslogmanager-sdk/pkg/dslogmanagerclientmodels"
)

type ListTerminatedServersResponse struct {
	dslogmanagerclientmodels.ApiResponse
	Data *dslogmanagerclientmodels.ModelsListTerminatedServersResponse

	Error400 *dslogmanagerclientmodels.ResponseError
	Error401 *dslogmanagerclientmodels.ResponseError
	Error500 *dslogmanagerclientmodels.ResponseError
}

func (m *ListTerminatedServersResponse) Unpack() (*dslogmanagerclientmodels.ModelsListTerminatedServersResponse, *dslogmanagerclientmodels.ApiError) {
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

		case 500:
			e, err := m.Error500.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		default:
			return nil, &dslogmanagerclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// ListTerminatedServersReader is a Reader for the ListTerminatedServers structure.
type ListTerminatedServersReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListTerminatedServersReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListTerminatedServersOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewListTerminatedServersBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewListTerminatedServersUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewListTerminatedServersInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dslogmanager/namespaces/{namespace}/servers/search returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListTerminatedServersOK creates a ListTerminatedServersOK with default headers values
func NewListTerminatedServersOK() *ListTerminatedServersOK {
	return &ListTerminatedServersOK{}
}

/*ListTerminatedServersOK handles this case with default header values.

  OK
*/
type ListTerminatedServersOK struct {
	Payload *dslogmanagerclientmodels.ModelsListTerminatedServersResponse
}

func (o *ListTerminatedServersOK) Error() string {
	return fmt.Sprintf("[GET /dslogmanager/namespaces/{namespace}/servers/search][%d] listTerminatedServersOK  %+v", 200, o.ToJSONString())
}

func (o *ListTerminatedServersOK) ToJSONString() string {
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

func (o *ListTerminatedServersOK) GetPayload() *dslogmanagerclientmodels.ModelsListTerminatedServersResponse {
	return o.Payload
}

func (o *ListTerminatedServersOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dslogmanagerclientmodels.ModelsListTerminatedServersResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListTerminatedServersBadRequest creates a ListTerminatedServersBadRequest with default headers values
func NewListTerminatedServersBadRequest() *ListTerminatedServersBadRequest {
	return &ListTerminatedServersBadRequest{}
}

/*ListTerminatedServersBadRequest handles this case with default header values.

  Bad Request
*/
type ListTerminatedServersBadRequest struct {
	Payload *dslogmanagerclientmodels.ResponseError
}

func (o *ListTerminatedServersBadRequest) Error() string {
	return fmt.Sprintf("[GET /dslogmanager/namespaces/{namespace}/servers/search][%d] listTerminatedServersBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ListTerminatedServersBadRequest) ToJSONString() string {
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

func (o *ListTerminatedServersBadRequest) GetPayload() *dslogmanagerclientmodels.ResponseError {
	return o.Payload
}

func (o *ListTerminatedServersBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dslogmanagerclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListTerminatedServersUnauthorized creates a ListTerminatedServersUnauthorized with default headers values
func NewListTerminatedServersUnauthorized() *ListTerminatedServersUnauthorized {
	return &ListTerminatedServersUnauthorized{}
}

/*ListTerminatedServersUnauthorized handles this case with default header values.

  Unauthorized
*/
type ListTerminatedServersUnauthorized struct {
	Payload *dslogmanagerclientmodels.ResponseError
}

func (o *ListTerminatedServersUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dslogmanager/namespaces/{namespace}/servers/search][%d] listTerminatedServersUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ListTerminatedServersUnauthorized) ToJSONString() string {
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

func (o *ListTerminatedServersUnauthorized) GetPayload() *dslogmanagerclientmodels.ResponseError {
	return o.Payload
}

func (o *ListTerminatedServersUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dslogmanagerclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListTerminatedServersInternalServerError creates a ListTerminatedServersInternalServerError with default headers values
func NewListTerminatedServersInternalServerError() *ListTerminatedServersInternalServerError {
	return &ListTerminatedServersInternalServerError{}
}

/*ListTerminatedServersInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ListTerminatedServersInternalServerError struct {
	Payload *dslogmanagerclientmodels.ResponseError
}

func (o *ListTerminatedServersInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dslogmanager/namespaces/{namespace}/servers/search][%d] listTerminatedServersInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ListTerminatedServersInternalServerError) ToJSONString() string {
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

func (o *ListTerminatedServersInternalServerError) GetPayload() *dslogmanagerclientmodels.ResponseError {
	return o.Payload
}

func (o *ListTerminatedServersInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dslogmanagerclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
