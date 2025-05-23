// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package all_terminated_servers

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

type ListAllTerminatedServersResponse struct {
	dslogmanagerclientmodels.ApiResponse
	Data *dslogmanagerclientmodels.ModelsListTerminatedServersResponse

	Error400 *dslogmanagerclientmodels.ResponseError
	Error401 *dslogmanagerclientmodels.ResponseError
	Error500 *dslogmanagerclientmodels.ResponseError
}

func (m *ListAllTerminatedServersResponse) Unpack() (*dslogmanagerclientmodels.ModelsListTerminatedServersResponse, *dslogmanagerclientmodels.ApiError) {
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

// ListAllTerminatedServersReader is a Reader for the ListAllTerminatedServers structure.
type ListAllTerminatedServersReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListAllTerminatedServersReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListAllTerminatedServersOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewListAllTerminatedServersBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewListAllTerminatedServersUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewListAllTerminatedServersInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dslogmanager/servers/search returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListAllTerminatedServersOK creates a ListAllTerminatedServersOK with default headers values
func NewListAllTerminatedServersOK() *ListAllTerminatedServersOK {
	return &ListAllTerminatedServersOK{}
}

/*ListAllTerminatedServersOK handles this case with default header values.

  OK
*/
type ListAllTerminatedServersOK struct {
	Payload *dslogmanagerclientmodels.ModelsListTerminatedServersResponse
}

func (o *ListAllTerminatedServersOK) Error() string {
	return fmt.Sprintf("[GET /dslogmanager/servers/search][%d] listAllTerminatedServersOK  %+v", 200, o.ToJSONString())
}

func (o *ListAllTerminatedServersOK) ToJSONString() string {
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

func (o *ListAllTerminatedServersOK) GetPayload() *dslogmanagerclientmodels.ModelsListTerminatedServersResponse {
	return o.Payload
}

func (o *ListAllTerminatedServersOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewListAllTerminatedServersBadRequest creates a ListAllTerminatedServersBadRequest with default headers values
func NewListAllTerminatedServersBadRequest() *ListAllTerminatedServersBadRequest {
	return &ListAllTerminatedServersBadRequest{}
}

/*ListAllTerminatedServersBadRequest handles this case with default header values.

  Bad Request
*/
type ListAllTerminatedServersBadRequest struct {
	Payload *dslogmanagerclientmodels.ResponseError
}

func (o *ListAllTerminatedServersBadRequest) Error() string {
	return fmt.Sprintf("[GET /dslogmanager/servers/search][%d] listAllTerminatedServersBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ListAllTerminatedServersBadRequest) ToJSONString() string {
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

func (o *ListAllTerminatedServersBadRequest) GetPayload() *dslogmanagerclientmodels.ResponseError {
	return o.Payload
}

func (o *ListAllTerminatedServersBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewListAllTerminatedServersUnauthorized creates a ListAllTerminatedServersUnauthorized with default headers values
func NewListAllTerminatedServersUnauthorized() *ListAllTerminatedServersUnauthorized {
	return &ListAllTerminatedServersUnauthorized{}
}

/*ListAllTerminatedServersUnauthorized handles this case with default header values.

  Unauthorized
*/
type ListAllTerminatedServersUnauthorized struct {
	Payload *dslogmanagerclientmodels.ResponseError
}

func (o *ListAllTerminatedServersUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dslogmanager/servers/search][%d] listAllTerminatedServersUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ListAllTerminatedServersUnauthorized) ToJSONString() string {
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

func (o *ListAllTerminatedServersUnauthorized) GetPayload() *dslogmanagerclientmodels.ResponseError {
	return o.Payload
}

func (o *ListAllTerminatedServersUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewListAllTerminatedServersInternalServerError creates a ListAllTerminatedServersInternalServerError with default headers values
func NewListAllTerminatedServersInternalServerError() *ListAllTerminatedServersInternalServerError {
	return &ListAllTerminatedServersInternalServerError{}
}

/*ListAllTerminatedServersInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ListAllTerminatedServersInternalServerError struct {
	Payload *dslogmanagerclientmodels.ResponseError
}

func (o *ListAllTerminatedServersInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dslogmanager/servers/search][%d] listAllTerminatedServersInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ListAllTerminatedServersInternalServerError) ToJSONString() string {
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

func (o *ListAllTerminatedServersInternalServerError) GetPayload() *dslogmanagerclientmodels.ResponseError {
	return o.Payload
}

func (o *ListAllTerminatedServersInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
