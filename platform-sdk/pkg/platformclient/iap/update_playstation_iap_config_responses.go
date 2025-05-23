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

type UpdatePlaystationIAPConfigResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.PlayStationIAPConfigInfo

	Error400 *platformclientmodels.ErrorEntity
}

func (m *UpdatePlaystationIAPConfigResponse) Unpack() (*platformclientmodels.PlayStationIAPConfigInfo, *platformclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 400:
			e, err := m.Error400.TranslateToApiError()
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

// UpdatePlaystationIAPConfigReader is a Reader for the UpdatePlaystationIAPConfig structure.
type UpdatePlaystationIAPConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdatePlaystationIAPConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdatePlaystationIAPConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdatePlaystationIAPConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/iap/config/playstation returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdatePlaystationIAPConfigOK creates a UpdatePlaystationIAPConfigOK with default headers values
func NewUpdatePlaystationIAPConfigOK() *UpdatePlaystationIAPConfigOK {
	return &UpdatePlaystationIAPConfigOK{}
}

/*UpdatePlaystationIAPConfigOK handles this case with default header values.

  successful operation
*/
type UpdatePlaystationIAPConfigOK struct {
	Payload *platformclientmodels.PlayStationIAPConfigInfo
}

func (o *UpdatePlaystationIAPConfigOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/iap/config/playstation][%d] updatePlaystationIapConfigOK  %+v", 200, o.ToJSONString())
}

func (o *UpdatePlaystationIAPConfigOK) ToJSONString() string {
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

func (o *UpdatePlaystationIAPConfigOK) GetPayload() *platformclientmodels.PlayStationIAPConfigInfo {
	return o.Payload
}

func (o *UpdatePlaystationIAPConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.PlayStationIAPConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdatePlaystationIAPConfigBadRequest creates a UpdatePlaystationIAPConfigBadRequest with default headers values
func NewUpdatePlaystationIAPConfigBadRequest() *UpdatePlaystationIAPConfigBadRequest {
	return &UpdatePlaystationIAPConfigBadRequest{}
}

/*UpdatePlaystationIAPConfigBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39130</td><td>Invalid playstation config: [{message}]</td></tr></table>
*/
type UpdatePlaystationIAPConfigBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdatePlaystationIAPConfigBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/iap/config/playstation][%d] updatePlaystationIapConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdatePlaystationIAPConfigBadRequest) ToJSONString() string {
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

func (o *UpdatePlaystationIAPConfigBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdatePlaystationIAPConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
