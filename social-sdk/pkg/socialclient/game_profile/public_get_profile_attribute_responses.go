// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_profile

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

// PublicGetProfileAttributeReader is a Reader for the PublicGetProfileAttribute structure.
type PublicGetProfileAttributeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetProfileAttributeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetProfileAttributeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetProfileAttributeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetProfileAttributeOK creates a PublicGetProfileAttributeOK with default headers values
func NewPublicGetProfileAttributeOK() *PublicGetProfileAttributeOK {
	return &PublicGetProfileAttributeOK{}
}

/*PublicGetProfileAttributeOK handles this case with default header values.

  successful operation
*/
type PublicGetProfileAttributeOK struct {
	Payload *socialclientmodels.Attribute
}

func (o *PublicGetProfileAttributeOK) Error() string {
	return fmt.Sprintf("[GET /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName}][%d] publicGetProfileAttributeOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetProfileAttributeOK) ToJSONString() string {
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

func (o *PublicGetProfileAttributeOK) GetPayload() *socialclientmodels.Attribute {
	return o.Payload
}

func (o *PublicGetProfileAttributeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.Attribute)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetProfileAttributeNotFound creates a PublicGetProfileAttributeNotFound with default headers values
func NewPublicGetProfileAttributeNotFound() *PublicGetProfileAttributeNotFound {
	return &PublicGetProfileAttributeNotFound{}
}

/*PublicGetProfileAttributeNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12041</td><td>Game profile with id [{profileId}] is not found</td></tr></table>
*/
type PublicGetProfileAttributeNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicGetProfileAttributeNotFound) Error() string {
	return fmt.Sprintf("[GET /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName}][%d] publicGetProfileAttributeNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetProfileAttributeNotFound) ToJSONString() string {
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

func (o *PublicGetProfileAttributeNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetProfileAttributeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
