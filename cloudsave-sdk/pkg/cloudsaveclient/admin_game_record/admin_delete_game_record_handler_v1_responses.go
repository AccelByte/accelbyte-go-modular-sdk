// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_game_record

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

type AdminDeleteGameRecordHandlerV1Response struct {
	cloudsaveclientmodels.ApiResponse

	Error400 *cloudsaveclientmodels.ModelsResponseError
	Error401 *cloudsaveclientmodels.ModelsResponseError
	Error403 *cloudsaveclientmodels.ModelsResponseError
	Error500 *cloudsaveclientmodels.ModelsResponseError
}

func (m *AdminDeleteGameRecordHandlerV1Response) Unpack() *cloudsaveclientmodels.ApiError {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 400:
			e, err := m.Error400.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 401:
			e, err := m.Error401.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 403:
			e, err := m.Error403.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 500:
			e, err := m.Error500.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		default:
			return &cloudsaveclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// AdminDeleteGameRecordHandlerV1Reader is a Reader for the AdminDeleteGameRecordHandlerV1 structure.
type AdminDeleteGameRecordHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteGameRecordHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteGameRecordHandlerV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteGameRecordHandlerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteGameRecordHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteGameRecordHandlerV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteGameRecordHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /cloudsave/v1/admin/namespaces/{namespace}/records/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteGameRecordHandlerV1NoContent creates a AdminDeleteGameRecordHandlerV1NoContent with default headers values
func NewAdminDeleteGameRecordHandlerV1NoContent() *AdminDeleteGameRecordHandlerV1NoContent {
	return &AdminDeleteGameRecordHandlerV1NoContent{}
}

/*AdminDeleteGameRecordHandlerV1NoContent handles this case with default header values.

  Record deleted
*/
type AdminDeleteGameRecordHandlerV1NoContent struct {
}

func (o *AdminDeleteGameRecordHandlerV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/records/{key}][%d] adminDeleteGameRecordHandlerV1NoContent ", 204)
}

func (o *AdminDeleteGameRecordHandlerV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteGameRecordHandlerV1BadRequest creates a AdminDeleteGameRecordHandlerV1BadRequest with default headers values
func NewAdminDeleteGameRecordHandlerV1BadRequest() *AdminDeleteGameRecordHandlerV1BadRequest {
	return &AdminDeleteGameRecordHandlerV1BadRequest{}
}

/*AdminDeleteGameRecordHandlerV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18201</td><td>invalid record operator, expect [%s] but actual [%s]</td></tr></table>
*/
type AdminDeleteGameRecordHandlerV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminDeleteGameRecordHandlerV1BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/records/{key}][%d] adminDeleteGameRecordHandlerV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeleteGameRecordHandlerV1BadRequest) ToJSONString() string {
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

func (o *AdminDeleteGameRecordHandlerV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminDeleteGameRecordHandlerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteGameRecordHandlerV1Unauthorized creates a AdminDeleteGameRecordHandlerV1Unauthorized with default headers values
func NewAdminDeleteGameRecordHandlerV1Unauthorized() *AdminDeleteGameRecordHandlerV1Unauthorized {
	return &AdminDeleteGameRecordHandlerV1Unauthorized{}
}

/*AdminDeleteGameRecordHandlerV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDeleteGameRecordHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminDeleteGameRecordHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/records/{key}][%d] adminDeleteGameRecordHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteGameRecordHandlerV1Unauthorized) ToJSONString() string {
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

func (o *AdminDeleteGameRecordHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminDeleteGameRecordHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteGameRecordHandlerV1Forbidden creates a AdminDeleteGameRecordHandlerV1Forbidden with default headers values
func NewAdminDeleteGameRecordHandlerV1Forbidden() *AdminDeleteGameRecordHandlerV1Forbidden {
	return &AdminDeleteGameRecordHandlerV1Forbidden{}
}

/*AdminDeleteGameRecordHandlerV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminDeleteGameRecordHandlerV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminDeleteGameRecordHandlerV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/records/{key}][%d] adminDeleteGameRecordHandlerV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteGameRecordHandlerV1Forbidden) ToJSONString() string {
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

func (o *AdminDeleteGameRecordHandlerV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminDeleteGameRecordHandlerV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteGameRecordHandlerV1InternalServerError creates a AdminDeleteGameRecordHandlerV1InternalServerError with default headers values
func NewAdminDeleteGameRecordHandlerV1InternalServerError() *AdminDeleteGameRecordHandlerV1InternalServerError {
	return &AdminDeleteGameRecordHandlerV1InternalServerError{}
}

/*AdminDeleteGameRecordHandlerV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr><tr><td>18040</td><td>unable to delete record</td></tr></table>
*/
type AdminDeleteGameRecordHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminDeleteGameRecordHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/admin/namespaces/{namespace}/records/{key}][%d] adminDeleteGameRecordHandlerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteGameRecordHandlerV1InternalServerError) ToJSONString() string {
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

func (o *AdminDeleteGameRecordHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminDeleteGameRecordHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
