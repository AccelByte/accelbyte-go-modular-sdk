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

type GetPaymentMerchantConfigResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.PaymentDomainWhitelistConfigInfo
}

func (m *GetPaymentMerchantConfigResponse) Unpack() (*platformclientmodels.PaymentDomainWhitelistConfigInfo, *platformclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		default:
			return nil, &platformclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// GetPaymentMerchantConfigReader is a Reader for the GetPaymentMerchantConfig structure.
type GetPaymentMerchantConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetPaymentMerchantConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetPaymentMerchantConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/payment/config/domains returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetPaymentMerchantConfigOK creates a GetPaymentMerchantConfigOK with default headers values
func NewGetPaymentMerchantConfigOK() *GetPaymentMerchantConfigOK {
	return &GetPaymentMerchantConfigOK{}
}

/*GetPaymentMerchantConfigOK handles this case with default header values.

  successful operation
*/
type GetPaymentMerchantConfigOK struct {
	Payload *platformclientmodels.PaymentDomainWhitelistConfigInfo
}

func (o *GetPaymentMerchantConfigOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/payment/config/domains][%d] getPaymentMerchantConfigOK  %+v", 200, o.ToJSONString())
}

func (o *GetPaymentMerchantConfigOK) ToJSONString() string {
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

func (o *GetPaymentMerchantConfigOK) GetPayload() *platformclientmodels.PaymentDomainWhitelistConfigInfo {
	return o.Payload
}

func (o *GetPaymentMerchantConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.PaymentDomainWhitelistConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
