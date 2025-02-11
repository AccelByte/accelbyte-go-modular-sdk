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

type PublicGetPaymentURLResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.PaymentURL

	Error400 *platformclientmodels.ErrorEntity
	Error403 *platformclientmodels.ErrorEntity
	Error404 *platformclientmodels.ErrorEntity
}

func (m *PublicGetPaymentURLResponse) Unpack() (*platformclientmodels.PaymentURL, *platformclientmodels.ApiError) {
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

		default:
			return nil, &platformclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// PublicGetPaymentURLReader is a Reader for the PublicGetPaymentURL structure.
type PublicGetPaymentURLReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetPaymentURLReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetPaymentURLOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetPaymentURLBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetPaymentURLForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetPaymentURLNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/public/namespaces/{namespace}/payment/link returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetPaymentURLOK creates a PublicGetPaymentURLOK with default headers values
func NewPublicGetPaymentURLOK() *PublicGetPaymentURLOK {
	return &PublicGetPaymentURLOK{}
}

/*PublicGetPaymentURLOK handles this case with default header values.

  successful operation
*/
type PublicGetPaymentURLOK struct {
	Payload *platformclientmodels.PaymentURL
}

func (o *PublicGetPaymentURLOK) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/payment/link][%d] publicGetPaymentUrlOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetPaymentURLOK) ToJSONString() string {
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

func (o *PublicGetPaymentURLOK) GetPayload() *platformclientmodels.PaymentURL {
	return o.Payload
}

func (o *PublicGetPaymentURLOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.PaymentURL)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetPaymentURLBadRequest creates a PublicGetPaymentURLBadRequest with default headers values
func NewPublicGetPaymentURLBadRequest() *PublicGetPaymentURLBadRequest {
	return &PublicGetPaymentURLBadRequest{}
}

/*PublicGetPaymentURLBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33321</td><td>Payment provider [{paymentProvider}] not support currency [{currency}]</td></tr><tr><td>33322</td><td>Payment provider [{paymentProvider}] not supported</td></tr><tr><td>33332</td><td>Amount too small, please contact administrator</td></tr><tr><td>33333</td><td>Neon Pay checkout payment order [{paymentOrderNo}] failed with message [{errMsg}]</td></tr></table>
*/
type PublicGetPaymentURLBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicGetPaymentURLBadRequest) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/payment/link][%d] publicGetPaymentUrlBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetPaymentURLBadRequest) ToJSONString() string {
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

func (o *PublicGetPaymentURLBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetPaymentURLBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetPaymentURLForbidden creates a PublicGetPaymentURLForbidden with default headers values
func NewPublicGetPaymentURLForbidden() *PublicGetPaymentURLForbidden {
	return &PublicGetPaymentURLForbidden{}
}

/*PublicGetPaymentURLForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20016</td><td>action is banned</td></tr></table>
*/
type PublicGetPaymentURLForbidden struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicGetPaymentURLForbidden) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/payment/link][%d] publicGetPaymentUrlForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetPaymentURLForbidden) ToJSONString() string {
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

func (o *PublicGetPaymentURLForbidden) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetPaymentURLForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetPaymentURLNotFound creates a PublicGetPaymentURLNotFound with default headers values
func NewPublicGetPaymentURLNotFound() *PublicGetPaymentURLNotFound {
	return &PublicGetPaymentURLNotFound{}
}

/*PublicGetPaymentURLNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33141</td><td>Payment Order [{paymentOrderNo}] does not exist</td></tr><tr><td>20008</td><td>user [{userId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type PublicGetPaymentURLNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicGetPaymentURLNotFound) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/payment/link][%d] publicGetPaymentUrlNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetPaymentURLNotFound) ToJSONString() string {
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

func (o *PublicGetPaymentURLNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetPaymentURLNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
