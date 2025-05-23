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

type GetModerationRuleDetailsResponse struct {
	reportingclientmodels.ApiResponse
	Data *reportingclientmodels.RestapiModerationRuleResponse

	Error404 *reportingclientmodels.RestapiErrorResponse
	Error500 *reportingclientmodels.RestapiErrorResponse
}

func (m *GetModerationRuleDetailsResponse) Unpack() (*reportingclientmodels.RestapiModerationRuleResponse, *reportingclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

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
			return nil, &reportingclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// GetModerationRuleDetailsReader is a Reader for the GetModerationRuleDetails structure.
type GetModerationRuleDetailsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetModerationRuleDetailsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetModerationRuleDetailsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetModerationRuleDetailsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetModerationRuleDetailsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /reporting/v1/admin/namespaces/{namespace}/rules/{ruleId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetModerationRuleDetailsOK creates a GetModerationRuleDetailsOK with default headers values
func NewGetModerationRuleDetailsOK() *GetModerationRuleDetailsOK {
	return &GetModerationRuleDetailsOK{}
}

/*GetModerationRuleDetailsOK handles this case with default header values.

  OK
*/
type GetModerationRuleDetailsOK struct {
	Payload *reportingclientmodels.RestapiModerationRuleResponse
}

func (o *GetModerationRuleDetailsOK) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/namespaces/{namespace}/rules/{ruleId}][%d] getModerationRuleDetailsOK  %+v", 200, o.ToJSONString())
}

func (o *GetModerationRuleDetailsOK) ToJSONString() string {
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

func (o *GetModerationRuleDetailsOK) GetPayload() *reportingclientmodels.RestapiModerationRuleResponse {
	return o.Payload
}

func (o *GetModerationRuleDetailsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiModerationRuleResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetModerationRuleDetailsNotFound creates a GetModerationRuleDetailsNotFound with default headers values
func NewGetModerationRuleDetailsNotFound() *GetModerationRuleDetailsNotFound {
	return &GetModerationRuleDetailsNotFound{}
}

/*GetModerationRuleDetailsNotFound handles this case with default header values.

  Not Found
*/
type GetModerationRuleDetailsNotFound struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *GetModerationRuleDetailsNotFound) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/namespaces/{namespace}/rules/{ruleId}][%d] getModerationRuleDetailsNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetModerationRuleDetailsNotFound) ToJSONString() string {
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

func (o *GetModerationRuleDetailsNotFound) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *GetModerationRuleDetailsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetModerationRuleDetailsInternalServerError creates a GetModerationRuleDetailsInternalServerError with default headers values
func NewGetModerationRuleDetailsInternalServerError() *GetModerationRuleDetailsInternalServerError {
	return &GetModerationRuleDetailsInternalServerError{}
}

/*GetModerationRuleDetailsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetModerationRuleDetailsInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *GetModerationRuleDetailsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/namespaces/{namespace}/rules/{ruleId}][%d] getModerationRuleDetailsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetModerationRuleDetailsInternalServerError) ToJSONString() string {
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

func (o *GetModerationRuleDetailsInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *GetModerationRuleDetailsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
