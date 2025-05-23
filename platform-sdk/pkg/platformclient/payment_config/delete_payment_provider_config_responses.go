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

type DeletePaymentProviderConfigResponse struct {
	platformclientmodels.ApiResponse

	Error404 *platformclientmodels.ErrorEntity
}

func (m *DeletePaymentProviderConfigResponse) Unpack() *platformclientmodels.ApiError {
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

		default:
			return &platformclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// DeletePaymentProviderConfigReader is a Reader for the DeletePaymentProviderConfig structure.
type DeletePaymentProviderConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeletePaymentProviderConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeletePaymentProviderConfigNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeletePaymentProviderConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/payment/config/provider/{id} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeletePaymentProviderConfigNoContent creates a DeletePaymentProviderConfigNoContent with default headers values
func NewDeletePaymentProviderConfigNoContent() *DeletePaymentProviderConfigNoContent {
	return &DeletePaymentProviderConfigNoContent{}
}

/*DeletePaymentProviderConfigNoContent handles this case with default header values.

  Delete successfully
*/
type DeletePaymentProviderConfigNoContent struct {
}

func (o *DeletePaymentProviderConfigNoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/payment/config/provider/{id}][%d] deletePaymentProviderConfigNoContent ", 204)
}

func (o *DeletePaymentProviderConfigNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeletePaymentProviderConfigNotFound creates a DeletePaymentProviderConfigNotFound with default headers values
func NewDeletePaymentProviderConfigNotFound() *DeletePaymentProviderConfigNotFound {
	return &DeletePaymentProviderConfigNotFound{}
}

/*DeletePaymentProviderConfigNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33241</td><td>Payment provider config [{id}] does not exist</td></tr></table>
*/
type DeletePaymentProviderConfigNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DeletePaymentProviderConfigNotFound) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/payment/config/provider/{id}][%d] deletePaymentProviderConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeletePaymentProviderConfigNotFound) ToJSONString() string {
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

func (o *DeletePaymentProviderConfigNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeletePaymentProviderConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
