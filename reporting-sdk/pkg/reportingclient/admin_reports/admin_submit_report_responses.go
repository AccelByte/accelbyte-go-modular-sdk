// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_reports

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

type AdminSubmitReportResponse struct {
	reportingclientmodels.ApiResponse
	Data *reportingclientmodels.RestapiSubmitReportResponse

	Error400 *reportingclientmodels.RestapiErrorResponse
	Error409 *reportingclientmodels.RestapiErrorResponse
	Error500 *reportingclientmodels.RestapiErrorResponse
}

func (m *AdminSubmitReportResponse) Unpack() (*reportingclientmodels.RestapiSubmitReportResponse, *reportingclientmodels.ApiError) {
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

// AdminSubmitReportReader is a Reader for the AdminSubmitReport structure.
type AdminSubmitReportReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminSubmitReportReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminSubmitReportCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminSubmitReportBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminSubmitReportConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminSubmitReportInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /reporting/v1/admin/namespaces/{namespace}/reports returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminSubmitReportCreated creates a AdminSubmitReportCreated with default headers values
func NewAdminSubmitReportCreated() *AdminSubmitReportCreated {
	return &AdminSubmitReportCreated{}
}

/*AdminSubmitReportCreated handles this case with default header values.


 */
type AdminSubmitReportCreated struct {
	Payload *reportingclientmodels.RestapiSubmitReportResponse
}

func (o *AdminSubmitReportCreated) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/admin/namespaces/{namespace}/reports][%d] adminSubmitReportCreated  %+v", 201, o.ToJSONString())
}

func (o *AdminSubmitReportCreated) ToJSONString() string {
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

func (o *AdminSubmitReportCreated) GetPayload() *reportingclientmodels.RestapiSubmitReportResponse {
	return o.Payload
}

func (o *AdminSubmitReportCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiSubmitReportResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminSubmitReportBadRequest creates a AdminSubmitReportBadRequest with default headers values
func NewAdminSubmitReportBadRequest() *AdminSubmitReportBadRequest {
	return &AdminSubmitReportBadRequest{}
}

/*AdminSubmitReportBadRequest handles this case with default header values.


 */
type AdminSubmitReportBadRequest struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *AdminSubmitReportBadRequest) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/admin/namespaces/{namespace}/reports][%d] adminSubmitReportBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminSubmitReportBadRequest) ToJSONString() string {
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

func (o *AdminSubmitReportBadRequest) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *AdminSubmitReportBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSubmitReportConflict creates a AdminSubmitReportConflict with default headers values
func NewAdminSubmitReportConflict() *AdminSubmitReportConflict {
	return &AdminSubmitReportConflict{}
}

/*AdminSubmitReportConflict handles this case with default header values.


 */
type AdminSubmitReportConflict struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *AdminSubmitReportConflict) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/admin/namespaces/{namespace}/reports][%d] adminSubmitReportConflict  %+v", 409, o.ToJSONString())
}

func (o *AdminSubmitReportConflict) ToJSONString() string {
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

func (o *AdminSubmitReportConflict) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *AdminSubmitReportConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSubmitReportInternalServerError creates a AdminSubmitReportInternalServerError with default headers values
func NewAdminSubmitReportInternalServerError() *AdminSubmitReportInternalServerError {
	return &AdminSubmitReportInternalServerError{}
}

/*AdminSubmitReportInternalServerError handles this case with default header values.


 */
type AdminSubmitReportInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *AdminSubmitReportInternalServerError) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/admin/namespaces/{namespace}/reports][%d] adminSubmitReportInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminSubmitReportInternalServerError) ToJSONString() string {
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

func (o *AdminSubmitReportInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *AdminSubmitReportInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
