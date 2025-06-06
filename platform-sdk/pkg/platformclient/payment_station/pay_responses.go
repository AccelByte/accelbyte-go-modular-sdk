// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package payment_station

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

type PayResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.PaymentProcessResult

	Error400 *platformclientmodels.ErrorEntity
	Error404 *platformclientmodels.ErrorEntity
	Error409 *platformclientmodels.ErrorEntity
}

func (m *PayResponse) Unpack() (*platformclientmodels.PaymentProcessResult, *platformclientmodels.ApiError) {
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

		case 404:
			e, err := m.Error404.TranslateToApiError()
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

		default:
			return nil, &platformclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// PayReader is a Reader for the Pay structure.
type PayReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PayReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPayOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPayBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPayNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPayConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/pay returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPayOK creates a PayOK with default headers values
func NewPayOK() *PayOK {
	return &PayOK{}
}

/*PayOK handles this case with default header values.

  successful operation
*/
type PayOK struct {
	Payload *platformclientmodels.PaymentProcessResult
}

func (o *PayOK) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/pay][%d] payOK  %+v", 200, o.ToJSONString())
}

func (o *PayOK) ToJSONString() string {
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

func (o *PayOK) GetPayload() *platformclientmodels.PaymentProcessResult {
	return o.Payload
}

func (o *PayOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.PaymentProcessResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPayBadRequest creates a PayBadRequest with default headers values
func NewPayBadRequest() *PayBadRequest {
	return &PayBadRequest{}
}

/*PayBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33322</td><td>Payment provider [{paymentProvider}] not supported</td></tr></table>
*/
type PayBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PayBadRequest) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/pay][%d] payBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PayBadRequest) ToJSONString() string {
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

func (o *PayBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PayBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPayNotFound creates a PayNotFound with default headers values
func NewPayNotFound() *PayNotFound {
	return &PayNotFound{}
}

/*PayNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33141</td><td>Payment Order [{paymentOrderNo}] does not exist</td></tr></table>
*/
type PayNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PayNotFound) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/pay][%d] payNotFound  %+v", 404, o.ToJSONString())
}

func (o *PayNotFound) ToJSONString() string {
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

func (o *PayNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PayNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPayConflict creates a PayConflict with default headers values
func NewPayConflict() *PayConflict {
	return &PayConflict{}
}

/*PayConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33171</td><td>Invalid payment order status [{status}] for payment order [{paymentOrderNo}]</td></tr></table>
*/
type PayConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PayConflict) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/pay][%d] payConflict  %+v", 409, o.ToJSONString())
}

func (o *PayConflict) ToJSONString() string {
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

func (o *PayConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PayConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
