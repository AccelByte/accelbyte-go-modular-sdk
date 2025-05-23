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

type PublicCheckPaymentOrderPaidStatusResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.PaymentOrderPaidResult

	Error404 *platformclientmodels.ErrorEntity
}

func (m *PublicCheckPaymentOrderPaidStatusResponse) Unpack() (*platformclientmodels.PaymentOrderPaidResult, *platformclientmodels.ApiError) {
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

		default:
			return nil, &platformclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// PublicCheckPaymentOrderPaidStatusReader is a Reader for the PublicCheckPaymentOrderPaidStatus structure.
type PublicCheckPaymentOrderPaidStatusReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicCheckPaymentOrderPaidStatusReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicCheckPaymentOrderPaidStatusOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicCheckPaymentOrderPaidStatusNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/status returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicCheckPaymentOrderPaidStatusOK creates a PublicCheckPaymentOrderPaidStatusOK with default headers values
func NewPublicCheckPaymentOrderPaidStatusOK() *PublicCheckPaymentOrderPaidStatusOK {
	return &PublicCheckPaymentOrderPaidStatusOK{}
}

/*PublicCheckPaymentOrderPaidStatusOK handles this case with default header values.

  successful operation
*/
type PublicCheckPaymentOrderPaidStatusOK struct {
	Payload *platformclientmodels.PaymentOrderPaidResult
}

func (o *PublicCheckPaymentOrderPaidStatusOK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/status][%d] publicCheckPaymentOrderPaidStatusOK  %+v", 200, o.ToJSONString())
}

func (o *PublicCheckPaymentOrderPaidStatusOK) ToJSONString() string {
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

func (o *PublicCheckPaymentOrderPaidStatusOK) GetPayload() *platformclientmodels.PaymentOrderPaidResult {
	return o.Payload
}

func (o *PublicCheckPaymentOrderPaidStatusOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.PaymentOrderPaidResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicCheckPaymentOrderPaidStatusNotFound creates a PublicCheckPaymentOrderPaidStatusNotFound with default headers values
func NewPublicCheckPaymentOrderPaidStatusNotFound() *PublicCheckPaymentOrderPaidStatusNotFound {
	return &PublicCheckPaymentOrderPaidStatusNotFound{}
}

/*PublicCheckPaymentOrderPaidStatusNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33141</td><td>Payment Order [{paymentOrderNo}] does not exist</td></tr></table>
*/
type PublicCheckPaymentOrderPaidStatusNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicCheckPaymentOrderPaidStatusNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/status][%d] publicCheckPaymentOrderPaidStatusNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicCheckPaymentOrderPaidStatusNotFound) ToJSONString() string {
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

func (o *PublicCheckPaymentOrderPaidStatusNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicCheckPaymentOrderPaidStatusNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
