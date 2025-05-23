// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package payment_dedicated

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

type RefundPaymentOrderByDedicatedResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.PaymentOrderRefundResult

	Error404 *platformclientmodels.ErrorEntity
	Error409 *platformclientmodels.ErrorEntity
	Error422 *platformclientmodels.ValidationErrorEntity
}

func (m *RefundPaymentOrderByDedicatedResponse) Unpack() (*platformclientmodels.PaymentOrderRefundResult, *platformclientmodels.ApiError) {
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

		case 409:
			e, err := m.Error409.TranslateToApiError()
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

// RefundPaymentOrderByDedicatedReader is a Reader for the RefundPaymentOrderByDedicated structure.
type RefundPaymentOrderByDedicatedReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RefundPaymentOrderByDedicatedReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRefundPaymentOrderByDedicatedOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 204:
		result := NewRefundPaymentOrderByDedicatedNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRefundPaymentOrderByDedicatedNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewRefundPaymentOrderByDedicatedConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewRefundPaymentOrderByDedicatedUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/refund returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRefundPaymentOrderByDedicatedOK creates a RefundPaymentOrderByDedicatedOK with default headers values
func NewRefundPaymentOrderByDedicatedOK() *RefundPaymentOrderByDedicatedOK {
	return &RefundPaymentOrderByDedicatedOK{}
}

/*RefundPaymentOrderByDedicatedOK handles this case with default header values.

  successful operation
*/
type RefundPaymentOrderByDedicatedOK struct {
	Payload *platformclientmodels.PaymentOrderRefundResult
}

func (o *RefundPaymentOrderByDedicatedOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/refund][%d] refundPaymentOrderByDedicatedOK  %+v", 200, o.ToJSONString())
}

func (o *RefundPaymentOrderByDedicatedOK) ToJSONString() string {
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

func (o *RefundPaymentOrderByDedicatedOK) GetPayload() *platformclientmodels.PaymentOrderRefundResult {
	return o.Payload
}

func (o *RefundPaymentOrderByDedicatedOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.PaymentOrderRefundResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRefundPaymentOrderByDedicatedNoContent creates a RefundPaymentOrderByDedicatedNoContent with default headers values
func NewRefundPaymentOrderByDedicatedNoContent() *RefundPaymentOrderByDedicatedNoContent {
	return &RefundPaymentOrderByDedicatedNoContent{}
}

/*RefundPaymentOrderByDedicatedNoContent handles this case with default header values.

  Refund successfully
*/
type RefundPaymentOrderByDedicatedNoContent struct {
}

func (o *RefundPaymentOrderByDedicatedNoContent) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/refund][%d] refundPaymentOrderByDedicatedNoContent ", 204)
}

func (o *RefundPaymentOrderByDedicatedNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewRefundPaymentOrderByDedicatedNotFound creates a RefundPaymentOrderByDedicatedNotFound with default headers values
func NewRefundPaymentOrderByDedicatedNotFound() *RefundPaymentOrderByDedicatedNotFound {
	return &RefundPaymentOrderByDedicatedNotFound{}
}

/*RefundPaymentOrderByDedicatedNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33141</td><td>Payment Order [{paymentOrderNo}] does not exist</td></tr></table>
*/
type RefundPaymentOrderByDedicatedNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *RefundPaymentOrderByDedicatedNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/refund][%d] refundPaymentOrderByDedicatedNotFound  %+v", 404, o.ToJSONString())
}

func (o *RefundPaymentOrderByDedicatedNotFound) ToJSONString() string {
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

func (o *RefundPaymentOrderByDedicatedNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RefundPaymentOrderByDedicatedNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRefundPaymentOrderByDedicatedConflict creates a RefundPaymentOrderByDedicatedConflict with default headers values
func NewRefundPaymentOrderByDedicatedConflict() *RefundPaymentOrderByDedicatedConflict {
	return &RefundPaymentOrderByDedicatedConflict{}
}

/*RefundPaymentOrderByDedicatedConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33172</td><td>Payment order [{paymentOrderNo}] is not refundable</td></tr></table>
*/
type RefundPaymentOrderByDedicatedConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *RefundPaymentOrderByDedicatedConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/refund][%d] refundPaymentOrderByDedicatedConflict  %+v", 409, o.ToJSONString())
}

func (o *RefundPaymentOrderByDedicatedConflict) ToJSONString() string {
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

func (o *RefundPaymentOrderByDedicatedConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RefundPaymentOrderByDedicatedConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRefundPaymentOrderByDedicatedUnprocessableEntity creates a RefundPaymentOrderByDedicatedUnprocessableEntity with default headers values
func NewRefundPaymentOrderByDedicatedUnprocessableEntity() *RefundPaymentOrderByDedicatedUnprocessableEntity {
	return &RefundPaymentOrderByDedicatedUnprocessableEntity{}
}

/*RefundPaymentOrderByDedicatedUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type RefundPaymentOrderByDedicatedUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *RefundPaymentOrderByDedicatedUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/refund][%d] refundPaymentOrderByDedicatedUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *RefundPaymentOrderByDedicatedUnprocessableEntity) ToJSONString() string {
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

func (o *RefundPaymentOrderByDedicatedUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *RefundPaymentOrderByDedicatedUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
