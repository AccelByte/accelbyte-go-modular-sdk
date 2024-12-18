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

type GetIAPItemMappingResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.IAPItemMappingInfo

	Error404 *platformclientmodels.ErrorEntity
}

func (m *GetIAPItemMappingResponse) Unpack() (*platformclientmodels.IAPItemMappingInfo, *platformclientmodels.ApiError) {
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

// GetIAPItemMappingReader is a Reader for the GetIAPItemMapping structure.
type GetIAPItemMappingReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetIAPItemMappingReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetIAPItemMappingOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetIAPItemMappingNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/iap/item/mapping returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetIAPItemMappingOK creates a GetIAPItemMappingOK with default headers values
func NewGetIAPItemMappingOK() *GetIAPItemMappingOK {
	return &GetIAPItemMappingOK{}
}

/*GetIAPItemMappingOK handles this case with default header values.

  successful operation
*/
type GetIAPItemMappingOK struct {
	Payload *platformclientmodels.IAPItemMappingInfo
}

func (o *GetIAPItemMappingOK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/iap/item/mapping][%d] getIapItemMappingOK  %+v", 200, o.ToJSONString())
}

func (o *GetIAPItemMappingOK) ToJSONString() string {
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

func (o *GetIAPItemMappingOK) GetPayload() *platformclientmodels.IAPItemMappingInfo {
	return o.Payload
}

func (o *GetIAPItemMappingOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.IAPItemMappingInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetIAPItemMappingNotFound creates a GetIAPItemMappingNotFound with default headers values
func NewGetIAPItemMappingNotFound() *GetIAPItemMappingNotFound {
	return &GetIAPItemMappingNotFound{}
}

/*GetIAPItemMappingNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>39341</td><td>IAP item config cannot be found in namespace [{namespace}]</td></tr></table>
*/
type GetIAPItemMappingNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetIAPItemMappingNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/iap/item/mapping][%d] getIapItemMappingNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetIAPItemMappingNotFound) ToJSONString() string {
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

func (o *GetIAPItemMappingNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetIAPItemMappingNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
