// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package store

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

// ImportStore1Reader is a Reader for the ImportStore1 structure.
type ImportStore1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ImportStore1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewImportStore1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewImportStore1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewImportStore1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/v2/admin/namespaces/{namespace}/stores/import returns an error %d: %s", response.Code(), string(data))
	}
}

// NewImportStore1OK creates a ImportStore1OK with default headers values
func NewImportStore1OK() *ImportStore1OK {
	return &ImportStore1OK{}
}

/*ImportStore1OK handles this case with default header values.

  successful operation
*/
type ImportStore1OK struct {
	Payload *platformclientmodels.ImportStoreResult
}

func (o *ImportStore1OK) Error() string {
	return fmt.Sprintf("[PUT /platform/v2/admin/namespaces/{namespace}/stores/import][%d] importStore1OK  %+v", 200, o.ToJSONString())
}

func (o *ImportStore1OK) ToJSONString() string {
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

func (o *ImportStore1OK) GetPayload() *platformclientmodels.ImportStoreResult {
	return o.Payload
}

func (o *ImportStore1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ImportStoreResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewImportStore1BadRequest creates a ImportStore1BadRequest with default headers values
func NewImportStore1BadRequest() *ImportStore1BadRequest {
	return &ImportStore1BadRequest{}
}

/*ImportStore1BadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30121</td><td>Store data is invalid</td></tr><tr><td>30122</td><td>Store's meta mismatch</td></tr></table>
*/
type ImportStore1BadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *ImportStore1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/v2/admin/namespaces/{namespace}/stores/import][%d] importStore1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *ImportStore1BadRequest) ToJSONString() string {
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

func (o *ImportStore1BadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ImportStore1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewImportStore1NotFound creates a ImportStore1NotFound with default headers values
func NewImportStore1NotFound() *ImportStore1NotFound {
	return &ImportStore1NotFound{}
}

/*ImportStore1NotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type ImportStore1NotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *ImportStore1NotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/v2/admin/namespaces/{namespace}/stores/import][%d] importStore1NotFound  %+v", 404, o.ToJSONString())
}

func (o *ImportStore1NotFound) ToJSONString() string {
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

func (o *ImportStore1NotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ImportStore1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
