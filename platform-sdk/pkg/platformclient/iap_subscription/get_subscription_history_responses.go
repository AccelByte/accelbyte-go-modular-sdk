// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap_subscription

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

type GetSubscriptionHistoryResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.ThirdPartySubscriptionTransactionHistoryPagingSlicedResult
}

func (m *GetSubscriptionHistoryResponse) Unpack() (*platformclientmodels.ThirdPartySubscriptionTransactionHistoryPagingSlicedResult, *platformclientmodels.ApiError) {
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

// GetSubscriptionHistoryReader is a Reader for the GetSubscriptionHistory structure.
type GetSubscriptionHistoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetSubscriptionHistoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetSubscriptionHistoryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions/{id}/histories returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetSubscriptionHistoryOK creates a GetSubscriptionHistoryOK with default headers values
func NewGetSubscriptionHistoryOK() *GetSubscriptionHistoryOK {
	return &GetSubscriptionHistoryOK{}
}

/*GetSubscriptionHistoryOK handles this case with default header values.

  successful operation
*/
type GetSubscriptionHistoryOK struct {
	Payload *platformclientmodels.ThirdPartySubscriptionTransactionHistoryPagingSlicedResult
}

func (o *GetSubscriptionHistoryOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions/{id}/histories][%d] getSubscriptionHistoryOK  %+v", 200, o.ToJSONString())
}

func (o *GetSubscriptionHistoryOK) ToJSONString() string {
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

func (o *GetSubscriptionHistoryOK) GetPayload() *platformclientmodels.ThirdPartySubscriptionTransactionHistoryPagingSlicedResult {
	return o.Payload
}

func (o *GetSubscriptionHistoryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ThirdPartySubscriptionTransactionHistoryPagingSlicedResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
