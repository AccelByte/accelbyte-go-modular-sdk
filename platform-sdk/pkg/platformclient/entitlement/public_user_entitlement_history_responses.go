// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package entitlement

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

type PublicUserEntitlementHistoryResponse struct {
	platformclientmodels.ApiResponse
	Data []*platformclientmodels.UserEntitlementHistoryPagingSlicedResult
}

func (m *PublicUserEntitlementHistoryResponse) Unpack() ([]*platformclientmodels.UserEntitlementHistoryPagingSlicedResult, *platformclientmodels.ApiError) {
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

// PublicUserEntitlementHistoryReader is a Reader for the PublicUserEntitlementHistory structure.
type PublicUserEntitlementHistoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUserEntitlementHistoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicUserEntitlementHistoryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/users/{userId}/entitlements/history returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUserEntitlementHistoryOK creates a PublicUserEntitlementHistoryOK with default headers values
func NewPublicUserEntitlementHistoryOK() *PublicUserEntitlementHistoryOK {
	return &PublicUserEntitlementHistoryOK{}
}

/*PublicUserEntitlementHistoryOK handles this case with default header values.

  successful operation
*/
type PublicUserEntitlementHistoryOK struct {
	Payload []*platformclientmodels.UserEntitlementHistoryPagingSlicedResult
}

func (o *PublicUserEntitlementHistoryOK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/users/{userId}/entitlements/history][%d] publicUserEntitlementHistoryOK  %+v", 200, o.ToJSONString())
}

func (o *PublicUserEntitlementHistoryOK) ToJSONString() string {
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

func (o *PublicUserEntitlementHistoryOK) GetPayload() []*platformclientmodels.UserEntitlementHistoryPagingSlicedResult {
	return o.Payload
}

func (o *PublicUserEntitlementHistoryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
