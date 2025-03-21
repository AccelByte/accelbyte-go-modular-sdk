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

type UpdateWxPayConfigCertResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.PaymentMerchantConfigInfo

	Error404 *platformclientmodels.ErrorEntity
}

func (m *UpdateWxPayConfigCertResponse) Unpack() (*platformclientmodels.PaymentMerchantConfigInfo, *platformclientmodels.ApiError) {
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

// UpdateWxPayConfigCertReader is a Reader for the UpdateWxPayConfigCert structure.
type UpdateWxPayConfigCertReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateWxPayConfigCertReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateWxPayConfigCertOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateWxPayConfigCertNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/payment/config/merchant/{id}/wxpayconfig/cert returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateWxPayConfigCertOK creates a UpdateWxPayConfigCertOK with default headers values
func NewUpdateWxPayConfigCertOK() *UpdateWxPayConfigCertOK {
	return &UpdateWxPayConfigCertOK{}
}

/*UpdateWxPayConfigCertOK handles this case with default header values.

  successful operation
*/
type UpdateWxPayConfigCertOK struct {
	Payload *platformclientmodels.PaymentMerchantConfigInfo
}

func (o *UpdateWxPayConfigCertOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/payment/config/merchant/{id}/wxpayconfig/cert][%d] updateWxPayConfigCertOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateWxPayConfigCertOK) ToJSONString() string {
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

func (o *UpdateWxPayConfigCertOK) GetPayload() *platformclientmodels.PaymentMerchantConfigInfo {
	return o.Payload
}

func (o *UpdateWxPayConfigCertOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.PaymentMerchantConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateWxPayConfigCertNotFound creates a UpdateWxPayConfigCertNotFound with default headers values
func NewUpdateWxPayConfigCertNotFound() *UpdateWxPayConfigCertNotFound {
	return &UpdateWxPayConfigCertNotFound{}
}

/*UpdateWxPayConfigCertNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33242</td><td>Payment merchant config [{id}] does not exist</td></tr></table>
*/
type UpdateWxPayConfigCertNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateWxPayConfigCertNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/payment/config/merchant/{id}/wxpayconfig/cert][%d] updateWxPayConfigCertNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateWxPayConfigCertNotFound) ToJSONString() string {
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

func (o *UpdateWxPayConfigCertNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateWxPayConfigCertNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
