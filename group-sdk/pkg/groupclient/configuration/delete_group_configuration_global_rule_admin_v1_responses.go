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

type DeleteGroupConfigurationGlobalRuleAdminV1Response struct {
	groupclientmodels.ApiResponse
	Data *groupclientmodels.ModelsUpdateGroupConfigurationResponseV1

	Error400 *groupclientmodels.ResponseErrorResponse
	Error401 *groupclientmodels.ResponseErrorResponse
	Error403 *groupclientmodels.ResponseErrorResponse
	Error404 *groupclientmodels.ResponseErrorResponse
	Error500 *groupclientmodels.ResponseErrorResponse
}

func (m *DeleteGroupConfigurationGlobalRuleAdminV1Response) Unpack() (*groupclientmodels.ModelsUpdateGroupConfigurationResponseV1, *groupclientmodels.ApiError) {
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

// DeleteGroupConfigurationGlobalRuleAdminV1Reader is a Reader for the DeleteGroupConfigurationGlobalRuleAdminV1 structure.
type DeleteGroupConfigurationGlobalRuleAdminV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteGroupConfigurationGlobalRuleAdminV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDeleteGroupConfigurationGlobalRuleAdminV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteGroupConfigurationGlobalRuleAdminV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteGroupConfigurationGlobalRuleAdminV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteGroupConfigurationGlobalRuleAdminV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteGroupConfigurationGlobalRuleAdminV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteGroupConfigurationGlobalRuleAdminV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteGroupConfigurationGlobalRuleAdminV1OK creates a DeleteGroupConfigurationGlobalRuleAdminV1OK with default headers values
func NewDeleteGroupConfigurationGlobalRuleAdminV1OK() *DeleteGroupConfigurationGlobalRuleAdminV1OK {
	return &DeleteGroupConfigurationGlobalRuleAdminV1OK{}
}

/*DeleteGroupConfigurationGlobalRuleAdminV1OK handles this case with default header values.

  OK
*/
type DeleteGroupConfigurationGlobalRuleAdminV1OK struct {
	Payload *groupclientmodels.ModelsUpdateGroupConfigurationResponseV1
}

func (o *DeleteGroupConfigurationGlobalRuleAdminV1OK) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction}][%d] deleteGroupConfigurationGlobalRuleAdminV1OK  %+v", 200, o.ToJSONString())
}

func (o *DeleteGroupConfigurationGlobalRuleAdminV1OK) ToJSONString() string {
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

func (o *DeleteGroupConfigurationGlobalRuleAdminV1OK) GetPayload() *groupclientmodels.ModelsUpdateGroupConfigurationResponseV1 {
	return o.Payload
}

func (o *DeleteGroupConfigurationGlobalRuleAdminV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteGroupConfigurationGlobalRuleAdminV1BadRequest creates a DeleteGroupConfigurationGlobalRuleAdminV1BadRequest with default headers values
func NewDeleteGroupConfigurationGlobalRuleAdminV1BadRequest() *DeleteGroupConfigurationGlobalRuleAdminV1BadRequest {
	return &DeleteGroupConfigurationGlobalRuleAdminV1BadRequest{}
}

/*DeleteGroupConfigurationGlobalRuleAdminV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type DeleteGroupConfigurationGlobalRuleAdminV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteGroupConfigurationGlobalRuleAdminV1BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction}][%d] deleteGroupConfigurationGlobalRuleAdminV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteGroupConfigurationGlobalRuleAdminV1BadRequest) ToJSONString() string {
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

func (o *DeleteGroupConfigurationGlobalRuleAdminV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteGroupConfigurationGlobalRuleAdminV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteGroupConfigurationGlobalRuleAdminV1Unauthorized creates a DeleteGroupConfigurationGlobalRuleAdminV1Unauthorized with default headers values
func NewDeleteGroupConfigurationGlobalRuleAdminV1Unauthorized() *DeleteGroupConfigurationGlobalRuleAdminV1Unauthorized {
	return &DeleteGroupConfigurationGlobalRuleAdminV1Unauthorized{}
}

/*DeleteGroupConfigurationGlobalRuleAdminV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteGroupConfigurationGlobalRuleAdminV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteGroupConfigurationGlobalRuleAdminV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction}][%d] deleteGroupConfigurationGlobalRuleAdminV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteGroupConfigurationGlobalRuleAdminV1Unauthorized) ToJSONString() string {
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

func (o *DeleteGroupConfigurationGlobalRuleAdminV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteGroupConfigurationGlobalRuleAdminV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteGroupConfigurationGlobalRuleAdminV1Forbidden creates a DeleteGroupConfigurationGlobalRuleAdminV1Forbidden with default headers values
func NewDeleteGroupConfigurationGlobalRuleAdminV1Forbidden() *DeleteGroupConfigurationGlobalRuleAdminV1Forbidden {
	return &DeleteGroupConfigurationGlobalRuleAdminV1Forbidden{}
}

/*DeleteGroupConfigurationGlobalRuleAdminV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type DeleteGroupConfigurationGlobalRuleAdminV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteGroupConfigurationGlobalRuleAdminV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction}][%d] deleteGroupConfigurationGlobalRuleAdminV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteGroupConfigurationGlobalRuleAdminV1Forbidden) ToJSONString() string {
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

func (o *DeleteGroupConfigurationGlobalRuleAdminV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteGroupConfigurationGlobalRuleAdminV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteGroupConfigurationGlobalRuleAdminV1NotFound creates a DeleteGroupConfigurationGlobalRuleAdminV1NotFound with default headers values
func NewDeleteGroupConfigurationGlobalRuleAdminV1NotFound() *DeleteGroupConfigurationGlobalRuleAdminV1NotFound {
	return &DeleteGroupConfigurationGlobalRuleAdminV1NotFound{}
}

/*DeleteGroupConfigurationGlobalRuleAdminV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73131</td><td>global configuration not found</td></tr></table>
*/
type DeleteGroupConfigurationGlobalRuleAdminV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteGroupConfigurationGlobalRuleAdminV1NotFound) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction}][%d] deleteGroupConfigurationGlobalRuleAdminV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteGroupConfigurationGlobalRuleAdminV1NotFound) ToJSONString() string {
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

func (o *DeleteGroupConfigurationGlobalRuleAdminV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteGroupConfigurationGlobalRuleAdminV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteGroupConfigurationGlobalRuleAdminV1InternalServerError creates a DeleteGroupConfigurationGlobalRuleAdminV1InternalServerError with default headers values
func NewDeleteGroupConfigurationGlobalRuleAdminV1InternalServerError() *DeleteGroupConfigurationGlobalRuleAdminV1InternalServerError {
	return &DeleteGroupConfigurationGlobalRuleAdminV1InternalServerError{}
}

/*DeleteGroupConfigurationGlobalRuleAdminV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteGroupConfigurationGlobalRuleAdminV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *DeleteGroupConfigurationGlobalRuleAdminV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction}][%d] deleteGroupConfigurationGlobalRuleAdminV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteGroupConfigurationGlobalRuleAdminV1InternalServerError) ToJSONString() string {
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

func (o *DeleteGroupConfigurationGlobalRuleAdminV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteGroupConfigurationGlobalRuleAdminV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
