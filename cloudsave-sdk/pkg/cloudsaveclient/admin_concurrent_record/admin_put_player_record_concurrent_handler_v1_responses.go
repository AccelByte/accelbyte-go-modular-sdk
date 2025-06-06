// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_concurrent_record

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

type AdminPutPlayerRecordConcurrentHandlerV1Response struct {
	cloudsaveclientmodels.ApiResponse
	Data *cloudsaveclientmodels.ModelsPlayerRecordConcurrentUpdateResponse

	Error400 *cloudsaveclientmodels.ModelsResponseError
	Error401 *cloudsaveclientmodels.ModelsResponseError
	Error403 *cloudsaveclientmodels.ModelsResponseError
	Error412 *cloudsaveclientmodels.ModelsResponseError
	Error500 *cloudsaveclientmodels.ModelsResponseError
}

func (m *AdminPutPlayerRecordConcurrentHandlerV1Response) Unpack() (*cloudsaveclientmodels.ModelsPlayerRecordConcurrentUpdateResponse, *cloudsaveclientmodels.ApiError) {
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

		case 412:
			e, err := m.Error412.TranslateToApiError()
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

// AdminPutPlayerRecordConcurrentHandlerV1Reader is a Reader for the AdminPutPlayerRecordConcurrentHandlerV1 structure.
type AdminPutPlayerRecordConcurrentHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPutPlayerRecordConcurrentHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminPutPlayerRecordConcurrentHandlerV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 204:
		result := NewAdminPutPlayerRecordConcurrentHandlerV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminPutPlayerRecordConcurrentHandlerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminPutPlayerRecordConcurrentHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminPutPlayerRecordConcurrentHandlerV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 412:
		result := NewAdminPutPlayerRecordConcurrentHandlerV1PreconditionFailed()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminPutPlayerRecordConcurrentHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/concurrent/records/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPutPlayerRecordConcurrentHandlerV1OK creates a AdminPutPlayerRecordConcurrentHandlerV1OK with default headers values
func NewAdminPutPlayerRecordConcurrentHandlerV1OK() *AdminPutPlayerRecordConcurrentHandlerV1OK {
	return &AdminPutPlayerRecordConcurrentHandlerV1OK{}
}

/*AdminPutPlayerRecordConcurrentHandlerV1OK handles this case with default header values.

  Record saved
*/
type AdminPutPlayerRecordConcurrentHandlerV1OK struct {
	Payload *cloudsaveclientmodels.ModelsPlayerRecordConcurrentUpdateResponse
}

func (o *AdminPutPlayerRecordConcurrentHandlerV1OK) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/concurrent/records/{key}][%d] adminPutPlayerRecordConcurrentHandlerV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminPutPlayerRecordConcurrentHandlerV1OK) ToJSONString() string {
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

func (o *AdminPutPlayerRecordConcurrentHandlerV1OK) GetPayload() *cloudsaveclientmodels.ModelsPlayerRecordConcurrentUpdateResponse {
	return o.Payload
}

func (o *AdminPutPlayerRecordConcurrentHandlerV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsPlayerRecordConcurrentUpdateResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminPutPlayerRecordConcurrentHandlerV1NoContent creates a AdminPutPlayerRecordConcurrentHandlerV1NoContent with default headers values
func NewAdminPutPlayerRecordConcurrentHandlerV1NoContent() *AdminPutPlayerRecordConcurrentHandlerV1NoContent {
	return &AdminPutPlayerRecordConcurrentHandlerV1NoContent{}
}

/*AdminPutPlayerRecordConcurrentHandlerV1NoContent handles this case with default header values.

  Record saved
*/
type AdminPutPlayerRecordConcurrentHandlerV1NoContent struct {
}

func (o *AdminPutPlayerRecordConcurrentHandlerV1NoContent) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/concurrent/records/{key}][%d] adminPutPlayerRecordConcurrentHandlerV1NoContent ", 204)
}

