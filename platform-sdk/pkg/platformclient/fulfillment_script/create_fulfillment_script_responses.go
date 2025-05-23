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

type CreateFulfillmentScriptResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.FulfillmentScriptInfo

	Error409 *platformclientmodels.ErrorEntity
}

func (m *CreateFulfillmentScriptResponse) Unpack() (*platformclientmodels.FulfillmentScriptInfo, *platformclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 409:
			e, err := m.Error409.TranslateToApiError()
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

// CreateFulfillmentScriptReader is a Reader for the CreateFulfillmentScript structure.
type CreateFulfillmentScriptReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateFulfillmentScriptReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateFulfillmentScriptCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateFulfillmentScriptConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/fulfillment/scripts/{id} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateFulfillmentScriptCreated creates a CreateFulfillmentScriptCreated with default headers values
func NewCreateFulfillmentScriptCreated() *CreateFulfillmentScriptCreated {
	return &CreateFulfillmentScriptCreated{}
}

/*CreateFulfillmentScriptCreated handles this case with default header values.

  successful operation
*/
type CreateFulfillmentScriptCreated struct {
	Payload *platformclientmodels.FulfillmentScriptInfo
}

func (o *CreateFulfillmentScriptCreated) Error() string {
	return fmt.Sprintf("[POST /platform/admin/fulfillment/scripts/{id}][%d] createFulfillmentScriptCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateFulfillmentScriptCreated) ToJSONString() string {
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

func (o *CreateFulfillmentScriptCreated) GetPayload() *platformclientmodels.FulfillmentScriptInfo {
	return o.Payload
}

func (o *CreateFulfillmentScriptCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateFulfillmentScriptConflict creates a CreateFulfillmentScriptConflict with default headers values
func NewCreateFulfillmentScriptConflict() *CreateFulfillmentScriptConflict {
	return &CreateFulfillmentScriptConflict{}
}

/*CreateFulfillmentScriptConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>38171</td><td>Fulfillment script already exists</td></tr></table>
*/
type CreateFulfillmentScriptConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CreateFulfillmentScriptConflict) Error() string {
	return fmt.Sprintf("[POST /platform/admin/fulfillment/scripts/{id}][%d] createFulfillmentScriptConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateFulfillmentScriptConflict) ToJSONString() string {
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

func (o *CreateFulfillmentScriptConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateFulfillmentScriptConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
