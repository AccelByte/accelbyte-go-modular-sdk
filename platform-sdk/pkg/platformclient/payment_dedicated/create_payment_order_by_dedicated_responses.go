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

type CreatePaymentOrderByDedicatedResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.PaymentOrderCreateResult

	Error400 *platformclientmodels.ErrorEntity
	Error403 *platformclientmodels.ErrorEntity
	Error404 *platformclientmodels.ErrorEntity
	Error409 *platformclientmodels.ErrorEntity
	Error422 *platformclientmodels.ValidationErrorEntity
}

func (m *CreatePaymentOrderByDedicatedResponse) Unpack() (*platformclientmodels.PaymentOrderCreateResult, *platformclientmodels.ApiError) {
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

		case 403:
			e, err := m.Error403.TranslateToApiError()
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

// CreatePaymentOrderByDedicatedReader is a Reader for the CreatePaymentOrderByDedicated structure.
type CreatePaymentOrderByDedicatedReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreatePaymentOrderByDedicatedReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreatePaymentOrderByDedicatedCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreatePaymentOrderByDedicatedBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreatePaymentOrderByDedicatedForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreatePaymentOrderByDedicatedNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreatePaymentOrderByDedicatedConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewCreatePaymentOrderByDedicatedUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/payment/orders returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreatePaymentOrderByDedicatedCreated creates a CreatePaymentOrderByDedicatedCreated with default headers values
func NewCreatePaymentOrderByDedicatedCreated() *CreatePaymentOrderByDedicatedCreated {
	return &CreatePaymentOrderByDedicatedCreated{}
}

/*CreatePaymentOrderByDedicatedCreated handles this case with default header values.

  successful operation
*/
type CreatePaymentOrderByDedicatedCreated struct {
	Payload *platformclientmodels.PaymentOrderCreateResult
}

func (o *CreatePaymentOrderByDedicatedCreated) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/payment/orders][%d] createPaymentOrderByDedicatedCreated  %+v", 201, o.ToJSONString())
}

func (o *CreatePaymentOrderByDedicatedCreated) ToJSONString() string {
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

func (o *CreatePaymentOrderByDedicatedCreated) GetPayload() *platformclientmodels.PaymentOrderCreateResult {
	return o.Payload
}

func (o *CreatePaymentOrderByDedicatedCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.PaymentOrderCreateResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreatePaymentOrderByDedicatedBadRequest creates a CreatePaymentOrderByDedicatedBadRequest with default headers values
func NewCreatePaymentOrderByDedicatedBadRequest() *CreatePaymentOrderByDedicatedBadRequest {
	return &CreatePaymentOrderByDedicatedBadRequest{}
}

/*CreatePaymentOrderByDedicatedBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33121</td><td>Recurring payment failed with code: [{errorCode}] and message: [{errorMessage}] by provider: [{provider}]</td></tr><tr><td>33122</td><td>Subscription not match when create payment order</td></tr></table>
*/
type CreatePaymentOrderByDedicatedBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CreatePaymentOrderByDedicatedBadRequest) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/payment/orders][%d] createPaymentOrderByDedicatedBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreatePaymentOrderByDedicatedBadRequest) ToJSONString() string {
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

func (o *CreatePaymentOrderByDedicatedBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreatePaymentOrderByDedicatedBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreatePaymentOrderByDedicatedForbidden creates a CreatePaymentOrderByDedicatedForbidden with default headers values
func NewCreatePaymentOrderByDedicatedForbidden() *CreatePaymentOrderByDedicatedForbidden {
	return &CreatePaymentOrderByDedicatedForbidden{}
}

/*CreatePaymentOrderByDedicatedForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20016</td><td>action is banned</td></tr></table>
*/
type CreatePaymentOrderByDedicatedForbidden struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CreatePaymentOrderByDedicatedForbidden) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/payment/orders][%d] createPaymentOrderByDedicatedForbidden  %+v", 403, o.ToJSONString())
}

func (o *CreatePaymentOrderByDedicatedForbidden) ToJSONString() string {
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

func (o *CreatePaymentOrderByDedicatedForbidden) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreatePaymentOrderByDedicatedForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreatePaymentOrderByDedicatedNotFound creates a CreatePaymentOrderByDedicatedNotFound with default headers values
func NewCreatePaymentOrderByDedicatedNotFound() *CreatePaymentOrderByDedicatedNotFound {
	return &CreatePaymentOrderByDedicatedNotFound{}
}

/*CreatePaymentOrderByDedicatedNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>36141</td><td>Currency [{currencyCode}] does not exist in namespace [{namespace}]</td></tr><tr><td>33141</td><td>Payment Order [{paymentOrderNo}] does not exist</td></tr><tr><td>33145</td><td>Recurring token not found</td></tr><tr><td>20008</td><td>user [{userId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type CreatePaymentOrderByDedicatedNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CreatePaymentOrderByDedicatedNotFound) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/payment/orders][%d] createPaymentOrderByDedicatedNotFound  %+v", 404, o.ToJSONString())
}

func (o *CreatePaymentOrderByDedicatedNotFound) ToJSONString() string {
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

func (o *CreatePaymentOrderByDedicatedNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreatePaymentOrderByDedicatedNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreatePaymentOrderByDedicatedConflict creates a CreatePaymentOrderByDedicatedConflict with default headers values
func NewCreatePaymentOrderByDedicatedConflict() *CreatePaymentOrderByDedicatedConflict {
	return &CreatePaymentOrderByDedicatedConflict{}
}

/*CreatePaymentOrderByDedicatedConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20006</td><td>optimistic lock</td></tr><tr><td>33173</td><td>ExtOrderNo [{extOrderNo}] already exists in namespace [{namespace}]</td></tr></table>
*/
type CreatePaymentOrderByDedicatedConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CreatePaymentOrderByDedicatedConflict) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/payment/orders][%d] createPaymentOrderByDedicatedConflict  %+v", 409, o.ToJSONString())
}

func (o *CreatePaymentOrderByDedicatedConflict) ToJSONString() string {
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

func (o *CreatePaymentOrderByDedicatedConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreatePaymentOrderByDedicatedConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreatePaymentOrderByDedicatedUnprocessableEntity creates a CreatePaymentOrderByDedicatedUnprocessableEntity with default headers values
func NewCreatePaymentOrderByDedicatedUnprocessableEntity() *CreatePaymentOrderByDedicatedUnprocessableEntity {
	return &CreatePaymentOrderByDedicatedUnprocessableEntity{}
}

/*CreatePaymentOrderByDedicatedUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type CreatePaymentOrderByDedicatedUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *CreatePaymentOrderByDedicatedUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/payment/orders][%d] createPaymentOrderByDedicatedUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *CreatePaymentOrderByDedicatedUnprocessableEntity) ToJSONString() string {
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

func (o *CreatePaymentOrderByDedicatedUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *CreatePaymentOrderByDedicatedUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
