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

type GetLocaleItemBySkuResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.PopulatedItemInfo

	Error404 *platformclientmodels.ErrorEntity
}

func (m *GetLocaleItemBySkuResponse) Unpack() (*platformclientmodels.PopulatedItemInfo, *platformclientmodels.ApiError) {
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

// GetLocaleItemBySkuReader is a Reader for the GetLocaleItemBySku structure.
type GetLocaleItemBySkuReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetLocaleItemBySkuReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetLocaleItemBySkuOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetLocaleItemBySkuNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/items/bySku/locale returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetLocaleItemBySkuOK creates a GetLocaleItemBySkuOK with default headers values
func NewGetLocaleItemBySkuOK() *GetLocaleItemBySkuOK {
	return &GetLocaleItemBySkuOK{}
}

/*GetLocaleItemBySkuOK handles this case with default header values.

  successful operation
*/
type GetLocaleItemBySkuOK struct {
	Payload *platformclientmodels.PopulatedItemInfo
}

func (o *GetLocaleItemBySkuOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/items/bySku/locale][%d] getLocaleItemBySkuOK  %+v", 200, o.ToJSONString())
}

func (o *GetLocaleItemBySkuOK) ToJSONString() string {
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

func (o *GetLocaleItemBySkuOK) GetPayload() *platformclientmodels.PopulatedItemInfo {
	return o.Payload
}

func (o *GetLocaleItemBySkuOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.PopulatedItemInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetLocaleItemBySkuNotFound creates a GetLocaleItemBySkuNotFound with default headers values
func NewGetLocaleItemBySkuNotFound() *GetLocaleItemBySkuNotFound {
	return &GetLocaleItemBySkuNotFound{}
}

/*GetLocaleItemBySkuNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30142</td><td>Published store does not exist in namespace [{namespace}]</td></tr><tr><td>30343</td><td>Item of sku [{sku}] does not exist</td></tr></table>
*/
type GetLocaleItemBySkuNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetLocaleItemBySkuNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/items/bySku/locale][%d] getLocaleItemBySkuNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetLocaleItemBySkuNotFound) ToJSONString() string {
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

func (o *GetLocaleItemBySkuNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetLocaleItemBySkuNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
