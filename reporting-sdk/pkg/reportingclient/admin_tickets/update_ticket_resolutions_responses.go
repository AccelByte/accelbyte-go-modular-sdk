// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_tickets

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

type UpdateTicketResolutionsResponse struct {
	reportingclientmodels.ApiResponse
	Data *reportingclientmodels.RestapiTicketResponse

	Error500 *reportingclientmodels.RestapiErrorResponse
}

func (m *UpdateTicketResolutionsResponse) Unpack() (*reportingclientmodels.RestapiTicketResponse, *reportingclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

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

// UpdateTicketResolutionsReader is a Reader for the UpdateTicketResolutions structure.
type UpdateTicketResolutionsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateTicketResolutionsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateTicketResolutionsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateTicketResolutionsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}/resolutions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateTicketResolutionsOK creates a UpdateTicketResolutionsOK with default headers values
func NewUpdateTicketResolutionsOK() *UpdateTicketResolutionsOK {
	return &UpdateTicketResolutionsOK{}
}

/*UpdateTicketResolutionsOK handles this case with default header values.


 */
type UpdateTicketResolutionsOK struct {
	Payload *reportingclientmodels.RestapiTicketResponse
}

func (o *UpdateTicketResolutionsOK) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}/resolutions][%d] updateTicketResolutionsOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateTicketResolutionsOK) ToJSONString() string {
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

func (o *UpdateTicketResolutionsOK) GetPayload() *reportingclientmodels.RestapiTicketResponse {
	return o.Payload
}

func (o *UpdateTicketResolutionsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiTicketResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateTicketResolutionsInternalServerError creates a UpdateTicketResolutionsInternalServerError with default headers values
func NewUpdateTicketResolutionsInternalServerError() *UpdateTicketResolutionsInternalServerError {
	return &UpdateTicketResolutionsInternalServerError{}
}

/*UpdateTicketResolutionsInternalServerError handles this case with default header values.


 */
type UpdateTicketResolutionsInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *UpdateTicketResolutionsInternalServerError) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}/resolutions][%d] updateTicketResolutionsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateTicketResolutionsInternalServerError) ToJSONString() string {
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

func (o *UpdateTicketResolutionsInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *UpdateTicketResolutionsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
