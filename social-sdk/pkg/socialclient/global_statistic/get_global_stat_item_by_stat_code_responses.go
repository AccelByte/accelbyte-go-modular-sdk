// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package global_statistic

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

// GetGlobalStatItemByStatCodeReader is a Reader for the GetGlobalStatItemByStatCode structure.
type GetGlobalStatItemByStatCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetGlobalStatItemByStatCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetGlobalStatItemByStatCodeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetGlobalStatItemByStatCodeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/v1/admin/namespaces/{namespace}/globalstatitems/{statCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetGlobalStatItemByStatCodeOK creates a GetGlobalStatItemByStatCodeOK with default headers values
func NewGetGlobalStatItemByStatCodeOK() *GetGlobalStatItemByStatCodeOK {
	return &GetGlobalStatItemByStatCodeOK{}
}

/*GetGlobalStatItemByStatCodeOK handles this case with default header values.

  successful operation
*/
type GetGlobalStatItemByStatCodeOK struct {
	Payload *socialclientmodels.GlobalStatItemInfo
}

func (o *GetGlobalStatItemByStatCodeOK) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/globalstatitems/{statCode}][%d] getGlobalStatItemByStatCodeOK  %+v", 200, o.ToJSONString())
}

func (o *GetGlobalStatItemByStatCodeOK) ToJSONString() string {
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

func (o *GetGlobalStatItemByStatCodeOK) GetPayload() *socialclientmodels.GlobalStatItemInfo {
	return o.Payload
}

func (o *GetGlobalStatItemByStatCodeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.GlobalStatItemInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetGlobalStatItemByStatCodeNotFound creates a GetGlobalStatItemByStatCodeNotFound with default headers values
func NewGetGlobalStatItemByStatCodeNotFound() *GetGlobalStatItemByStatCodeNotFound {
	return &GetGlobalStatItemByStatCodeNotFound{}
}

/*GetGlobalStatItemByStatCodeNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12244</td><td>Global stat item of [{statCode}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type GetGlobalStatItemByStatCodeNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *GetGlobalStatItemByStatCodeNotFound) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/globalstatitems/{statCode}][%d] getGlobalStatItemByStatCodeNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetGlobalStatItemByStatCodeNotFound) ToJSONString() string {
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

func (o *GetGlobalStatItemByStatCodeNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetGlobalStatItemByStatCodeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
