// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package payment_callback_config

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

// GetPaymentCallbackConfigReader is a Reader for the GetPaymentCallbackConfig structure.
type GetPaymentCallbackConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetPaymentCallbackConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetPaymentCallbackConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetPaymentCallbackConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/payment/config/callback returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetPaymentCallbackConfigOK creates a GetPaymentCallbackConfigOK with default headers values
func NewGetPaymentCallbackConfigOK() *GetPaymentCallbackConfigOK {
	return &GetPaymentCallbackConfigOK{}
}

/*GetPaymentCallbackConfigOK handles this case with default header values.

  successful operation
*/
type GetPaymentCallbackConfigOK struct {
	Payload *platformclientmodels.PaymentCallbackConfigInfo
}

func (o *GetPaymentCallbackConfigOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/payment/config/callback][%d] getPaymentCallbackConfigOK  %+v", 200, o.ToJSONString())
}

func (o *GetPaymentCallbackConfigOK) ToJSONString() string {
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

func (o *GetPaymentCallbackConfigOK) GetPayload() *platformclientmodels.PaymentCallbackConfigInfo {
	return o.Payload
}

func (o *GetPaymentCallbackConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.PaymentCallbackConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetPaymentCallbackConfigNotFound creates a GetPaymentCallbackConfigNotFound with default headers values
func NewGetPaymentCallbackConfigNotFound() *GetPaymentCallbackConfigNotFound {
	return &GetPaymentCallbackConfigNotFound{}
}

/*GetPaymentCallbackConfigNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33243</td><td>Payment callback config for [{namespace}] does not exist</td></tr></table>
*/
type GetPaymentCallbackConfigNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetPaymentCallbackConfigNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/payment/config/callback][%d] getPaymentCallbackConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetPaymentCallbackConfigNotFound) ToJSONString() string {
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

func (o *GetPaymentCallbackConfigNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetPaymentCallbackConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
