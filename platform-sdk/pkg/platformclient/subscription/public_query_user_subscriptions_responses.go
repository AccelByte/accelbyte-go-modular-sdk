// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package subscription

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

type PublicQueryUserSubscriptionsResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.SubscriptionPagingSlicedResult
}

func (m *PublicQueryUserSubscriptionsResponse) Unpack() (*platformclientmodels.SubscriptionPagingSlicedResult, *platformclientmodels.ApiError) {
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

// PublicQueryUserSubscriptionsReader is a Reader for the PublicQueryUserSubscriptions structure.
type PublicQueryUserSubscriptionsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicQueryUserSubscriptionsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicQueryUserSubscriptionsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/users/{userId}/subscriptions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicQueryUserSubscriptionsOK creates a PublicQueryUserSubscriptionsOK with default headers values
func NewPublicQueryUserSubscriptionsOK() *PublicQueryUserSubscriptionsOK {
	return &PublicQueryUserSubscriptionsOK{}
}

/*PublicQueryUserSubscriptionsOK handles this case with default header values.

  successful operation
*/
type PublicQueryUserSubscriptionsOK struct {
	Payload *platformclientmodels.SubscriptionPagingSlicedResult
}

func (o *PublicQueryUserSubscriptionsOK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/users/{userId}/subscriptions][%d] publicQueryUserSubscriptionsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicQueryUserSubscriptionsOK) ToJSONString() string {
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

func (o *PublicQueryUserSubscriptionsOK) GetPayload() *platformclientmodels.SubscriptionPagingSlicedResult {
	return o.Payload
}

func (o *PublicQueryUserSubscriptionsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.SubscriptionPagingSlicedResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
