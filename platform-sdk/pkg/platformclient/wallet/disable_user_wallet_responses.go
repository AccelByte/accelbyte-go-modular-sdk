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

type DisableUserWalletResponse struct {
	platformclientmodels.ApiResponse

	Error404 *platformclientmodels.ErrorEntity
	Error409 *platformclientmodels.ErrorEntity
}

func (m *DisableUserWalletResponse) Unpack() *platformclientmodels.ApiError {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 404:
			e, err := m.Error404.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 409:
			e, err := m.Error409.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		default:
			return &platformclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// DisableUserWalletReader is a Reader for the DisableUserWallet structure.
type DisableUserWalletReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DisableUserWalletReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDisableUserWalletNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDisableUserWalletNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewDisableUserWalletConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/disable returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDisableUserWalletNoContent creates a DisableUserWalletNoContent with default headers values
func NewDisableUserWalletNoContent() *DisableUserWalletNoContent {
	return &DisableUserWalletNoContent{}
}

/*DisableUserWalletNoContent handles this case with default header values.

  Successful operation
*/
type DisableUserWalletNoContent struct {
}

func (o *DisableUserWalletNoContent) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/disable][%d] disableUserWalletNoContent ", 204)
}

func (o *DisableUserWalletNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDisableUserWalletNotFound creates a DisableUserWalletNotFound with default headers values
func NewDisableUserWalletNotFound() *DisableUserWalletNotFound {
	return &DisableUserWalletNotFound{}
}

/*DisableUserWalletNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>35141</td><td>Wallet [{walletId}] does not exist</td></tr></table>
*/
type DisableUserWalletNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DisableUserWalletNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/disable][%d] disableUserWalletNotFound  %+v", 404, o.ToJSONString())
}

func (o *DisableUserWalletNotFound) ToJSONString() string {
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

func (o *DisableUserWalletNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DisableUserWalletNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDisableUserWalletConflict creates a DisableUserWalletConflict with default headers values
func NewDisableUserWalletConflict() *DisableUserWalletConflict {
	return &DisableUserWalletConflict{}
}

/*DisableUserWalletConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20006</td><td>optimistic lock</td></tr></table>
*/
type DisableUserWalletConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DisableUserWalletConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/disable][%d] disableUserWalletConflict  %+v", 409, o.ToJSONString())
}

func (o *DisableUserWalletConflict) ToJSONString() string {
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

func (o *DisableUserWalletConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DisableUserWalletConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
