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

type CheckServerLogsResponse struct {
	dslogmanagerclientmodels.ApiResponse
	Data *dslogmanagerclientmodels.ModelsLogFileStatus

	Error404 *dslogmanagerclientmodels.ResponseError
	Error500 *dslogmanagerclientmodels.ResponseError
}

func (m *CheckServerLogsResponse) Unpack() (*dslogmanagerclientmodels.ModelsLogFileStatus, *dslogmanagerclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

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
			return nil, &dslogmanagerclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// CheckServerLogsReader is a Reader for the CheckServerLogs structure.
type CheckServerLogsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CheckServerLogsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCheckServerLogsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCheckServerLogsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCheckServerLogsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dslogmanager/namespaces/{namespace}/servers/{podName}/logs/exists returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCheckServerLogsOK creates a CheckServerLogsOK with default headers values
func NewCheckServerLogsOK() *CheckServerLogsOK {
	return &CheckServerLogsOK{}
}

/*CheckServerLogsOK handles this case with default header values.

  Log exists.
*/
type CheckServerLogsOK struct {
	Payload *dslogmanagerclientmodels.ModelsLogFileStatus
}

func (o *CheckServerLogsOK) Error() string {
	return fmt.Sprintf("[GET /dslogmanager/namespaces/{namespace}/servers/{podName}/logs/exists][%d] checkServerLogsOK  %+v", 200, o.ToJSONString())
}

func (o *CheckServerLogsOK) ToJSONString() string {
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

func (o *CheckServerLogsOK) GetPayload() *dslogmanagerclientmodels.ModelsLogFileStatus {
	return o.Payload
}

func (o *CheckServerLogsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dslogmanagerclientmodels.ModelsLogFileStatus)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCheckServerLogsNotFound creates a CheckServerLogsNotFound with default headers values
func NewCheckServerLogsNotFound() *CheckServerLogsNotFound {
	return &CheckServerLogsNotFound{}
}

/*CheckServerLogsNotFound handles this case with default header values.

  Not Found
*/
type CheckServerLogsNotFound struct {
	Payload *dslogmanagerclientmodels.ResponseError
}

func (o *CheckServerLogsNotFound) Error() string {
	return fmt.Sprintf("[GET /dslogmanager/namespaces/{namespace}/servers/{podName}/logs/exists][%d] checkServerLogsNotFound  %+v", 404, o.ToJSONString())
}

func (o *CheckServerLogsNotFound) ToJSONString() string {
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

func (o *CheckServerLogsNotFound) GetPayload() *dslogmanagerclientmodels.ResponseError {
	return o.Payload
}

func (o *CheckServerLogsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCheckServerLogsInternalServerError creates a CheckServerLogsInternalServerError with default headers values
func NewCheckServerLogsInternalServerError() *CheckServerLogsInternalServerError {
	return &CheckServerLogsInternalServerError{}
}

/*CheckServerLogsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CheckServerLogsInternalServerError struct {
	Payload *dslogmanagerclientmodels.ResponseError
}

func (o *CheckServerLogsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dslogmanager/namespaces/{namespace}/servers/{podName}/logs/exists][%d] checkServerLogsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CheckServerLogsInternalServerError) ToJSONString() string {
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

func (o *CheckServerLogsInternalServerError) GetPayload() *dslogmanagerclientmodels.ResponseError {
	return o.Payload
}

func (o *CheckServerLogsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
