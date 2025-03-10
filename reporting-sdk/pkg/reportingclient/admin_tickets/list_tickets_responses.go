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

type ListTicketsResponse struct {
	reportingclientmodels.ApiResponse
	Data *reportingclientmodels.RestapiTicketListResponse

	Error500 *reportingclientmodels.RestapiErrorResponse
}

func (m *ListTicketsResponse) Unpack() (*reportingclientmodels.RestapiTicketListResponse, *reportingclientmodels.ApiError) {
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

// ListTicketsReader is a Reader for the ListTickets structure.
type ListTicketsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListTicketsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListTicketsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewListTicketsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /reporting/v1/admin/namespaces/{namespace}/tickets returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListTicketsOK creates a ListTicketsOK with default headers values
func NewListTicketsOK() *ListTicketsOK {
	return &ListTicketsOK{}
}

/*ListTicketsOK handles this case with default header values.


 */
type ListTicketsOK struct {
	Payload *reportingclientmodels.RestapiTicketListResponse
}

func (o *ListTicketsOK) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/namespaces/{namespace}/tickets][%d] listTicketsOK  %+v", 200, o.ToJSONString())
}

func (o *ListTicketsOK) ToJSONString() string {
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

func (o *ListTicketsOK) GetPayload() *reportingclientmodels.RestapiTicketListResponse {
	return o.Payload
}

func (o *ListTicketsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiTicketListResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListTicketsInternalServerError creates a ListTicketsInternalServerError with default headers values
func NewListTicketsInternalServerError() *ListTicketsInternalServerError {
	return &ListTicketsInternalServerError{}
}

/*ListTicketsInternalServerError handles this case with default header values.


 */
type ListTicketsInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *ListTicketsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/namespaces/{namespace}/tickets][%d] listTicketsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ListTicketsInternalServerError) ToJSONString() string {
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

func (o *ListTicketsInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *ListTicketsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
