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

type TestWxPayConfigByIDResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.TestResult

	Error404 *platformclientmodels.ErrorEntity
}

func (m *TestWxPayConfigByIDResponse) Unpack() (*platformclientmodels.TestResult, *platformclientmodels.ApiError) {
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

// TestWxPayConfigByIDReader is a Reader for the TestWxPayConfigByID structure.
type TestWxPayConfigByIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *TestWxPayConfigByIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewTestWxPayConfigByIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewTestWxPayConfigByIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/payment/config/merchant/{id}/wxpayconfig/test returns an error %d: %s", response.Code(), string(data))
	}
}

// NewTestWxPayConfigByIDOK creates a TestWxPayConfigByIDOK with default headers values
func NewTestWxPayConfigByIDOK() *TestWxPayConfigByIDOK {
	return &TestWxPayConfigByIDOK{}
}

/*TestWxPayConfigByIDOK handles this case with default header values.

  successful operation
*/
type TestWxPayConfigByIDOK struct {
	Payload *platformclientmodels.TestResult
}

func (o *TestWxPayConfigByIDOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/payment/config/merchant/{id}/wxpayconfig/test][%d] testWxPayConfigByIdOK  %+v", 200, o.ToJSONString())
}

func (o *TestWxPayConfigByIDOK) ToJSONString() string {
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

func (o *TestWxPayConfigByIDOK) GetPayload() *platformclientmodels.TestResult {
	return o.Payload
}

func (o *TestWxPayConfigByIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewTestWxPayConfigByIDNotFound creates a TestWxPayConfigByIDNotFound with default headers values
func NewTestWxPayConfigByIDNotFound() *TestWxPayConfigByIDNotFound {
	return &TestWxPayConfigByIDNotFound{}
}

/*TestWxPayConfigByIDNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33242</td><td>Payment merchant config [{id}] does not exist</td></tr></table>
*/
type TestWxPayConfigByIDNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *TestWxPayConfigByIDNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/payment/config/merchant/{id}/wxpayconfig/test][%d] testWxPayConfigByIdNotFound  %+v", 404, o.ToJSONString())
}

func (o *TestWxPayConfigByIDNotFound) ToJSONString() string {
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

func (o *TestWxPayConfigByIDNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *TestWxPayConfigByIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
