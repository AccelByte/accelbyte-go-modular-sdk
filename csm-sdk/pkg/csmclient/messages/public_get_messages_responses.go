// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package messages

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclientmodels"
)

type PublicGetMessagesResponse struct {
	csmclientmodels.ApiResponse
	Data []*csmclientmodels.LogAppMessageDeclaration

	Error500 string
}

func (m *PublicGetMessagesResponse) Unpack() ([]*csmclientmodels.LogAppMessageDeclaration, *csmclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 500:
			return nil, &csmclientmodels.ApiError{Code: "500", Message: m.Error500}

		default:
			return nil, &csmclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// PublicGetMessagesReader is a Reader for the PublicGetMessages structure.
type PublicGetMessagesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetMessagesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetMessagesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetMessagesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v1/messages returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetMessagesOK creates a PublicGetMessagesOK with default headers values
func NewPublicGetMessagesOK() *PublicGetMessagesOK {
	return &PublicGetMessagesOK{}
}

/*PublicGetMessagesOK handles this case with default header values.

  OK
*/
type PublicGetMessagesOK struct {
	Payload []*csmclientmodels.LogAppMessageDeclaration
}

func (o *PublicGetMessagesOK) Error() string {
	return fmt.Sprintf("[GET /csm/v1/messages][%d] publicGetMessagesOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetMessagesOK) ToJSONString() string {
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

func (o *PublicGetMessagesOK) GetPayload() []*csmclientmodels.LogAppMessageDeclaration {
	return o.Payload
}

func (o *PublicGetMessagesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetMessagesInternalServerError creates a PublicGetMessagesInternalServerError with default headers values
func NewPublicGetMessagesInternalServerError() *PublicGetMessagesInternalServerError {
	return &PublicGetMessagesInternalServerError{}
}

/*PublicGetMessagesInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGetMessagesInternalServerError struct {
}

func (o *PublicGetMessagesInternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v1/messages][%d] publicGetMessagesInternalServerError ", 500)
}

func (o *PublicGetMessagesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
