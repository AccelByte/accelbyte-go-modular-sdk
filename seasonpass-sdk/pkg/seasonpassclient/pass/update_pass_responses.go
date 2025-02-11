// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package pass

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
)

type UpdatePassResponse struct {
	seasonpassclientmodels.ApiResponse
	Data *seasonpassclientmodels.PassInfo

	Error400 *seasonpassclientmodels.ErrorEntity
	Error404 *seasonpassclientmodels.ErrorEntity
	Error409 *seasonpassclientmodels.ErrorEntity
	Error422 *seasonpassclientmodels.ValidationErrorEntity
}

func (m *UpdatePassResponse) Unpack() (*seasonpassclientmodels.PassInfo, *seasonpassclientmodels.ApiError) {
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

		case 404:
			e, err := m.Error404.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		case 409:
			e, err := m.Error409.TranslateToApiError()
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

		default:
			return nil, &seasonpassclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// UpdatePassReader is a Reader for the UpdatePass structure.
type UpdatePassReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdatePassReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdatePassOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdatePassBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdatePassNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdatePassConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUpdatePassUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdatePassOK creates a UpdatePassOK with default headers values
func NewUpdatePassOK() *UpdatePassOK {
	return &UpdatePassOK{}
}

/*UpdatePassOK handles this case with default header values.

  successful operation
*/
type UpdatePassOK struct {
	Payload *seasonpassclientmodels.PassInfo
}

func (o *UpdatePassOK) Error() string {
	return fmt.Sprintf("[PATCH /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}][%d] updatePassOK  %+v", 200, o.ToJSONString())
}

func (o *UpdatePassOK) ToJSONString() string {
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

func (o *UpdatePassOK) GetPayload() *seasonpassclientmodels.PassInfo {
	return o.Payload
}

func (o *UpdatePassOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.PassInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdatePassBadRequest creates a UpdatePassBadRequest with default headers values
func NewUpdatePassBadRequest() *UpdatePassBadRequest {
	return &UpdatePassBadRequest{}
}

/*UpdatePassBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr><tr><td>49121</td><td>Default language [{language}] required in localizations</td></tr></table>
*/
type UpdatePassBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *UpdatePassBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}][%d] updatePassBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdatePassBadRequest) ToJSONString() string {
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

func (o *UpdatePassBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdatePassBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdatePassNotFound creates a UpdatePassNotFound with default headers values
func NewUpdatePassNotFound() *UpdatePassNotFound {
	return &UpdatePassNotFound{}
}

/*UpdatePassNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49145</td><td>Pass [{code}] does not exist</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>49142</td><td>Pass item does not exist in the store of namespace [{namespace}]</td></tr><tr><td>49143</td><td>Season [{seasonId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type UpdatePassNotFound struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *UpdatePassNotFound) Error() string {
	return fmt.Sprintf("[PATCH /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}][%d] updatePassNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdatePassNotFound) ToJSONString() string {
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

func (o *UpdatePassNotFound) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdatePassNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdatePassConflict creates a UpdatePassConflict with default headers values
func NewUpdatePassConflict() *UpdatePassConflict {
	return &UpdatePassConflict{}
}

/*UpdatePassConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49171</td><td>Invalid season status [{status}]</td></tr></table>
*/
type UpdatePassConflict struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *UpdatePassConflict) Error() string {
	return fmt.Sprintf("[PATCH /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}][%d] updatePassConflict  %+v", 409, o.ToJSONString())
}

func (o *UpdatePassConflict) ToJSONString() string {
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

func (o *UpdatePassConflict) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdatePassConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdatePassUnprocessableEntity creates a UpdatePassUnprocessableEntity with default headers values
func NewUpdatePassUnprocessableEntity() *UpdatePassUnprocessableEntity {
	return &UpdatePassUnprocessableEntity{}
}

/*UpdatePassUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdatePassUnprocessableEntity struct {
	Payload *seasonpassclientmodels.ValidationErrorEntity
}

func (o *UpdatePassUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PATCH /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}][%d] updatePassUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UpdatePassUnprocessableEntity) ToJSONString() string {
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

func (o *UpdatePassUnprocessableEntity) GetPayload() *seasonpassclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdatePassUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
