// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package wallet

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

type ResetPlatformWalletConfigResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.PlatformWalletConfigInfo
}

func (m *ResetPlatformWalletConfigResponse) Unpack() (*platformclientmodels.PlatformWalletConfigInfo, *platformclientmodels.ApiError) {
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

// ResetPlatformWalletConfigReader is a Reader for the ResetPlatformWalletConfig structure.
type ResetPlatformWalletConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ResetPlatformWalletConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewResetPlatformWalletConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/platforms/{platform}/wallet/config/reset returns an error %d: %s", response.Code(), string(data))
	}
}

// NewResetPlatformWalletConfigOK creates a ResetPlatformWalletConfigOK with default headers values
func NewResetPlatformWalletConfigOK() *ResetPlatformWalletConfigOK {
	return &ResetPlatformWalletConfigOK{}
}

/*ResetPlatformWalletConfigOK handles this case with default header values.

  successful operation
*/
type ResetPlatformWalletConfigOK struct {
	Payload *platformclientmodels.PlatformWalletConfigInfo
}

func (o *ResetPlatformWalletConfigOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/platforms/{platform}/wallet/config/reset][%d] resetPlatformWalletConfigOK  %+v", 200, o.ToJSONString())
}

func (o *ResetPlatformWalletConfigOK) ToJSONString() string {
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

func (o *ResetPlatformWalletConfigOK) GetPayload() *platformclientmodels.PlatformWalletConfigInfo {
	return o.Payload
}

func (o *ResetPlatformWalletConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.PlatformWalletConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
