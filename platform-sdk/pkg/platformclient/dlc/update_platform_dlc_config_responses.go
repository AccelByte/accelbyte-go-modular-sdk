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

type UpdatePlatformDLCConfigResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.PlatformDLCConfigInfo

	Error422 *platformclientmodels.ValidationErrorEntity
}

func (m *UpdatePlatformDLCConfigResponse) Unpack() (*platformclientmodels.PlatformDLCConfigInfo, *platformclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

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

// UpdatePlatformDLCConfigReader is a Reader for the UpdatePlatformDLCConfig structure.
type UpdatePlatformDLCConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdatePlatformDLCConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdatePlatformDLCConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUpdatePlatformDLCConfigUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/dlc/config/platformMap returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdatePlatformDLCConfigOK creates a UpdatePlatformDLCConfigOK with default headers values
func NewUpdatePlatformDLCConfigOK() *UpdatePlatformDLCConfigOK {
	return &UpdatePlatformDLCConfigOK{}
}

/*UpdatePlatformDLCConfigOK handles this case with default header values.

  successful operation
*/
type UpdatePlatformDLCConfigOK struct {
	Payload *platformclientmodels.PlatformDLCConfigInfo
}

func (o *UpdatePlatformDLCConfigOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/dlc/config/platformMap][%d] updatePlatformDlcConfigOK  %+v", 200, o.ToJSONString())
}

func (o *UpdatePlatformDLCConfigOK) ToJSONString() string {
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

func (o *UpdatePlatformDLCConfigOK) GetPayload() *platformclientmodels.PlatformDLCConfigInfo {
	return o.Payload
}

func (o *UpdatePlatformDLCConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.PlatformDLCConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdatePlatformDLCConfigUnprocessableEntity creates a UpdatePlatformDLCConfigUnprocessableEntity with default headers values
func NewUpdatePlatformDLCConfigUnprocessableEntity() *UpdatePlatformDLCConfigUnprocessableEntity {
	return &UpdatePlatformDLCConfigUnprocessableEntity{}
}

/*UpdatePlatformDLCConfigUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdatePlatformDLCConfigUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *UpdatePlatformDLCConfigUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/dlc/config/platformMap][%d] updatePlatformDlcConfigUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UpdatePlatformDLCConfigUnprocessableEntity) ToJSONString() string {
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

func (o *UpdatePlatformDLCConfigUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdatePlatformDLCConfigUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
