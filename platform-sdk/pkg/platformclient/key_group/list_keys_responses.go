// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package key_group

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

type ListKeysResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.KeyPagingSliceResult
}

func (m *ListKeysResponse) Unpack() (*platformclientmodels.KeyPagingSliceResult, *platformclientmodels.ApiError) {
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

// ListKeysReader is a Reader for the ListKeys structure.
type ListKeysReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListKeysReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListKeysOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/keys returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListKeysOK creates a ListKeysOK with default headers values
func NewListKeysOK() *ListKeysOK {
	return &ListKeysOK{}
}

/*ListKeysOK handles this case with default header values.

  successful operation
*/
type ListKeysOK struct {
	Payload *platformclientmodels.KeyPagingSliceResult
}

func (o *ListKeysOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/keys][%d] listKeysOK  %+v", 200, o.ToJSONString())
}

func (o *ListKeysOK) ToJSONString() string {
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

func (o *ListKeysOK) GetPayload() *platformclientmodels.KeyPagingSliceResult {
	return o.Payload
}

func (o *ListKeysOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.KeyPagingSliceResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
