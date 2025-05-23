// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package stat_cycle_configuration

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclientmodels"
)

type BulkGetStatCycle1Response struct {
	socialclientmodels.ApiResponse
	Data *socialclientmodels.BulkStatCycleResult

	Error400 *socialclientmodels.ErrorEntity
	Error401 *socialclientmodels.ErrorEntity
	Error403 *socialclientmodels.ErrorEntity
	Error422 *socialclientmodels.ValidationErrorEntity
	Error500 *socialclientmodels.ErrorEntity
}

func (m *BulkGetStatCycle1Response) Unpack() (*socialclientmodels.BulkStatCycleResult, *socialclientmodels.ApiError) {
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

		case 422:
			e, err := m.Error422.TranslateToApiError()
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
			return nil, &socialclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// BulkGetStatCycle1Reader is a Reader for the BulkGetStatCycle1 structure.
type BulkGetStatCycle1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkGetStatCycle1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkGetStatCycle1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkGetStatCycle1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkGetStatCycle1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkGetStatCycle1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewBulkGetStatCycle1UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkGetStatCycle1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /social/v1/public/namespaces/{namespace}/statCycles/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkGetStatCycle1OK creates a BulkGetStatCycle1OK with default headers values
func NewBulkGetStatCycle1OK() *BulkGetStatCycle1OK {
	return &BulkGetStatCycle1OK{}
}

/*BulkGetStatCycle1OK handles this case with default header values.

  successful operation
*/
type BulkGetStatCycle1OK struct {
	Payload *socialclientmodels.BulkStatCycleResult
}

func (o *BulkGetStatCycle1OK) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/statCycles/bulk][%d] bulkGetStatCycle1OK  %+v", 200, o.ToJSONString())
}

func (o *BulkGetStatCycle1OK) ToJSONString() string {
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

func (o *BulkGetStatCycle1OK) GetPayload() *socialclientmodels.BulkStatCycleResult {
	return o.Payload
}

func (o *BulkGetStatCycle1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.BulkStatCycleResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkGetStatCycle1BadRequest creates a BulkGetStatCycle1BadRequest with default headers values
func NewBulkGetStatCycle1BadRequest() *BulkGetStatCycle1BadRequest {
	return &BulkGetStatCycle1BadRequest{}
}

/*BulkGetStatCycle1BadRequest handles this case with default header values.

  Bad request
*/
type BulkGetStatCycle1BadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkGetStatCycle1BadRequest) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/statCycles/bulk][%d] bulkGetStatCycle1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkGetStatCycle1BadRequest) ToJSONString() string {
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

func (o *BulkGetStatCycle1BadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkGetStatCycle1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkGetStatCycle1Unauthorized creates a BulkGetStatCycle1Unauthorized with default headers values
func NewBulkGetStatCycle1Unauthorized() *BulkGetStatCycle1Unauthorized {
	return &BulkGetStatCycle1Unauthorized{}
}

/*BulkGetStatCycle1Unauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type BulkGetStatCycle1Unauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkGetStatCycle1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/statCycles/bulk][%d] bulkGetStatCycle1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkGetStatCycle1Unauthorized) ToJSONString() string {
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

func (o *BulkGetStatCycle1Unauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkGetStatCycle1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkGetStatCycle1Forbidden creates a BulkGetStatCycle1Forbidden with default headers values
func NewBulkGetStatCycle1Forbidden() *BulkGetStatCycle1Forbidden {
	return &BulkGetStatCycle1Forbidden{}
}

/*BulkGetStatCycle1Forbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type BulkGetStatCycle1Forbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkGetStatCycle1Forbidden) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/statCycles/bulk][%d] bulkGetStatCycle1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkGetStatCycle1Forbidden) ToJSONString() string {
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

func (o *BulkGetStatCycle1Forbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkGetStatCycle1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkGetStatCycle1UnprocessableEntity creates a BulkGetStatCycle1UnprocessableEntity with default headers values
func NewBulkGetStatCycle1UnprocessableEntity() *BulkGetStatCycle1UnprocessableEntity {
	return &BulkGetStatCycle1UnprocessableEntity{}
}

/*BulkGetStatCycle1UnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type BulkGetStatCycle1UnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *BulkGetStatCycle1UnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/statCycles/bulk][%d] bulkGetStatCycle1UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *BulkGetStatCycle1UnprocessableEntity) ToJSONString() string {
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

func (o *BulkGetStatCycle1UnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *BulkGetStatCycle1UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkGetStatCycle1InternalServerError creates a BulkGetStatCycle1InternalServerError with default headers values
func NewBulkGetStatCycle1InternalServerError() *BulkGetStatCycle1InternalServerError {
	return &BulkGetStatCycle1InternalServerError{}
}

/*BulkGetStatCycle1InternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type BulkGetStatCycle1InternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkGetStatCycle1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/statCycles/bulk][%d] bulkGetStatCycle1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkGetStatCycle1InternalServerError) ToJSONString() string {
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

func (o *BulkGetStatCycle1InternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkGetStatCycle1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
