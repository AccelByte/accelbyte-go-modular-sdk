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

type PublicBulkGetItemsResponse struct {
	platformclientmodels.ApiResponse
	Data []*platformclientmodels.ItemInfo

	Error404 *platformclientmodels.ErrorEntity
}

func (m *PublicBulkGetItemsResponse) Unpack() ([]*platformclientmodels.ItemInfo, *platformclientmodels.ApiError) {
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

// PublicBulkGetItemsReader is a Reader for the PublicBulkGetItems structure.
type PublicBulkGetItemsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicBulkGetItemsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicBulkGetItemsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicBulkGetItemsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/items/locale/byIds returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicBulkGetItemsOK creates a PublicBulkGetItemsOK with default headers values
func NewPublicBulkGetItemsOK() *PublicBulkGetItemsOK {
	return &PublicBulkGetItemsOK{}
}

/*PublicBulkGetItemsOK handles this case with default header values.

  successful operation
*/
type PublicBulkGetItemsOK struct {
	Payload []*platformclientmodels.ItemInfo
}

func (o *PublicBulkGetItemsOK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/items/locale/byIds][%d] publicBulkGetItemsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicBulkGetItemsOK) ToJSONString() string {
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

func (o *PublicBulkGetItemsOK) GetPayload() []*platformclientmodels.ItemInfo {
	return o.Payload
}

func (o *PublicBulkGetItemsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicBulkGetItemsNotFound creates a PublicBulkGetItemsNotFound with default headers values
func NewPublicBulkGetItemsNotFound() *PublicBulkGetItemsNotFound {
	return &PublicBulkGetItemsNotFound{}
}

/*PublicBulkGetItemsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30142</td><td>Published store does not exist in namespace [{namespace}]</td></tr></table>
*/
type PublicBulkGetItemsNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicBulkGetItemsNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/items/locale/byIds][%d] publicBulkGetItemsNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicBulkGetItemsNotFound) ToJSONString() string {
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

func (o *PublicBulkGetItemsNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicBulkGetItemsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
