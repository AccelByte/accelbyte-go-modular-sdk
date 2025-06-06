// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package campaign

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

type BulkEnableCodesResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.BulkOperationResult
}

func (m *BulkEnableCodesResponse) Unpack() (*platformclientmodels.BulkOperationResult, *platformclientmodels.ApiError) {
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

// BulkEnableCodesReader is a Reader for the BulkEnableCodes structure.
type BulkEnableCodesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkEnableCodesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkEnableCodesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/enable/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkEnableCodesOK creates a BulkEnableCodesOK with default headers values
func NewBulkEnableCodesOK() *BulkEnableCodesOK {
	return &BulkEnableCodesOK{}
}

/*BulkEnableCodesOK handles this case with default header values.

  successful operation
*/
type BulkEnableCodesOK struct {
	Payload *platformclientmodels.BulkOperationResult
}

func (o *BulkEnableCodesOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/enable/bulk][%d] bulkEnableCodesOK  %+v", 200, o.ToJSONString())
}

func (o *BulkEnableCodesOK) ToJSONString() string {
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

func (o *BulkEnableCodesOK) GetPayload() *platformclientmodels.BulkOperationResult {
	return o.Payload
}

func (o *BulkEnableCodesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.BulkOperationResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
