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

type DeleteTicketResponse struct {
	reportingclientmodels.ApiResponse

	Error404 *reportingclientmodels.RestapiErrorResponse
	Error500 *reportingclientmodels.RestapiErrorResponse
}

func (m *DeleteTicketResponse) Unpack() *reportingclientmodels.ApiError {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

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

// DeleteTicketReader is a Reader for the DeleteTicket structure.
type DeleteTicketReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteTicketReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteTicketNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteTicketNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteTicketInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteTicketNoContent creates a DeleteTicketNoContent with default headers values
func NewDeleteTicketNoContent() *DeleteTicketNoContent {
	return &DeleteTicketNoContent{}
}

/*DeleteTicketNoContent handles this case with default header values.


 */
type DeleteTicketNoContent struct {
}

func (o *DeleteTicketNoContent) Error() string {
	return fmt.Sprintf("[DELETE /reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}][%d] deleteTicketNoContent ", 204)
}

func (o *DeleteTicketNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteTicketNotFound creates a DeleteTicketNotFound with default headers values
func NewDeleteTicketNotFound() *DeleteTicketNotFound {
	return &DeleteTicketNotFound{}
}

/*DeleteTicketNotFound handles this case with default header values.


 */
type DeleteTicketNotFound struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *DeleteTicketNotFound) Error() string {
	return fmt.Sprintf("[DELETE /reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}][%d] deleteTicketNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteTicketNotFound) ToJSONString() string {
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

func (o *DeleteTicketNotFound) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *DeleteTicketNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteTicketInternalServerError creates a DeleteTicketInternalServerError with default headers values
func NewDeleteTicketInternalServerError() *DeleteTicketInternalServerError {
	return &DeleteTicketInternalServerError{}
}

/*DeleteTicketInternalServerError handles this case with default header values.


 */
type DeleteTicketInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *DeleteTicketInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}][%d] deleteTicketInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteTicketInternalServerError) ToJSONString() string {
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

func (o *DeleteTicketInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *DeleteTicketInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
