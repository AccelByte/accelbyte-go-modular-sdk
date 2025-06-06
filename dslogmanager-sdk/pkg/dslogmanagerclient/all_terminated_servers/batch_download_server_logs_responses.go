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

type BatchDownloadServerLogsResponse struct {
	dslogmanagerclientmodels.ApiResponse
	Data io.Writer

	Error400 *dslogmanagerclientmodels.ResponseError
	Error500 *dslogmanagerclientmodels.ResponseError
}

func (m *BatchDownloadServerLogsResponse) Unpack() (io.Writer, *dslogmanagerclientmodels.ApiError) {
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

// BatchDownloadServerLogsReader is a Reader for the BatchDownloadServerLogs structure.
type BatchDownloadServerLogsReader struct {
	formats strfmt.Registry
	writer  io.Writer
}

// ReadResponse reads a server response into the received o.
func (o *BatchDownloadServerLogsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBatchDownloadServerLogsOK(o.writer)
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBatchDownloadServerLogsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBatchDownloadServerLogsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /dslogmanager/servers/logs/download returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBatchDownloadServerLogsOK creates a BatchDownloadServerLogsOK with default headers values
func NewBatchDownloadServerLogsOK(writer io.Writer) *BatchDownloadServerLogsOK {
	return &BatchDownloadServerLogsOK{
		Payload: writer,
	}
}

/*BatchDownloadServerLogsOK handles this case with default header values.

  server logs downloaded.
*/
type BatchDownloadServerLogsOK struct {
	Payload io.Writer
}

func (o *BatchDownloadServerLogsOK) Error() string {
	return fmt.Sprintf("[POST /dslogmanager/servers/logs/download][%d] batchDownloadServerLogsOK  %+v", 200, o.ToJSONString())
}

func (o *BatchDownloadServerLogsOK) ToJSONString() string {
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

func (o *BatchDownloadServerLogsOK) GetPayload() io.Writer {
	return o.Payload
}

func (o *BatchDownloadServerLogsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBatchDownloadServerLogsBadRequest creates a BatchDownloadServerLogsBadRequest with default headers values
func NewBatchDownloadServerLogsBadRequest() *BatchDownloadServerLogsBadRequest {
	return &BatchDownloadServerLogsBadRequest{}
}

/*BatchDownloadServerLogsBadRequest handles this case with default header values.

  Bad Request
*/
type BatchDownloadServerLogsBadRequest struct {
	Payload *dslogmanagerclientmodels.ResponseError
}

func (o *BatchDownloadServerLogsBadRequest) Error() string {
	return fmt.Sprintf("[POST /dslogmanager/servers/logs/download][%d] batchDownloadServerLogsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *BatchDownloadServerLogsBadRequest) ToJSONString() string {
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

func (o *BatchDownloadServerLogsBadRequest) GetPayload() *dslogmanagerclientmodels.ResponseError {
	return o.Payload
}

func (o *BatchDownloadServerLogsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBatchDownloadServerLogsInternalServerError creates a BatchDownloadServerLogsInternalServerError with default headers values
func NewBatchDownloadServerLogsInternalServerError() *BatchDownloadServerLogsInternalServerError {
	return &BatchDownloadServerLogsInternalServerError{}
}

/*BatchDownloadServerLogsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type BatchDownloadServerLogsInternalServerError struct {
	Payload *dslogmanagerclientmodels.ResponseError
}

func (o *BatchDownloadServerLogsInternalServerError) Error() string {
	return fmt.Sprintf("[POST /dslogmanager/servers/logs/download][%d] batchDownloadServerLogsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BatchDownloadServerLogsInternalServerError) ToJSONString() string {
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

func (o *BatchDownloadServerLogsInternalServerError) GetPayload() *dslogmanagerclientmodels.ResponseError {
	return o.Payload
}

func (o *BatchDownloadServerLogsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
