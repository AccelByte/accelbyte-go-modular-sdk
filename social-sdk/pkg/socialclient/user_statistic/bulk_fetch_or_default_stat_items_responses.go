// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_statistic

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

// BulkFetchOrDefaultStatItemsReader is a Reader for the BulkFetchOrDefaultStatItems structure.
type BulkFetchOrDefaultStatItemsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkFetchOrDefaultStatItemsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkFetchOrDefaultStatItemsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewBulkFetchOrDefaultStatItemsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewBulkFetchOrDefaultStatItemsUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/v1/admin/namespaces/{namespace}/statitems/value/bulk/getOrDefault returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkFetchOrDefaultStatItemsOK creates a BulkFetchOrDefaultStatItemsOK with default headers values
func NewBulkFetchOrDefaultStatItemsOK() *BulkFetchOrDefaultStatItemsOK {
	return &BulkFetchOrDefaultStatItemsOK{}
}

/*BulkFetchOrDefaultStatItemsOK handles this case with default header values.

  successful operation
*/
type BulkFetchOrDefaultStatItemsOK struct {
	Payload []*socialclientmodels.ADTOObjectForUserStatItemValue
}

func (o *BulkFetchOrDefaultStatItemsOK) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/statitems/value/bulk/getOrDefault][%d] bulkFetchOrDefaultStatItemsOK  %+v", 200, o.ToJSONString())
}

func (o *BulkFetchOrDefaultStatItemsOK) ToJSONString() string {
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

func (o *BulkFetchOrDefaultStatItemsOK) GetPayload() []*socialclientmodels.ADTOObjectForUserStatItemValue {
	return o.Payload
}

func (o *BulkFetchOrDefaultStatItemsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkFetchOrDefaultStatItemsNotFound creates a BulkFetchOrDefaultStatItemsNotFound with default headers values
func NewBulkFetchOrDefaultStatItemsNotFound() *BulkFetchOrDefaultStatItemsNotFound {
	return &BulkFetchOrDefaultStatItemsNotFound{}
}

/*BulkFetchOrDefaultStatItemsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12241</td><td>Stat [{statCode}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type BulkFetchOrDefaultStatItemsNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkFetchOrDefaultStatItemsNotFound) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/statitems/value/bulk/getOrDefault][%d] bulkFetchOrDefaultStatItemsNotFound  %+v", 404, o.ToJSONString())
}

func (o *BulkFetchOrDefaultStatItemsNotFound) ToJSONString() string {
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

func (o *BulkFetchOrDefaultStatItemsNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkFetchOrDefaultStatItemsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkFetchOrDefaultStatItemsUnprocessableEntity creates a BulkFetchOrDefaultStatItemsUnprocessableEntity with default headers values
func NewBulkFetchOrDefaultStatItemsUnprocessableEntity() *BulkFetchOrDefaultStatItemsUnprocessableEntity {
	return &BulkFetchOrDefaultStatItemsUnprocessableEntity{}
}

/*BulkFetchOrDefaultStatItemsUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type BulkFetchOrDefaultStatItemsUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *BulkFetchOrDefaultStatItemsUnprocessableEntity) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/statitems/value/bulk/getOrDefault][%d] bulkFetchOrDefaultStatItemsUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *BulkFetchOrDefaultStatItemsUnprocessableEntity) ToJSONString() string {
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

func (o *BulkFetchOrDefaultStatItemsUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *BulkFetchOrDefaultStatItemsUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
