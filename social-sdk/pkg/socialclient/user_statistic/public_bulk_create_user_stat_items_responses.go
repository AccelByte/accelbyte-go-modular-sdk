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

// PublicBulkCreateUserStatItemsReader is a Reader for the PublicBulkCreateUserStatItems structure.
type PublicBulkCreateUserStatItemsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicBulkCreateUserStatItemsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicBulkCreateUserStatItemsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPublicBulkCreateUserStatItemsUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicBulkCreateUserStatItemsOK creates a PublicBulkCreateUserStatItemsOK with default headers values
func NewPublicBulkCreateUserStatItemsOK() *PublicBulkCreateUserStatItemsOK {
	return &PublicBulkCreateUserStatItemsOK{}
}

/*PublicBulkCreateUserStatItemsOK handles this case with default header values.

  successful operation
*/
type PublicBulkCreateUserStatItemsOK struct {
	Payload []*socialclientmodels.BulkStatOperationResult
}

func (o *PublicBulkCreateUserStatItemsOK) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/bulk][%d] publicBulkCreateUserStatItemsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicBulkCreateUserStatItemsOK) ToJSONString() string {
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

func (o *PublicBulkCreateUserStatItemsOK) GetPayload() []*socialclientmodels.BulkStatOperationResult {
	return o.Payload
}

func (o *PublicBulkCreateUserStatItemsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicBulkCreateUserStatItemsUnprocessableEntity creates a PublicBulkCreateUserStatItemsUnprocessableEntity with default headers values
func NewPublicBulkCreateUserStatItemsUnprocessableEntity() *PublicBulkCreateUserStatItemsUnprocessableEntity {
	return &PublicBulkCreateUserStatItemsUnprocessableEntity{}
}

/*PublicBulkCreateUserStatItemsUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicBulkCreateUserStatItemsUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *PublicBulkCreateUserStatItemsUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/bulk][%d] publicBulkCreateUserStatItemsUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *PublicBulkCreateUserStatItemsUnprocessableEntity) ToJSONString() string {
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

func (o *PublicBulkCreateUserStatItemsUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicBulkCreateUserStatItemsUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
