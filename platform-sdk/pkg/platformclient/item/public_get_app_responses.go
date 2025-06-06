// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package item

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

type PublicGetAppResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.AppInfo

	Error404 *platformclientmodels.ErrorEntity
}

func (m *PublicGetAppResponse) Unpack() (*platformclientmodels.AppInfo, *platformclientmodels.ApiError) {
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

// PublicGetAppReader is a Reader for the PublicGetApp structure.
type PublicGetAppReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetAppReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetAppOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetAppNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/items/{itemId}/app/locale returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetAppOK creates a PublicGetAppOK with default headers values
func NewPublicGetAppOK() *PublicGetAppOK {
	return &PublicGetAppOK{}
}

/*PublicGetAppOK handles this case with default header values.

  successful operation
*/
type PublicGetAppOK struct {
	Payload *platformclientmodels.AppInfo
}

func (o *PublicGetAppOK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/items/{itemId}/app/locale][%d] publicGetAppOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetAppOK) ToJSONString() string {
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

func (o *PublicGetAppOK) GetPayload() *platformclientmodels.AppInfo {
	return o.Payload
}

func (o *PublicGetAppOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.AppInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetAppNotFound creates a PublicGetAppNotFound with default headers values
func NewPublicGetAppNotFound() *PublicGetAppNotFound {
	return &PublicGetAppNotFound{}
}

/*PublicGetAppNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type PublicGetAppNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicGetAppNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/items/{itemId}/app/locale][%d] publicGetAppNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetAppNotFound) ToJSONString() string {
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

func (o *PublicGetAppNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetAppNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
