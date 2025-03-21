// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_moderation_rule

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/reporting-sdk/pkg/reportingclientmodels"
)

type UpdateModerationRuleStatusResponse struct {
	reportingclientmodels.ApiResponse

	Error400 *reportingclientmodels.RestapiErrorResponse
	Error404 *reportingclientmodels.RestapiErrorResponse
	Error500 *reportingclientmodels.RestapiErrorResponse
}

func (m *UpdateModerationRuleStatusResponse) Unpack() *reportingclientmodels.ApiError {
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

		case 404:
			e, err := m.Error404.TranslateToApiError()
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
			return &reportingclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// UpdateModerationRuleStatusReader is a Reader for the UpdateModerationRuleStatus structure.
type UpdateModerationRuleStatusReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateModerationRuleStatusReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewUpdateModerationRuleStatusNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateModerationRuleStatusBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateModerationRuleStatusNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateModerationRuleStatusInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}/status returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateModerationRuleStatusNoContent creates a UpdateModerationRuleStatusNoContent with default headers values
func NewUpdateModerationRuleStatusNoContent() *UpdateModerationRuleStatusNoContent {
	return &UpdateModerationRuleStatusNoContent{}
}

/*UpdateModerationRuleStatusNoContent handles this case with default header values.

  No Content
*/
type UpdateModerationRuleStatusNoContent struct {
}

func (o *UpdateModerationRuleStatusNoContent) Error() string {
	return fmt.Sprintf("[PUT /reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}/status][%d] updateModerationRuleStatusNoContent ", 204)
}

func (o *UpdateModerationRuleStatusNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUpdateModerationRuleStatusBadRequest creates a UpdateModerationRuleStatusBadRequest with default headers values
func NewUpdateModerationRuleStatusBadRequest() *UpdateModerationRuleStatusBadRequest {
	return &UpdateModerationRuleStatusBadRequest{}
}

/*UpdateModerationRuleStatusBadRequest handles this case with default header values.

  Bad Request
*/
type UpdateModerationRuleStatusBadRequest struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *UpdateModerationRuleStatusBadRequest) Error() string {
	return fmt.Sprintf("[PUT /reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}/status][%d] updateModerationRuleStatusBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateModerationRuleStatusBadRequest) ToJSONString() string {
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

func (o *UpdateModerationRuleStatusBadRequest) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *UpdateModerationRuleStatusBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateModerationRuleStatusNotFound creates a UpdateModerationRuleStatusNotFound with default headers values
func NewUpdateModerationRuleStatusNotFound() *UpdateModerationRuleStatusNotFound {
	return &UpdateModerationRuleStatusNotFound{}
}

/*UpdateModerationRuleStatusNotFound handles this case with default header values.

  Not Found
*/
type UpdateModerationRuleStatusNotFound struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *UpdateModerationRuleStatusNotFound) Error() string {
	return fmt.Sprintf("[PUT /reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}/status][%d] updateModerationRuleStatusNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateModerationRuleStatusNotFound) ToJSONString() string {
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

func (o *UpdateModerationRuleStatusNotFound) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *UpdateModerationRuleStatusNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateModerationRuleStatusInternalServerError creates a UpdateModerationRuleStatusInternalServerError with default headers values
func NewUpdateModerationRuleStatusInternalServerError() *UpdateModerationRuleStatusInternalServerError {
	return &UpdateModerationRuleStatusInternalServerError{}
}

/*UpdateModerationRuleStatusInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateModerationRuleStatusInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *UpdateModerationRuleStatusInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}/status][%d] updateModerationRuleStatusInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateModerationRuleStatusInternalServerError) ToJSONString() string {
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

func (o *UpdateModerationRuleStatusInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *UpdateModerationRuleStatusInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
