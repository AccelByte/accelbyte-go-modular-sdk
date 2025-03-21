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

type GetPaymentTaxValueResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.TaxResult

	Error400 *platformclientmodels.ErrorEntity
	Error404 *platformclientmodels.ErrorEntity
}

func (m *GetPaymentTaxValueResponse) Unpack() (*platformclientmodels.TaxResult, *platformclientmodels.ApiError) {
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

		default:
			return nil, &platformclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// GetPaymentTaxValueReader is a Reader for the GetPaymentTaxValue structure.
type GetPaymentTaxValueReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetPaymentTaxValueReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetPaymentTaxValueOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetPaymentTaxValueBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetPaymentTaxValueNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/payment/tax returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetPaymentTaxValueOK creates a GetPaymentTaxValueOK with default headers values
func NewGetPaymentTaxValueOK() *GetPaymentTaxValueOK {
	return &GetPaymentTaxValueOK{}
}

/*GetPaymentTaxValueOK handles this case with default header values.

  successful operation
*/
type GetPaymentTaxValueOK struct {
	Payload *platformclientmodels.TaxResult
}

func (o *GetPaymentTaxValueOK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/payment/tax][%d] getPaymentTaxValueOK  %+v", 200, o.ToJSONString())
}

func (o *GetPaymentTaxValueOK) ToJSONString() string {
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

func (o *GetPaymentTaxValueOK) GetPayload() *platformclientmodels.TaxResult {
	return o.Payload
}

func (o *GetPaymentTaxValueOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.TaxResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetPaymentTaxValueBadRequest creates a GetPaymentTaxValueBadRequest with default headers values
func NewGetPaymentTaxValueBadRequest() *GetPaymentTaxValueBadRequest {
	return &GetPaymentTaxValueBadRequest{}
}

/*GetPaymentTaxValueBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33123</td><td>Invalid zipcode</td></tr></table>
*/
type GetPaymentTaxValueBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetPaymentTaxValueBadRequest) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/payment/tax][%d] getPaymentTaxValueBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetPaymentTaxValueBadRequest) ToJSONString() string {
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

func (o *GetPaymentTaxValueBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetPaymentTaxValueBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetPaymentTaxValueNotFound creates a GetPaymentTaxValueNotFound with default headers values
func NewGetPaymentTaxValueNotFound() *GetPaymentTaxValueNotFound {
	return &GetPaymentTaxValueNotFound{}
}

/*GetPaymentTaxValueNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33141</td><td>Payment Order [{paymentOrderNo}] does not exist</td></tr></table>
*/
type GetPaymentTaxValueNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetPaymentTaxValueNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/payment/tax][%d] getPaymentTaxValueNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetPaymentTaxValueNotFound) ToJSONString() string {
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

func (o *GetPaymentTaxValueNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetPaymentTaxValueNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
