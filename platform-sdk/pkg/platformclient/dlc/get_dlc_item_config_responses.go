// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dlc

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

type GetDLCItemConfigResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.DLCItemConfigInfo

	Error404 *platformclientmodels.ErrorEntity
}

func (m *GetDLCItemConfigResponse) Unpack() (*platformclientmodels.DLCItemConfigInfo, *platformclientmodels.ApiError) {
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

// GetDLCItemConfigReader is a Reader for the GetDLCItemConfig structure.
type GetDLCItemConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetDLCItemConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetDLCItemConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetDLCItemConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/dlc/config/item returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetDLCItemConfigOK creates a GetDLCItemConfigOK with default headers values
func NewGetDLCItemConfigOK() *GetDLCItemConfigOK {
	return &GetDLCItemConfigOK{}
}

/*GetDLCItemConfigOK handles this case with default header values.

  successful operation
*/
type GetDLCItemConfigOK struct {
	Payload *platformclientmodels.DLCItemConfigInfo
}

func (o *GetDLCItemConfigOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/dlc/config/item][%d] getDlcItemConfigOK  %+v", 200, o.ToJSONString())
}

func (o *GetDLCItemConfigOK) ToJSONString() string {
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

func (o *GetDLCItemConfigOK) GetPayload() *platformclientmodels.DLCItemConfigInfo {
	return o.Payload
}

func (o *GetDLCItemConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.DLCItemConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetDLCItemConfigNotFound creates a GetDLCItemConfigNotFound with default headers values
func NewGetDLCItemConfigNotFound() *GetDLCItemConfigNotFound {
	return &GetDLCItemConfigNotFound{}
}

/*GetDLCItemConfigNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>39442</td><td>DLC item config cannot be found in namespace [{namespace}]</td></tr></table>
*/
type GetDLCItemConfigNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetDLCItemConfigNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/dlc/config/item][%d] getDlcItemConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetDLCItemConfigNotFound) ToJSONString() string {
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

func (o *GetDLCItemConfigNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetDLCItemConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
