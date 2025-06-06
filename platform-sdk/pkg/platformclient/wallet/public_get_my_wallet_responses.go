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

type PublicGetMyWalletResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.PlatformWallet
}

func (m *PublicGetMyWalletResponse) Unpack() (*platformclientmodels.PlatformWallet, *platformclientmodels.ApiError) {
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

// PublicGetMyWalletReader is a Reader for the PublicGetMyWallet structure.
type PublicGetMyWalletReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetMyWalletReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetMyWalletOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/users/me/wallets/{currencyCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetMyWalletOK creates a PublicGetMyWalletOK with default headers values
func NewPublicGetMyWalletOK() *PublicGetMyWalletOK {
	return &PublicGetMyWalletOK{}
}

/*PublicGetMyWalletOK handles this case with default header values.

  successful operation
*/
type PublicGetMyWalletOK struct {
	Payload *platformclientmodels.PlatformWallet
}

func (o *PublicGetMyWalletOK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/users/me/wallets/{currencyCode}][%d] publicGetMyWalletOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetMyWalletOK) ToJSONString() string {
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

func (o *PublicGetMyWalletOK) GetPayload() *platformclientmodels.PlatformWallet {
	return o.Payload
}

func (o *PublicGetMyWalletOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.PlatformWallet)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
