// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package payment_config

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

type UpdatePaymentTaxConfigResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.PaymentTaxConfigInfo

	Error400 *platformclientmodels.ErrorEntity
	Error422 *platformclientmodels.ValidationErrorEntity
}

func (m *UpdatePaymentTaxConfigResponse) Unpack() (*platformclientmodels.PaymentTaxConfigInfo, *platformclientmodels.ApiError) {
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

// UpdatePaymentTaxConfigReader is a Reader for the UpdatePaymentTaxConfig structure.
type UpdatePaymentTaxConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdatePaymentTaxConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdatePaymentTaxConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdatePaymentTaxConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUpdatePaymentTaxConfigUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/payment/config/tax returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdatePaymentTaxConfigOK creates a UpdatePaymentTaxConfigOK with default headers values
func NewUpdatePaymentTaxConfigOK() *UpdatePaymentTaxConfigOK {
	return &UpdatePaymentTaxConfigOK{}
}

/*UpdatePaymentTaxConfigOK handles this case with default header values.

  successful operation
*/
type UpdatePaymentTaxConfigOK struct {
	Payload *platformclientmodels.PaymentTaxConfigInfo
}

func (o *UpdatePaymentTaxConfigOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/payment/config/tax][%d] updatePaymentTaxConfigOK  %+v", 200, o.ToJSONString())
}

func (o *UpdatePaymentTaxConfigOK) ToJSONString() string {
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

func (o *UpdatePaymentTaxConfigOK) GetPayload() *platformclientmodels.PaymentTaxConfigInfo {
	return o.Payload
}

func (o *UpdatePaymentTaxConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.PaymentTaxConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdatePaymentTaxConfigBadRequest creates a UpdatePaymentTaxConfigBadRequest with default headers values
func NewUpdatePaymentTaxConfigBadRequest() *UpdatePaymentTaxConfigBadRequest {
	return &UpdatePaymentTaxConfigBadRequest{}
}

/*UpdatePaymentTaxConfigBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33221</td><td>TaxJar api token required</td></tr></table>
*/
type UpdatePaymentTaxConfigBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdatePaymentTaxConfigBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/payment/config/tax][%d] updatePaymentTaxConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdatePaymentTaxConfigBadRequest) ToJSONString() string {
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

func (o *UpdatePaymentTaxConfigBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdatePaymentTaxConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdatePaymentTaxConfigUnprocessableEntity creates a UpdatePaymentTaxConfigUnprocessableEntity with default headers values
func NewUpdatePaymentTaxConfigUnprocessableEntity() *UpdatePaymentTaxConfigUnprocessableEntity {
	return &UpdatePaymentTaxConfigUnprocessableEntity{}
}

/*UpdatePaymentTaxConfigUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdatePaymentTaxConfigUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *UpdatePaymentTaxConfigUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/payment/config/tax][%d] updatePaymentTaxConfigUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UpdatePaymentTaxConfigUnprocessableEntity) ToJSONString() string {
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

func (o *UpdatePaymentTaxConfigUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdatePaymentTaxConfigUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
