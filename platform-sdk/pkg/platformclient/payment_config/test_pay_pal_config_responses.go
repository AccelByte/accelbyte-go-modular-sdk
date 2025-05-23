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

type TestPayPalConfigResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.TestResult
}

func (m *TestPayPalConfigResponse) Unpack() (*platformclientmodels.TestResult, *platformclientmodels.ApiError) {
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

// TestPayPalConfigReader is a Reader for the TestPayPalConfig structure.
type TestPayPalConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *TestPayPalConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewTestPayPalConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/payment/config/merchant/paypalconfig/test returns an error %d: %s", response.Code(), string(data))
	}
}

// NewTestPayPalConfigOK creates a TestPayPalConfigOK with default headers values
func NewTestPayPalConfigOK() *TestPayPalConfigOK {
	return &TestPayPalConfigOK{}
}

/*TestPayPalConfigOK handles this case with default header values.

  successful operation
*/
type TestPayPalConfigOK struct {
	Payload *platformclientmodels.TestResult
}

func (o *TestPayPalConfigOK) Error() string {
	return fmt.Sprintf("[POST /platform/admin/payment/config/merchant/paypalconfig/test][%d] testPayPalConfigOK  %+v", 200, o.ToJSONString())
}

func (o *TestPayPalConfigOK) ToJSONString() string {
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

func (o *TestPayPalConfigOK) GetPayload() *platformclientmodels.TestResult {
	return o.Payload
}

func (o *TestPayPalConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.TestResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
