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

type UpdateCampaignResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.CampaignInfo

	Error404 *platformclientmodels.ErrorEntity
	Error409 *platformclientmodels.ErrorEntity
	Error422 *platformclientmodels.ValidationErrorEntity
}

func (m *UpdateCampaignResponse) Unpack() (*platformclientmodels.CampaignInfo, *platformclientmodels.ApiError) {
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

		case 409:
			e, err := m.Error409.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		case 422:
			e, err := m.Error422.TranslateToApiError()
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

// UpdateCampaignReader is a Reader for the UpdateCampaign structure.
type UpdateCampaignReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateCampaignReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateCampaignOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateCampaignNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdateCampaignConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUpdateCampaignUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/campaigns/{campaignId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateCampaignOK creates a UpdateCampaignOK with default headers values
func NewUpdateCampaignOK() *UpdateCampaignOK {
	return &UpdateCampaignOK{}
}

/*UpdateCampaignOK handles this case with default header values.

  successful operation
*/
type UpdateCampaignOK struct {
	Payload *platformclientmodels.CampaignInfo
}

func (o *UpdateCampaignOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/campaigns/{campaignId}][%d] updateCampaignOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateCampaignOK) ToJSONString() string {
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

func (o *UpdateCampaignOK) GetPayload() *platformclientmodels.CampaignInfo {
	return o.Payload
}

func (o *UpdateCampaignOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateCampaignNotFound creates a UpdateCampaignNotFound with default headers values
func NewUpdateCampaignNotFound() *UpdateCampaignNotFound {
	return &UpdateCampaignNotFound{}
}

/*UpdateCampaignNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>37141</td><td>Campaign [{campaignId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type UpdateCampaignNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateCampaignNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/campaigns/{campaignId}][%d] updateCampaignNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateCampaignNotFound) ToJSONString() string {
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

func (o *UpdateCampaignNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateCampaignNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateCampaignConflict creates a UpdateCampaignConflict with default headers values
func NewUpdateCampaignConflict() *UpdateCampaignConflict {
	return &UpdateCampaignConflict{}
}

/*UpdateCampaignConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>37171</td><td>Campaign [{name}] already exists in namespace [{namespace}]</td></tr></table>
*/
type UpdateCampaignConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateCampaignConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/campaigns/{campaignId}][%d] updateCampaignConflict  %+v", 409, o.ToJSONString())
}

func (o *UpdateCampaignConflict) ToJSONString() string {
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

func (o *UpdateCampaignConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateCampaignConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateCampaignUnprocessableEntity creates a UpdateCampaignUnprocessableEntity with default headers values
func NewUpdateCampaignUnprocessableEntity() *UpdateCampaignUnprocessableEntity {
	return &UpdateCampaignUnprocessableEntity{}
}

/*UpdateCampaignUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdateCampaignUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *UpdateCampaignUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/campaigns/{campaignId}][%d] updateCampaignUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UpdateCampaignUnprocessableEntity) ToJSONString() string {
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

func (o *UpdateCampaignUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdateCampaignUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
