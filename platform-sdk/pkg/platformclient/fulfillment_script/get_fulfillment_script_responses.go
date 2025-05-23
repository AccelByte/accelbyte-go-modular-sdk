// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package fulfillment_script

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

type GetFulfillmentScriptResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.FulfillmentScriptInfo

	Error404 *platformclientmodels.ErrorEntity
}

func (m *GetFulfillmentScriptResponse) Unpack() (*platformclientmodels.FulfillmentScriptInfo, *platformclientmodels.ApiError) {
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

// GetFulfillmentScriptReader is a Reader for the GetFulfillmentScript structure.
type GetFulfillmentScriptReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetFulfillmentScriptReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetFulfillmentScriptOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetFulfillmentScriptNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/fulfillment/scripts/{id} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetFulfillmentScriptOK creates a GetFulfillmentScriptOK with default headers values
func NewGetFulfillmentScriptOK() *GetFulfillmentScriptOK {
	return &GetFulfillmentScriptOK{}
}

/*GetFulfillmentScriptOK handles this case with default header values.

  successful operation
*/
type GetFulfillmentScriptOK struct {
	Payload *platformclientmodels.FulfillmentScriptInfo
}

func (o *GetFulfillmentScriptOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/fulfillment/scripts/{id}][%d] getFulfillmentScriptOK  %+v", 200, o.ToJSONString())
}

func (o *GetFulfillmentScriptOK) ToJSONString() string {
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

func (o *GetFulfillmentScriptOK) GetPayload() *platformclientmodels.FulfillmentScriptInfo {
	return o.Payload
}

func (o *GetFulfillmentScriptOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.FulfillmentScriptInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetFulfillmentScriptNotFound creates a GetFulfillmentScriptNotFound with default headers values
func NewGetFulfillmentScriptNotFound() *GetFulfillmentScriptNotFound {
	return &GetFulfillmentScriptNotFound{}
}

/*GetFulfillmentScriptNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>38141</td><td>Fulfillment script does not exist</td></tr></table>
*/
type GetFulfillmentScriptNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetFulfillmentScriptNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/fulfillment/scripts/{id}][%d] getFulfillmentScriptNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetFulfillmentScriptNotFound) ToJSONString() string {
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

func (o *GetFulfillmentScriptNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetFulfillmentScriptNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
