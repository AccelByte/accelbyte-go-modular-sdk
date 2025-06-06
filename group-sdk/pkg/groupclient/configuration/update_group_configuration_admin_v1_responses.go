// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configuration

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg/groupclientmodels"
)

type UpdateGroupConfigurationAdminV1Response struct {
	groupclientmodels.ApiResponse
	Data *groupclientmodels.ModelsUpdateGroupConfigurationResponseV1

	Error400 *groupclientmodels.ResponseErrorResponse
	Error401 *groupclientmodels.ResponseErrorResponse
	Error403 *groupclientmodels.ResponseErrorResponse
	Error404 *groupclientmodels.ResponseErrorResponse
	Error500 *groupclientmodels.ResponseErrorResponse
}

func (m *UpdateGroupConfigurationAdminV1Response) Unpack() (*groupclientmodels.ModelsUpdateGroupConfigurationResponseV1, *groupclientmodels.ApiError) {
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
			return nil, &groupclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// UpdateGroupConfigurationAdminV1Reader is a Reader for the UpdateGroupConfigurationAdminV1 structure.
type UpdateGroupConfigurationAdminV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateGroupConfigurationAdminV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateGroupConfigurationAdminV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateGroupConfigurationAdminV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateGroupConfigurationAdminV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateGroupConfigurationAdminV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateGroupConfigurationAdminV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateGroupConfigurationAdminV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateGroupConfigurationAdminV1OK creates a UpdateGroupConfigurationAdminV1OK with default headers values
func NewUpdateGroupConfigurationAdminV1OK() *UpdateGroupConfigurationAdminV1OK {
	return &UpdateGroupConfigurationAdminV1OK{}
}

/*UpdateGroupConfigurationAdminV1OK handles this case with default header values.

  OK
*/
type UpdateGroupConfigurationAdminV1OK struct {
	Payload *groupclientmodels.ModelsUpdateGroupConfigurationResponseV1
}

func (o *UpdateGroupConfigurationAdminV1OK) Error() string {
	return fmt.Sprintf("[PATCH /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}][%d] updateGroupConfigurationAdminV1OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateGroupConfigurationAdminV1OK) ToJSONString() string {
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

func (o *UpdateGroupConfigurationAdminV1OK) GetPayload() *groupclientmodels.ModelsUpdateGroupConfigurationResponseV1 {
	return o.Payload
}

func (o *UpdateGroupConfigurationAdminV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsUpdateGroupConfigurationResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateGroupConfigurationAdminV1BadRequest creates a UpdateGroupConfigurationAdminV1BadRequest with default headers values
func NewUpdateGroupConfigurationAdminV1BadRequest() *UpdateGroupConfigurationAdminV1BadRequest {
	return &UpdateGroupConfigurationAdminV1BadRequest{}
}

/*UpdateGroupConfigurationAdminV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdateGroupConfigurationAdminV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupConfigurationAdminV1BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}][%d] updateGroupConfigurationAdminV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateGroupConfigurationAdminV1BadRequest) ToJSONString() string {
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

func (o *UpdateGroupConfigurationAdminV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupConfigurationAdminV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateGroupConfigurationAdminV1Unauthorized creates a UpdateGroupConfigurationAdminV1Unauthorized with default headers values
func NewUpdateGroupConfigurationAdminV1Unauthorized() *UpdateGroupConfigurationAdminV1Unauthorized {
	return &UpdateGroupConfigurationAdminV1Unauthorized{}
}

/*UpdateGroupConfigurationAdminV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateGroupConfigurationAdminV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupConfigurationAdminV1Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}][%d] updateGroupConfigurationAdminV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateGroupConfigurationAdminV1Unauthorized) ToJSONString() string {
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

func (o *UpdateGroupConfigurationAdminV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupConfigurationAdminV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateGroupConfigurationAdminV1Forbidden creates a UpdateGroupConfigurationAdminV1Forbidden with default headers values
func NewUpdateGroupConfigurationAdminV1Forbidden() *UpdateGroupConfigurationAdminV1Forbidden {
	return &UpdateGroupConfigurationAdminV1Forbidden{}
}

/*UpdateGroupConfigurationAdminV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type UpdateGroupConfigurationAdminV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupConfigurationAdminV1Forbidden) Error() string {
	return fmt.Sprintf("[PATCH /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}][%d] updateGroupConfigurationAdminV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateGroupConfigurationAdminV1Forbidden) ToJSONString() string {
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

func (o *UpdateGroupConfigurationAdminV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupConfigurationAdminV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateGroupConfigurationAdminV1NotFound creates a UpdateGroupConfigurationAdminV1NotFound with default headers values
func NewUpdateGroupConfigurationAdminV1NotFound() *UpdateGroupConfigurationAdminV1NotFound {
	return &UpdateGroupConfigurationAdminV1NotFound{}
}

/*UpdateGroupConfigurationAdminV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73131</td><td>global configuration not found</td></tr></table>
*/
type UpdateGroupConfigurationAdminV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupConfigurationAdminV1NotFound) Error() string {
	return fmt.Sprintf("[PATCH /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}][%d] updateGroupConfigurationAdminV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateGroupConfigurationAdminV1NotFound) ToJSONString() string {
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

func (o *UpdateGroupConfigurationAdminV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupConfigurationAdminV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateGroupConfigurationAdminV1InternalServerError creates a UpdateGroupConfigurationAdminV1InternalServerError with default headers values
func NewUpdateGroupConfigurationAdminV1InternalServerError() *UpdateGroupConfigurationAdminV1InternalServerError {
	return &UpdateGroupConfigurationAdminV1InternalServerError{}
}

/*UpdateGroupConfigurationAdminV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateGroupConfigurationAdminV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupConfigurationAdminV1InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}][%d] updateGroupConfigurationAdminV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateGroupConfigurationAdminV1InternalServerError) ToJSONString() string {
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

func (o *UpdateGroupConfigurationAdminV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupConfigurationAdminV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
