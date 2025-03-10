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

type GetSlotDataResponse struct {
	socialclientmodels.ApiResponse
	Data io.Writer

	Error404 *socialclientmodels.ErrorEntity
}

func (m *GetSlotDataResponse) Unpack() (io.Writer, *socialclientmodels.ApiError) {
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
			return nil, &socialclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// GetSlotDataReader is a Reader for the GetSlotData structure.
type GetSlotDataReader struct {
	formats strfmt.Registry
	writer  io.Writer
}

// ReadResponse reads a server response into the received o.
func (o *GetSlotDataReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetSlotDataOK(o.writer)
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetSlotDataNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/admin/namespaces/{namespace}/users/{userId}/slots/{slotId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetSlotDataOK creates a GetSlotDataOK with default headers values
func NewGetSlotDataOK(writer io.Writer) *GetSlotDataOK {
	return &GetSlotDataOK{
		Payload: writer,
	}
}

/*GetSlotDataOK handles this case with default header values.

  Successful operation
*/
type GetSlotDataOK struct {
	Payload io.Writer
}

func (o *GetSlotDataOK) Error() string {
	return fmt.Sprintf("[GET /social/admin/namespaces/{namespace}/users/{userId}/slots/{slotId}][%d] getSlotDataOK  %+v", 200, o.ToJSONString())
}

func (o *GetSlotDataOK) ToJSONString() string {
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

func (o *GetSlotDataOK) GetPayload() io.Writer {
	return o.Payload
}

func (o *GetSlotDataOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetSlotDataNotFound creates a GetSlotDataNotFound with default headers values
func NewGetSlotDataNotFound() *GetSlotDataNotFound {
	return &GetSlotDataNotFound{}
}

/*GetSlotDataNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12141</td><td>Slot [{slotId}] not found in namespace [{namespace}]</td></tr></table>
*/
type GetSlotDataNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *GetSlotDataNotFound) Error() string {
	return fmt.Sprintf("[GET /social/admin/namespaces/{namespace}/users/{userId}/slots/{slotId}][%d] getSlotDataNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetSlotDataNotFound) ToJSONString() string {
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

func (o *GetSlotDataNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetSlotDataNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
