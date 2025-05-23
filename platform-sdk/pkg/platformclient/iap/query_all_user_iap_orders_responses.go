// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

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

type QueryAllUserIAPOrdersResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.IAPOrderPagingSlicedResult
}

func (m *QueryAllUserIAPOrdersResponse) Unpack() (*platformclientmodels.IAPOrderPagingSlicedResult, *platformclientmodels.ApiError) {
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

// QueryAllUserIAPOrdersReader is a Reader for the QueryAllUserIAPOrders structure.
type QueryAllUserIAPOrdersReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryAllUserIAPOrdersReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryAllUserIAPOrdersOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/users/{userId}/iap/all returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryAllUserIAPOrdersOK creates a QueryAllUserIAPOrdersOK with default headers values
func NewQueryAllUserIAPOrdersOK() *QueryAllUserIAPOrdersOK {
	return &QueryAllUserIAPOrdersOK{}
}

/*QueryAllUserIAPOrdersOK handles this case with default header values.

  successful operation
*/
type QueryAllUserIAPOrdersOK struct {
	Payload *platformclientmodels.IAPOrderPagingSlicedResult
}

func (o *QueryAllUserIAPOrdersOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/users/{userId}/iap/all][%d] queryAllUserIapOrdersOK  %+v", 200, o.ToJSONString())
}

func (o *QueryAllUserIAPOrdersOK) ToJSONString() string {
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

func (o *QueryAllUserIAPOrdersOK) GetPayload() *platformclientmodels.IAPOrderPagingSlicedResult {
	return o.Payload
}

func (o *QueryAllUserIAPOrdersOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.IAPOrderPagingSlicedResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
