// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_player_binary_record

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

type AdminPutPlayerBinaryRecordV1Response struct {
	cloudsaveclientmodels.ApiResponse
	Data *cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse

	Error400 *cloudsaveclientmodels.ModelsResponseError
	Error401 *cloudsaveclientmodels.ModelsResponseError
	Error403 *cloudsaveclientmodels.ModelsResponseError
	Error404 *cloudsaveclientmodels.ModelsResponseError
	Error500 *cloudsaveclientmodels.ModelsResponseError
}

func (m *AdminPutPlayerBinaryRecordV1Response) Unpack() (*cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse, *cloudsaveclientmodels.ApiError) {
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
			return nil, &cloudsaveclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// AdminPutPlayerBinaryRecordV1Reader is a Reader for the AdminPutPlayerBinaryRecordV1 structure.
type AdminPutPlayerBinaryRecordV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPutPlayerBinaryRecordV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminPutPlayerBinaryRecordV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminPutPlayerBinaryRecordV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminPutPlayerBinaryRecordV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminPutPlayerBinaryRecordV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminPutPlayerBinaryRecordV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminPutPlayerBinaryRecordV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPutPlayerBinaryRecordV1OK creates a AdminPutPlayerBinaryRecordV1OK with default headers values
func NewAdminPutPlayerBinaryRecordV1OK() *AdminPutPlayerBinaryRecordV1OK {
	return &AdminPutPlayerBinaryRecordV1OK{}
}

/*AdminPutPlayerBinaryRecordV1OK handles this case with default header values.

  Record saved
*/
type AdminPutPlayerBinaryRecordV1OK struct {
	Payload *cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse
}

func (o *AdminPutPlayerBinaryRecordV1OK) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] adminPutPlayerBinaryRecordV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminPutPlayerBinaryRecordV1OK) ToJSONString() string {
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

func (o *AdminPutPlayerBinaryRecordV1OK) GetPayload() *cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse {
	return o.Payload
}

func (o *AdminPutPlayerBinaryRecordV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminPutPlayerBinaryRecordV1BadRequest creates a AdminPutPlayerBinaryRecordV1BadRequest with default headers values
func NewAdminPutPlayerBinaryRecordV1BadRequest() *AdminPutPlayerBinaryRecordV1BadRequest {
	return &AdminPutPlayerBinaryRecordV1BadRequest{}
}

/*AdminPutPlayerBinaryRecordV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18332</td><td>invalid request body</td></tr></table>
*/
type AdminPutPlayerBinaryRecordV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutPlayerBinaryRecordV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] adminPutPlayerBinaryRecordV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminPutPlayerBinaryRecordV1BadRequest) ToJSONString() string {
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

func (o *AdminPutPlayerBinaryRecordV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutPlayerBinaryRecordV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPutPlayerBinaryRecordV1Unauthorized creates a AdminPutPlayerBinaryRecordV1Unauthorized with default headers values
func NewAdminPutPlayerBinaryRecordV1Unauthorized() *AdminPutPlayerBinaryRecordV1Unauthorized {
	return &AdminPutPlayerBinaryRecordV1Unauthorized{}
}

/*AdminPutPlayerBinaryRecordV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminPutPlayerBinaryRecordV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutPlayerBinaryRecordV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] adminPutPlayerBinaryRecordV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminPutPlayerBinaryRecordV1Unauthorized) ToJSONString() string {
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

func (o *AdminPutPlayerBinaryRecordV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutPlayerBinaryRecordV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPutPlayerBinaryRecordV1Forbidden creates a AdminPutPlayerBinaryRecordV1Forbidden with default headers values
func NewAdminPutPlayerBinaryRecordV1Forbidden() *AdminPutPlayerBinaryRecordV1Forbidden {
	return &AdminPutPlayerBinaryRecordV1Forbidden{}
}

/*AdminPutPlayerBinaryRecordV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminPutPlayerBinaryRecordV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutPlayerBinaryRecordV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] adminPutPlayerBinaryRecordV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminPutPlayerBinaryRecordV1Forbidden) ToJSONString() string {
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

func (o *AdminPutPlayerBinaryRecordV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutPlayerBinaryRecordV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPutPlayerBinaryRecordV1NotFound creates a AdminPutPlayerBinaryRecordV1NotFound with default headers values
func NewAdminPutPlayerBinaryRecordV1NotFound() *AdminPutPlayerBinaryRecordV1NotFound {
	return &AdminPutPlayerBinaryRecordV1NotFound{}
}

/*AdminPutPlayerBinaryRecordV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18333</td><td>record not found</td></tr></table>
*/
type AdminPutPlayerBinaryRecordV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutPlayerBinaryRecordV1NotFound) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] adminPutPlayerBinaryRecordV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminPutPlayerBinaryRecordV1NotFound) ToJSONString() string {
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

func (o *AdminPutPlayerBinaryRecordV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutPlayerBinaryRecordV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPutPlayerBinaryRecordV1InternalServerError creates a AdminPutPlayerBinaryRecordV1InternalServerError with default headers values
func NewAdminPutPlayerBinaryRecordV1InternalServerError() *AdminPutPlayerBinaryRecordV1InternalServerError {
	return &AdminPutPlayerBinaryRecordV1InternalServerError{}
}

/*AdminPutPlayerBinaryRecordV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18334</td><td>unable to update record</td></tr></table>
*/
type AdminPutPlayerBinaryRecordV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutPlayerBinaryRecordV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] adminPutPlayerBinaryRecordV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminPutPlayerBinaryRecordV1InternalServerError) ToJSONString() string {
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

func (o *AdminPutPlayerBinaryRecordV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutPlayerBinaryRecordV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
