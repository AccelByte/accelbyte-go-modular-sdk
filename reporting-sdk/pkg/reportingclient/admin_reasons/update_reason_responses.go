// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_reasons

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

type UpdateReasonResponse struct {
	reportingclientmodels.ApiResponse
	Data *reportingclientmodels.RestapiAdminReasonResponse

	Error400 *reportingclientmodels.RestapiErrorResponse
	Error409 *reportingclientmodels.RestapiErrorResponse
	Error500 *reportingclientmodels.RestapiErrorResponse
}

func (m *UpdateReasonResponse) Unpack() (*reportingclientmodels.RestapiAdminReasonResponse, *reportingclientmodels.ApiError) {
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

		case 409:
			e, err := m.Error409.TranslateToApiError()
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

// UpdateReasonReader is a Reader for the UpdateReason structure.
type UpdateReasonReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateReasonReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateReasonOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateReasonBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdateReasonConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateReasonInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateReasonOK creates a UpdateReasonOK with default headers values
func NewUpdateReasonOK() *UpdateReasonOK {
	return &UpdateReasonOK{}
}

/*UpdateReasonOK handles this case with default header values.


 */
type UpdateReasonOK struct {
	Payload *reportingclientmodels.RestapiAdminReasonResponse
}

func (o *UpdateReasonOK) Error() string {
	return fmt.Sprintf("[PATCH /reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId}][%d] updateReasonOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateReasonOK) ToJSONString() string {
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

func (o *UpdateReasonOK) GetPayload() *reportingclientmodels.RestapiAdminReasonResponse {
	return o.Payload
}

func (o *UpdateReasonOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiAdminReasonResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateReasonBadRequest creates a UpdateReasonBadRequest with default headers values
func NewUpdateReasonBadRequest() *UpdateReasonBadRequest {
	return &UpdateReasonBadRequest{}
}

/*UpdateReasonBadRequest handles this case with default header values.


 */
type UpdateReasonBadRequest struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *UpdateReasonBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId}][%d] updateReasonBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateReasonBadRequest) ToJSONString() string {
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

func (o *UpdateReasonBadRequest) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *UpdateReasonBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateReasonConflict creates a UpdateReasonConflict with default headers values
func NewUpdateReasonConflict() *UpdateReasonConflict {
	return &UpdateReasonConflict{}
}

/*UpdateReasonConflict handles this case with default header values.

  Conflict
*/
type UpdateReasonConflict struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *UpdateReasonConflict) Error() string {
	return fmt.Sprintf("[PATCH /reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId}][%d] updateReasonConflict  %+v", 409, o.ToJSONString())
}

func (o *UpdateReasonConflict) ToJSONString() string {
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

func (o *UpdateReasonConflict) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *UpdateReasonConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateReasonInternalServerError creates a UpdateReasonInternalServerError with default headers values
func NewUpdateReasonInternalServerError() *UpdateReasonInternalServerError {
	return &UpdateReasonInternalServerError{}
}

/*UpdateReasonInternalServerError handles this case with default header values.


 */
type UpdateReasonInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *UpdateReasonInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId}][%d] updateReasonInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateReasonInternalServerError) ToJSONString() string {
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

func (o *UpdateReasonInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *UpdateReasonInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
