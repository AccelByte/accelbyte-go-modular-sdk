// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package item

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

type GetBulkItemIDBySkusResponse struct {
	platformclientmodels.ApiResponse
	Data []*platformclientmodels.ItemID
}

func (m *GetBulkItemIDBySkusResponse) Unpack() ([]*platformclientmodels.ItemID, *platformclientmodels.ApiError) {
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

// GetBulkItemIDBySkusReader is a Reader for the GetBulkItemIDBySkus structure.
type GetBulkItemIDBySkusReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetBulkItemIDBySkusReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetBulkItemIDBySkusOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/items/itemId/bySkus returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetBulkItemIDBySkusOK creates a GetBulkItemIDBySkusOK with default headers values
func NewGetBulkItemIDBySkusOK() *GetBulkItemIDBySkusOK {
	return &GetBulkItemIDBySkusOK{}
}

/*GetBulkItemIDBySkusOK handles this case with default header values.

  successful operation
*/
type GetBulkItemIDBySkusOK struct {
	Payload []*platformclientmodels.ItemID
}

func (o *GetBulkItemIDBySkusOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/items/itemId/bySkus][%d] getBulkItemIdBySkusOK  %+v", 200, o.ToJSONString())
}

func (o *GetBulkItemIDBySkusOK) ToJSONString() string {
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

func (o *GetBulkItemIDBySkusOK) GetPayload() []*platformclientmodels.ItemID {
	return o.Payload
}

func (o *GetBulkItemIDBySkusOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
