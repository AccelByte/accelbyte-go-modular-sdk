// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_player_record

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

type BulkGetPlayerRecordSizeHandlerV1Response struct {
	cloudsaveclientmodels.ApiResponse
	Data *cloudsaveclientmodels.ModelsBulkGetPlayerRecordSizeResponse

	Error400 *cloudsaveclientmodels.ModelsResponseError
	Error401 *cloudsaveclientmodels.ModelsResponseError
	Error403 *cloudsaveclientmodels.ModelsResponseError
	Error500 *cloudsaveclientmodels.ModelsResponseError
}

func (m *BulkGetPlayerRecordSizeHandlerV1Response) Unpack() (*cloudsaveclientmodels.ModelsBulkGetPlayerRecordSizeResponse, *cloudsaveclientmodels.ApiError) {
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
			return nil, &cloudsaveclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// BulkGetPlayerRecordSizeHandlerV1Reader is a Reader for the BulkGetPlayerRecordSizeHandlerV1 structure.
type BulkGetPlayerRecordSizeHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkGetPlayerRecordSizeHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkGetPlayerRecordSizeHandlerV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkGetPlayerRecordSizeHandlerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkGetPlayerRecordSizeHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkGetPlayerRecordSizeHandlerV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkGetPlayerRecordSizeHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /cloudsave/v1/admin/namespaces/{namespace}/users/bulk/records/size returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkGetPlayerRecordSizeHandlerV1OK creates a BulkGetPlayerRecordSizeHandlerV1OK with default headers values
func NewBulkGetPlayerRecordSizeHandlerV1OK() *BulkGetPlayerRecordSizeHandlerV1OK {
	return &BulkGetPlayerRecordSizeHandlerV1OK{}
}

/*BulkGetPlayerRecordSizeHandlerV1OK handles this case with default header values.

  Record retrieved
*/
type BulkGetPlayerRecordSizeHandlerV1OK struct {
	Payload *cloudsaveclientmodels.ModelsBulkGetPlayerRecordSizeResponse
}

func (o *BulkGetPlayerRecordSizeHandlerV1OK) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/bulk/records/size][%d] bulkGetPlayerRecordSizeHandlerV1OK  %+v", 200, o.ToJSONString())
}

func (o *BulkGetPlayerRecordSizeHandlerV1OK) ToJSONString() string {
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

func (o *BulkGetPlayerRecordSizeHandlerV1OK) GetPayload() *cloudsaveclientmodels.ModelsBulkGetPlayerRecordSizeResponse {
	return o.Payload
}

func (o *BulkGetPlayerRecordSizeHandlerV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsBulkGetPlayerRecordSizeResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkGetPlayerRecordSizeHandlerV1BadRequest creates a BulkGetPlayerRecordSizeHandlerV1BadRequest with default headers values
func NewBulkGetPlayerRecordSizeHandlerV1BadRequest() *BulkGetPlayerRecordSizeHandlerV1BadRequest {
	return &BulkGetPlayerRecordSizeHandlerV1BadRequest{}
}

/*BulkGetPlayerRecordSizeHandlerV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18125</td><td>invalid request body</td></tr></table>
*/
type BulkGetPlayerRecordSizeHandlerV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *BulkGetPlayerRecordSizeHandlerV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/bulk/records/size][%d] bulkGetPlayerRecordSizeHandlerV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkGetPlayerRecordSizeHandlerV1BadRequest) ToJSONString() string {
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

func (o *BulkGetPlayerRecordSizeHandlerV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *BulkGetPlayerRecordSizeHandlerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkGetPlayerRecordSizeHandlerV1Unauthorized creates a BulkGetPlayerRecordSizeHandlerV1Unauthorized with default headers values
func NewBulkGetPlayerRecordSizeHandlerV1Unauthorized() *BulkGetPlayerRecordSizeHandlerV1Unauthorized {
	return &BulkGetPlayerRecordSizeHandlerV1Unauthorized{}
}

/*BulkGetPlayerRecordSizeHandlerV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type BulkGetPlayerRecordSizeHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *BulkGetPlayerRecordSizeHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/bulk/records/size][%d] bulkGetPlayerRecordSizeHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkGetPlayerRecordSizeHandlerV1Unauthorized) ToJSONString() string {
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

func (o *BulkGetPlayerRecordSizeHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *BulkGetPlayerRecordSizeHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkGetPlayerRecordSizeHandlerV1Forbidden creates a BulkGetPlayerRecordSizeHandlerV1Forbidden with default headers values
func NewBulkGetPlayerRecordSizeHandlerV1Forbidden() *BulkGetPlayerRecordSizeHandlerV1Forbidden {
	return &BulkGetPlayerRecordSizeHandlerV1Forbidden{}
}

/*BulkGetPlayerRecordSizeHandlerV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type BulkGetPlayerRecordSizeHandlerV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *BulkGetPlayerRecordSizeHandlerV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/bulk/records/size][%d] bulkGetPlayerRecordSizeHandlerV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkGetPlayerRecordSizeHandlerV1Forbidden) ToJSONString() string {
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

func (o *BulkGetPlayerRecordSizeHandlerV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *BulkGetPlayerRecordSizeHandlerV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkGetPlayerRecordSizeHandlerV1InternalServerError creates a BulkGetPlayerRecordSizeHandlerV1InternalServerError with default headers values
func NewBulkGetPlayerRecordSizeHandlerV1InternalServerError() *BulkGetPlayerRecordSizeHandlerV1InternalServerError {
	return &BulkGetPlayerRecordSizeHandlerV1InternalServerError{}
}

/*BulkGetPlayerRecordSizeHandlerV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18124</td><td>unable to get record</td></tr></table>
*/
type BulkGetPlayerRecordSizeHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *BulkGetPlayerRecordSizeHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/admin/namespaces/{namespace}/users/bulk/records/size][%d] bulkGetPlayerRecordSizeHandlerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkGetPlayerRecordSizeHandlerV1InternalServerError) ToJSONString() string {
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

func (o *BulkGetPlayerRecordSizeHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *BulkGetPlayerRecordSizeHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
