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

type PublicGetItemDynamicDataResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.ItemDynamicDataInfo

	Error404 *platformclientmodels.ErrorEntity
}

func (m *PublicGetItemDynamicDataResponse) Unpack() (*platformclientmodels.ItemDynamicDataInfo, *platformclientmodels.ApiError) {
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

// PublicGetItemDynamicDataReader is a Reader for the PublicGetItemDynamicData structure.
type PublicGetItemDynamicDataReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetItemDynamicDataReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetItemDynamicDataOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetItemDynamicDataNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/items/{itemId}/dynamic returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetItemDynamicDataOK creates a PublicGetItemDynamicDataOK with default headers values
func NewPublicGetItemDynamicDataOK() *PublicGetItemDynamicDataOK {
	return &PublicGetItemDynamicDataOK{}
}

/*PublicGetItemDynamicDataOK handles this case with default header values.

  successful operation
*/
type PublicGetItemDynamicDataOK struct {
	Payload *platformclientmodels.ItemDynamicDataInfo
}

func (o *PublicGetItemDynamicDataOK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/items/{itemId}/dynamic][%d] publicGetItemDynamicDataOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetItemDynamicDataOK) ToJSONString() string {
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

func (o *PublicGetItemDynamicDataOK) GetPayload() *platformclientmodels.ItemDynamicDataInfo {
	return o.Payload
}

func (o *PublicGetItemDynamicDataOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ItemDynamicDataInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetItemDynamicDataNotFound creates a PublicGetItemDynamicDataNotFound with default headers values
func NewPublicGetItemDynamicDataNotFound() *PublicGetItemDynamicDataNotFound {
	return &PublicGetItemDynamicDataNotFound{}
}

/*PublicGetItemDynamicDataNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type PublicGetItemDynamicDataNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicGetItemDynamicDataNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/items/{itemId}/dynamic][%d] publicGetItemDynamicDataNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetItemDynamicDataNotFound) ToJSONString() string {
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

func (o *PublicGetItemDynamicDataNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetItemDynamicDataNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
