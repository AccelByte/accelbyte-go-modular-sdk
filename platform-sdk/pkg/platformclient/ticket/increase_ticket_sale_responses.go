// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ticket

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
)

type IncreaseTicketSaleResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.TicketSaleIncrementResult

	Error404 *platformclientmodels.ErrorEntity
	Error422 *platformclientmodels.ValidationErrorEntity
}

func (m *IncreaseTicketSaleResponse) Unpack() (*platformclientmodels.TicketSaleIncrementResult, *platformclientmodels.ApiError) {
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

		case 422:
			e, err := m.Error422.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		default:
			return nil, &platformclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// IncreaseTicketSaleReader is a Reader for the IncreaseTicketSale structure.
type IncreaseTicketSaleReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *IncreaseTicketSaleReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewIncreaseTicketSaleOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewIncreaseTicketSaleNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewIncreaseTicketSaleUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/tickets/{boothName}/increment returns an error %d: %s", response.Code(), string(data))
	}
}

// NewIncreaseTicketSaleOK creates a IncreaseTicketSaleOK with default headers values
func NewIncreaseTicketSaleOK() *IncreaseTicketSaleOK {
	return &IncreaseTicketSaleOK{}
}

/*IncreaseTicketSaleOK handles this case with default header values.

  successful operation
*/
type IncreaseTicketSaleOK struct {
	Payload *platformclientmodels.TicketSaleIncrementResult
}

func (o *IncreaseTicketSaleOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/tickets/{boothName}/increment][%d] increaseTicketSaleOK  %+v", 200, o.ToJSONString())
}

func (o *IncreaseTicketSaleOK) ToJSONString() string {
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

func (o *IncreaseTicketSaleOK) GetPayload() *platformclientmodels.TicketSaleIncrementResult {
	return o.Payload
}

func (o *IncreaseTicketSaleOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.TicketSaleIncrementResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewIncreaseTicketSaleNotFound creates a IncreaseTicketSaleNotFound with default headers values
func NewIncreaseTicketSaleNotFound() *IncreaseTicketSaleNotFound {
	return &IncreaseTicketSaleNotFound{}
}

/*IncreaseTicketSaleNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>37041</td><td>Ticket booth [{boothName}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type IncreaseTicketSaleNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *IncreaseTicketSaleNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/tickets/{boothName}/increment][%d] increaseTicketSaleNotFound  %+v", 404, o.ToJSONString())
}

func (o *IncreaseTicketSaleNotFound) ToJSONString() string {
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

func (o *IncreaseTicketSaleNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *IncreaseTicketSaleNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewIncreaseTicketSaleUnprocessableEntity creates a IncreaseTicketSaleUnprocessableEntity with default headers values
func NewIncreaseTicketSaleUnprocessableEntity() *IncreaseTicketSaleUnprocessableEntity {
	return &IncreaseTicketSaleUnprocessableEntity{}
}

/*IncreaseTicketSaleUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type IncreaseTicketSaleUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *IncreaseTicketSaleUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/tickets/{boothName}/increment][%d] increaseTicketSaleUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *IncreaseTicketSaleUnprocessableEntity) ToJSONString() string {
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

func (o *IncreaseTicketSaleUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *IncreaseTicketSaleUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
