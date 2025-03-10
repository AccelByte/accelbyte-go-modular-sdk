// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package slot_config

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclientmodels"
)

type UpdateUserSlotConfigResponse struct {
	socialclientmodels.ApiResponse
	Data *socialclientmodels.UserSlotConfigInfo
}

func (m *UpdateUserSlotConfigResponse) Unpack() (*socialclientmodels.UserSlotConfigInfo, *socialclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		default:
			return nil, &socialclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// UpdateUserSlotConfigReader is a Reader for the UpdateUserSlotConfig structure.
type UpdateUserSlotConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateUserSlotConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateUserSlotConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /social/admin/namespaces/{namespace}/users/{userId}/config returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateUserSlotConfigOK creates a UpdateUserSlotConfigOK with default headers values
func NewUpdateUserSlotConfigOK() *UpdateUserSlotConfigOK {
	return &UpdateUserSlotConfigOK{}
}

/*UpdateUserSlotConfigOK handles this case with default header values.

  successful operation
*/
type UpdateUserSlotConfigOK struct {
	Payload *socialclientmodels.UserSlotConfigInfo
}

func (o *UpdateUserSlotConfigOK) Error() string {
	return fmt.Sprintf("[PUT /social/admin/namespaces/{namespace}/users/{userId}/config][%d] updateUserSlotConfigOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateUserSlotConfigOK) ToJSONString() string {
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

func (o *UpdateUserSlotConfigOK) GetPayload() *socialclientmodels.UserSlotConfigInfo {
	return o.Payload
}

func (o *UpdateUserSlotConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.UserSlotConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
