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

type GetCampaignResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.CampaignInfo

	Error404 *platformclientmodels.ErrorEntity
}

func (m *GetCampaignResponse) Unpack() (*platformclientmodels.CampaignInfo, *platformclientmodels.ApiError) {
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

// GetCampaignReader is a Reader for the GetCampaign structure.
type GetCampaignReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetCampaignReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetCampaignOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetCampaignNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/campaigns/{campaignId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetCampaignOK creates a GetCampaignOK with default headers values
func NewGetCampaignOK() *GetCampaignOK {
	return &GetCampaignOK{}
}

/*GetCampaignOK handles this case with default header values.

  successful operation
*/
type GetCampaignOK struct {
	Payload *platformclientmodels.CampaignInfo
}

func (o *GetCampaignOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/campaigns/{campaignId}][%d] getCampaignOK  %+v", 200, o.ToJSONString())
}

func (o *GetCampaignOK) ToJSONString() string {
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

func (o *GetCampaignOK) GetPayload() *platformclientmodels.CampaignInfo {
	return o.Payload
}

func (o *GetCampaignOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.CampaignInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetCampaignNotFound creates a GetCampaignNotFound with default headers values
func NewGetCampaignNotFound() *GetCampaignNotFound {
	return &GetCampaignNotFound{}
}

/*GetCampaignNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>37141</td><td>Campaign [{campaignId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type GetCampaignNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetCampaignNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/campaigns/{campaignId}][%d] getCampaignNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetCampaignNotFound) ToJSONString() string {
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

func (o *GetCampaignNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetCampaignNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
