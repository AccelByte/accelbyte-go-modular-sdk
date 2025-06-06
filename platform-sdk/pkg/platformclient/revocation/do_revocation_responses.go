// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package revocation

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

type DoRevocationResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.RevocationResult

	Error409 *platformclientmodels.ErrorEntity
}

func (m *DoRevocationResponse) Unpack() (*platformclientmodels.RevocationResult, *platformclientmodels.ApiError) {
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

// DoRevocationReader is a Reader for the DoRevocation structure.
type DoRevocationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DoRevocationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDoRevocationOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewDoRevocationConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/users/{userId}/revocation returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDoRevocationOK creates a DoRevocationOK with default headers values
func NewDoRevocationOK() *DoRevocationOK {
	return &DoRevocationOK{}
}

/*DoRevocationOK handles this case with default header values.

  successful operation
*/
type DoRevocationOK struct {
	Payload *platformclientmodels.RevocationResult
}

func (o *DoRevocationOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/revocation][%d] doRevocationOK  %+v", 200, o.ToJSONString())
}

func (o *DoRevocationOK) ToJSONString() string {
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

func (o *DoRevocationOK) GetPayload() *platformclientmodels.RevocationResult {
	return o.Payload
}

func (o *DoRevocationOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.RevocationResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDoRevocationConflict creates a DoRevocationConflict with default headers values
func NewDoRevocationConflict() *DoRevocationConflict {
	return &DoRevocationConflict{}
}

/*DoRevocationConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>41171</td><td>Request has different payload on previous call</td></tr><tr><td>41172</td><td>Request has different user id on previous call</td></tr></table>
*/
type DoRevocationConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DoRevocationConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/revocation][%d] doRevocationConflict  %+v", 409, o.ToJSONString())
}

func (o *DoRevocationConflict) ToJSONString() string {
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

func (o *DoRevocationConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DoRevocationConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
