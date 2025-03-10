// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

type AdminPatchUpdateLogConfigResponse struct {
	lobbyclientmodels.ApiResponse
	Data *lobbyclientmodels.LogconfigConfiguration
}

func (m *AdminPatchUpdateLogConfigResponse) Unpack() (*lobbyclientmodels.LogconfigConfiguration, *lobbyclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		default:
			return nil, &lobbyclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// AdminPatchUpdateLogConfigReader is a Reader for the AdminPatchUpdateLogConfig structure.
type AdminPatchUpdateLogConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPatchUpdateLogConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminPatchUpdateLogConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /lobby/v1/admin/config/log returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPatchUpdateLogConfigOK creates a AdminPatchUpdateLogConfigOK with default headers values
func NewAdminPatchUpdateLogConfigOK() *AdminPatchUpdateLogConfigOK {
	return &AdminPatchUpdateLogConfigOK{}
}

/*AdminPatchUpdateLogConfigOK handles this case with default header values.


 */
type AdminPatchUpdateLogConfigOK struct {
	Payload *lobbyclientmodels.LogconfigConfiguration
}

func (o *AdminPatchUpdateLogConfigOK) Error() string {
	return fmt.Sprintf("[PATCH /lobby/v1/admin/config/log][%d] adminPatchUpdateLogConfigOK  %+v", 200, o.ToJSONString())
}

func (o *AdminPatchUpdateLogConfigOK) ToJSONString() string {
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

func (o *AdminPatchUpdateLogConfigOK) GetPayload() *lobbyclientmodels.LogconfigConfiguration {
	return o.Payload
}

func (o *AdminPatchUpdateLogConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.LogconfigConfiguration)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
