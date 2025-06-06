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

type GetCampaignDynamicResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.CampaignDynamicInfo

	Error404 *platformclientmodels.ErrorEntity
}

func (m *GetCampaignDynamicResponse) Unpack() (*platformclientmodels.CampaignDynamicInfo, *platformclientmodels.ApiError) {
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

// GetCampaignDynamicReader is a Reader for the GetCampaignDynamic structure.
type GetCampaignDynamicReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetCampaignDynamicReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetCampaignDynamicOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetCampaignDynamicNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/campaigns/{campaignId}/dynamic returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetCampaignDynamicOK creates a GetCampaignDynamicOK with default headers values
func NewGetCampaignDynamicOK() *GetCampaignDynamicOK {
	return &GetCampaignDynamicOK{}
}

/*GetCampaignDynamicOK handles this case with default header values.

  successful operation
*/
type GetCampaignDynamicOK struct {
	Payload *platformclientmodels.CampaignDynamicInfo
}

func (o *GetCampaignDynamicOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/campaigns/{campaignId}/dynamic][%d] getCampaignDynamicOK  %+v", 200, o.ToJSONString())
}

func (o *GetCampaignDynamicOK) ToJSONString() string {
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

func (o *GetCampaignDynamicOK) GetPayload() *platformclientmodels.CampaignDynamicInfo {
	return o.Payload
}

func (o *GetCampaignDynamicOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.CampaignDynamicInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetCampaignDynamicNotFound creates a GetCampaignDynamicNotFound with default headers values
func NewGetCampaignDynamicNotFound() *GetCampaignDynamicNotFound {
	return &GetCampaignDynamicNotFound{}
}

/*GetCampaignDynamicNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>37141</td><td>Campaign [{campaignId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type GetCampaignDynamicNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetCampaignDynamicNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/campaigns/{campaignId}/dynamic][%d] getCampaignDynamicNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetCampaignDynamicNotFound) ToJSONString() string {
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

func (o *GetCampaignDynamicNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetCampaignDynamicNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
