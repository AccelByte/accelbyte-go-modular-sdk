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

type GetItemIDBySkuResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.ItemID

	Error404 *platformclientmodels.ErrorEntity
}

func (m *GetItemIDBySkuResponse) Unpack() (*platformclientmodels.ItemID, *platformclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 404:
			e, err := m.Error404.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		default:
			return nil, &platformclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// GetItemIDBySkuReader is a Reader for the GetItemIDBySku structure.
type GetItemIDBySkuReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetItemIDBySkuReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetItemIDBySkuOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetItemIDBySkuNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/items/itemId/bySku returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetItemIDBySkuOK creates a GetItemIDBySkuOK with default headers values
func NewGetItemIDBySkuOK() *GetItemIDBySkuOK {
	return &GetItemIDBySkuOK{}
}

/*GetItemIDBySkuOK handles this case with default header values.

  successful operation
*/
type GetItemIDBySkuOK struct {
	Payload *platformclientmodels.ItemID
}

func (o *GetItemIDBySkuOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/items/itemId/bySku][%d] getItemIdBySkuOK  %+v", 200, o.ToJSONString())
}

func (o *GetItemIDBySkuOK) ToJSONString() string {
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

func (o *GetItemIDBySkuOK) GetPayload() *platformclientmodels.ItemID {
	return o.Payload
}

func (o *GetItemIDBySkuOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ItemID)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetItemIDBySkuNotFound creates a GetItemIDBySkuNotFound with default headers values
func NewGetItemIDBySkuNotFound() *GetItemIDBySkuNotFound {
	return &GetItemIDBySkuNotFound{}
}

/*GetItemIDBySkuNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30142</td><td>Published store does not exist in namespace [{namespace}]</td></tr><tr><td>30343</td><td>Item of sku [{sku}] does not exist</td></tr></table>
*/
type GetItemIDBySkuNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetItemIDBySkuNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/items/itemId/bySku][%d] getItemIdBySkuNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetItemIDBySkuNotFound) ToJSONString() string {
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

func (o *GetItemIDBySkuNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetItemIDBySkuNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
