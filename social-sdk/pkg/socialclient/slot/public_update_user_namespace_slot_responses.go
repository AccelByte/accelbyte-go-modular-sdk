// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package slot

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

type PublicUpdateUserNamespaceSlotResponse struct {
	socialclientmodels.ApiResponse
	Data *socialclientmodels.SlotInfo

	Error400 *socialclientmodels.ErrorEntity
	Error404 *socialclientmodels.ErrorEntity
}

func (m *PublicUpdateUserNamespaceSlotResponse) Unpack() (*socialclientmodels.SlotInfo, *socialclientmodels.ApiError) {
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

		case 404:
			e, err := m.Error404.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		default:
			return nil, &socialclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// PublicUpdateUserNamespaceSlotReader is a Reader for the PublicUpdateUserNamespaceSlot structure.
type PublicUpdateUserNamespaceSlotReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpdateUserNamespaceSlotReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicUpdateUserNamespaceSlotOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUpdateUserNamespaceSlotBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUpdateUserNamespaceSlotNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpdateUserNamespaceSlotOK creates a PublicUpdateUserNamespaceSlotOK with default headers values
func NewPublicUpdateUserNamespaceSlotOK() *PublicUpdateUserNamespaceSlotOK {
	return &PublicUpdateUserNamespaceSlotOK{}
}

/*PublicUpdateUserNamespaceSlotOK handles this case with default header values.

  successful operation
*/
type PublicUpdateUserNamespaceSlotOK struct {
	Payload *socialclientmodels.SlotInfo
}

func (o *PublicUpdateUserNamespaceSlotOK) Error() string {
	return fmt.Sprintf("[PUT /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}][%d] publicUpdateUserNamespaceSlotOK  %+v", 200, o.ToJSONString())
}

func (o *PublicUpdateUserNamespaceSlotOK) ToJSONString() string {
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

func (o *PublicUpdateUserNamespaceSlotOK) GetPayload() *socialclientmodels.SlotInfo {
	return o.Payload
}

func (o *PublicUpdateUserNamespaceSlotOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.SlotInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUpdateUserNamespaceSlotBadRequest creates a PublicUpdateUserNamespaceSlotBadRequest with default headers values
func NewPublicUpdateUserNamespaceSlotBadRequest() *PublicUpdateUserNamespaceSlotBadRequest {
	return &PublicUpdateUserNamespaceSlotBadRequest{}
}

/*PublicUpdateUserNamespaceSlotBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12121</td><td>Checksum mismatch for [{filename}]</td></tr><tr><td>12122</td><td>[{filename}] exceeds the upload limit size of [{sizeLimit}] bytes</td></tr></table>
*/
type PublicUpdateUserNamespaceSlotBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicUpdateUserNamespaceSlotBadRequest) Error() string {
	return fmt.Sprintf("[PUT /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}][%d] publicUpdateUserNamespaceSlotBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUpdateUserNamespaceSlotBadRequest) ToJSONString() string {
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

func (o *PublicUpdateUserNamespaceSlotBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicUpdateUserNamespaceSlotBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUpdateUserNamespaceSlotNotFound creates a PublicUpdateUserNamespaceSlotNotFound with default headers values
func NewPublicUpdateUserNamespaceSlotNotFound() *PublicUpdateUserNamespaceSlotNotFound {
	return &PublicUpdateUserNamespaceSlotNotFound{}
}

/*PublicUpdateUserNamespaceSlotNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12141</td><td>Slot [{slotId}] not found in namespace [{namespace}]</td></tr></table>
*/
type PublicUpdateUserNamespaceSlotNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicUpdateUserNamespaceSlotNotFound) Error() string {
	return fmt.Sprintf("[PUT /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}][%d] publicUpdateUserNamespaceSlotNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicUpdateUserNamespaceSlotNotFound) ToJSONString() string {
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

func (o *PublicUpdateUserNamespaceSlotNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicUpdateUserNamespaceSlotNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