func (o *AdminPutPlayerRecordConcurrentHandlerV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminPutPlayerRecordConcurrentHandlerV1BadRequest creates a AdminPutPlayerRecordConcurrentHandlerV1BadRequest with default headers values
func NewAdminPutPlayerRecordConcurrentHandlerV1BadRequest() *AdminPutPlayerRecordConcurrentHandlerV1BadRequest {
	return &AdminPutPlayerRecordConcurrentHandlerV1BadRequest{}
}

/*AdminPutPlayerRecordConcurrentHandlerV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18201</td><td>invalid record operator, expect [%s] but actual [%s]</td></tr><tr><td>18060</td><td>invalid request body</td></tr><tr><td>18064</td><td>validation error</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>18065</td><td>unable to update record</td></tr></table>
*/
type AdminPutPlayerRecordConcurrentHandlerV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutPlayerRecordConcurrentHandlerV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/concurrent/records/{key}][%d] adminPutPlayerRecordConcurrentHandlerV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminPutPlayerRecordConcurrentHandlerV1BadRequest) ToJSONString() string {
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

func (o *AdminPutPlayerRecordConcurrentHandlerV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutPlayerRecordConcurrentHandlerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPutPlayerRecordConcurrentHandlerV1Unauthorized creates a AdminPutPlayerRecordConcurrentHandlerV1Unauthorized with default headers values
func NewAdminPutPlayerRecordConcurrentHandlerV1Unauthorized() *AdminPutPlayerRecordConcurrentHandlerV1Unauthorized {
	return &AdminPutPlayerRecordConcurrentHandlerV1Unauthorized{}
}

/*AdminPutPlayerRecordConcurrentHandlerV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminPutPlayerRecordConcurrentHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutPlayerRecordConcurrentHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/concurrent/records/{key}][%d] adminPutPlayerRecordConcurrentHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminPutPlayerRecordConcurrentHandlerV1Unauthorized) ToJSONString() string {
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

func (o *AdminPutPlayerRecordConcurrentHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutPlayerRecordConcurrentHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPutPlayerRecordConcurrentHandlerV1Forbidden creates a AdminPutPlayerRecordConcurrentHandlerV1Forbidden with default headers values
func NewAdminPutPlayerRecordConcurrentHandlerV1Forbidden() *AdminPutPlayerRecordConcurrentHandlerV1Forbidden {
	return &AdminPutPlayerRecordConcurrentHandlerV1Forbidden{}
}

/*AdminPutPlayerRecordConcurrentHandlerV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminPutPlayerRecordConcurrentHandlerV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutPlayerRecordConcurrentHandlerV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/concurrent/records/{key}][%d] adminPutPlayerRecordConcurrentHandlerV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminPutPlayerRecordConcurrentHandlerV1Forbidden) ToJSONString() string {
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

func (o *AdminPutPlayerRecordConcurrentHandlerV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutPlayerRecordConcurrentHandlerV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPutPlayerRecordConcurrentHandlerV1PreconditionFailed creates a AdminPutPlayerRecordConcurrentHandlerV1PreconditionFailed with default headers values
func NewAdminPutPlayerRecordConcurrentHandlerV1PreconditionFailed() *AdminPutPlayerRecordConcurrentHandlerV1PreconditionFailed {
	return &AdminPutPlayerRecordConcurrentHandlerV1PreconditionFailed{}
}

/*AdminPutPlayerRecordConcurrentHandlerV1PreconditionFailed handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18066</td><td>precondition failed: record has changed</td></tr></table>
*/
type AdminPutPlayerRecordConcurrentHandlerV1PreconditionFailed struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutPlayerRecordConcurrentHandlerV1PreconditionFailed) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/concurrent/records/{key}][%d] adminPutPlayerRecordConcurrentHandlerV1PreconditionFailed  %+v", 412, o.ToJSONString())
}

func (o *AdminPutPlayerRecordConcurrentHandlerV1PreconditionFailed) ToJSONString() string {
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

func (o *AdminPutPlayerRecordConcurrentHandlerV1PreconditionFailed) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutPlayerRecordConcurrentHandlerV1PreconditionFailed) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPutPlayerRecordConcurrentHandlerV1InternalServerError creates a AdminPutPlayerRecordConcurrentHandlerV1InternalServerError with default headers values
func NewAdminPutPlayerRecordConcurrentHandlerV1InternalServerError() *AdminPutPlayerRecordConcurrentHandlerV1InternalServerError {
	return &AdminPutPlayerRecordConcurrentHandlerV1InternalServerError{}
}

/*AdminPutPlayerRecordConcurrentHandlerV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr><tr><td>18061</td><td>unable to update record</td></tr></table>
*/
type AdminPutPlayerRecordConcurrentHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutPlayerRecordConcurrentHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/concurrent/records/{key}][%d] adminPutPlayerRecordConcurrentHandlerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminPutPlayerRecordConcurrentHandlerV1InternalServerError) ToJSONString() string {
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

func (o *AdminPutPlayerRecordConcurrentHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutPlayerRecordConcurrentHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
