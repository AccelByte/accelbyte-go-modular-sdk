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

type DeleteModerationRuleResponse struct {
	reportingclientmodels.ApiResponse

	Error400 *reportingclientmodels.RestapiErrorResponse
	Error500 *reportingclientmodels.RestapiErrorResponse
}

func (m *DeleteModerationRuleResponse) Unpack() *reportingclientmodels.ApiError {
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

// DeleteModerationRuleReader is a Reader for the DeleteModerationRule structure.
type DeleteModerationRuleReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteModerationRuleReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteModerationRuleNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteModerationRuleBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteModerationRuleInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /reporting/v1/admin/namespaces/{namespace}/rule/{ruleId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteModerationRuleNoContent creates a DeleteModerationRuleNoContent with default headers values
func NewDeleteModerationRuleNoContent() *DeleteModerationRuleNoContent {
	return &DeleteModerationRuleNoContent{}
}

/*DeleteModerationRuleNoContent handles this case with default header values.

  No Content
*/
type DeleteModerationRuleNoContent struct {
}

func (o *DeleteModerationRuleNoContent) Error() string {
	return fmt.Sprintf("[DELETE /reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}][%d] deleteModerationRuleNoContent ", 204)
}

func (o *DeleteModerationRuleNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteModerationRuleBadRequest creates a DeleteModerationRuleBadRequest with default headers values
func NewDeleteModerationRuleBadRequest() *DeleteModerationRuleBadRequest {
	return &DeleteModerationRuleBadRequest{}
}

/*DeleteModerationRuleBadRequest handles this case with default header values.

  Bad Request
*/
type DeleteModerationRuleBadRequest struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *DeleteModerationRuleBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}][%d] deleteModerationRuleBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteModerationRuleBadRequest) ToJSONString() string {
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

func (o *DeleteModerationRuleBadRequest) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *DeleteModerationRuleBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteModerationRuleInternalServerError creates a DeleteModerationRuleInternalServerError with default headers values
func NewDeleteModerationRuleInternalServerError() *DeleteModerationRuleInternalServerError {
	return &DeleteModerationRuleInternalServerError{}
}

/*DeleteModerationRuleInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteModerationRuleInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *DeleteModerationRuleInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}][%d] deleteModerationRuleInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteModerationRuleInternalServerError) ToJSONString() string {
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

func (o *DeleteModerationRuleInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *DeleteModerationRuleInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
