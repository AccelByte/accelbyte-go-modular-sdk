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

type GetUserSlotConfigResponse struct {
	socialclientmodels.ApiResponse
	Data *socialclientmodels.UserSlotConfigInfo
}

func (m *GetUserSlotConfigResponse) Unpack() (*socialclientmodels.UserSlotConfigInfo, *socialclientmodels.ApiError) {
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

// GetUserSlotConfigReader is a Reader for the GetUserSlotConfig structure.
type GetUserSlotConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserSlotConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserSlotConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/admin/namespaces/{namespace}/users/{userId}/config returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserSlotConfigOK creates a GetUserSlotConfigOK with default headers values
func NewGetUserSlotConfigOK() *GetUserSlotConfigOK {
	return &GetUserSlotConfigOK{}
}

/*GetUserSlotConfigOK handles this case with default header values.

  successful operation
*/
type GetUserSlotConfigOK struct {
	Payload *socialclientmodels.UserSlotConfigInfo
}

func (o *GetUserSlotConfigOK) Error() string {
	return fmt.Sprintf("[GET /social/admin/namespaces/{namespace}/users/{userId}/config][%d] getUserSlotConfigOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserSlotConfigOK) ToJSONString() string {
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

func (o *GetUserSlotConfigOK) GetPayload() *socialclientmodels.UserSlotConfigInfo {
	return o.Payload
}

func (o *GetUserSlotConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
