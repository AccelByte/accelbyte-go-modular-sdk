// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package key_group

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

type GetKeyGroupResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.KeyGroupInfo

	Error404 *platformclientmodels.ErrorEntity
}

func (m *GetKeyGroupResponse) Unpack() (*platformclientmodels.KeyGroupInfo, *platformclientmodels.ApiError) {
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

// GetKeyGroupReader is a Reader for the GetKeyGroup structure.
type GetKeyGroupReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetKeyGroupReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetKeyGroupOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetKeyGroupNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetKeyGroupOK creates a GetKeyGroupOK with default headers values
func NewGetKeyGroupOK() *GetKeyGroupOK {
	return &GetKeyGroupOK{}
}

/*GetKeyGroupOK handles this case with default header values.

  successful operation
*/
type GetKeyGroupOK struct {
	Payload *platformclientmodels.KeyGroupInfo
}

func (o *GetKeyGroupOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}][%d] getKeyGroupOK  %+v", 200, o.ToJSONString())
}

func (o *GetKeyGroupOK) ToJSONString() string {
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

func (o *GetKeyGroupOK) GetPayload() *platformclientmodels.KeyGroupInfo {
	return o.Payload
}

func (o *GetKeyGroupOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.KeyGroupInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetKeyGroupNotFound creates a GetKeyGroupNotFound with default headers values
func NewGetKeyGroupNotFound() *GetKeyGroupNotFound {
	return &GetKeyGroupNotFound{}
}

/*GetKeyGroupNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>37241</td><td>Key group [{keyGroupId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type GetKeyGroupNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetKeyGroupNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}][%d] getKeyGroupNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetKeyGroupNotFound) ToJSONString() string {
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

func (o *GetKeyGroupNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetKeyGroupNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
