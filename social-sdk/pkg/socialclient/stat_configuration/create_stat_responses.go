// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package stat_configuration

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

// CreateStatReader is a Reader for the CreateStat structure.
type CreateStatReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateStatReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateStatCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateStatNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateStatConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /social/v1/admin/namespaces/{namespace}/stats returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateStatCreated creates a CreateStatCreated with default headers values
func NewCreateStatCreated() *CreateStatCreated {
	return &CreateStatCreated{}
}

/*CreateStatCreated handles this case with default header values.

  Create stat successfully
*/
type CreateStatCreated struct {
	Payload *socialclientmodels.StatInfo
}

func (o *CreateStatCreated) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/stats][%d] createStatCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateStatCreated) ToJSONString() string {
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

func (o *CreateStatCreated) GetPayload() *socialclientmodels.StatInfo {
	return o.Payload
}

func (o *CreateStatCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.StatInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateStatNotFound creates a CreateStatNotFound with default headers values
func NewCreateStatNotFound() *CreateStatNotFound {
	return &CreateStatNotFound{}
}

/*CreateStatNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12245</td><td>Stat cycle [{id}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type CreateStatNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *CreateStatNotFound) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/stats][%d] createStatNotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateStatNotFound) ToJSONString() string {
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

func (o *CreateStatNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateStatNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateStatConflict creates a CreateStatConflict with default headers values
func NewCreateStatConflict() *CreateStatConflict {
	return &CreateStatConflict{}
}

/*CreateStatConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12271</td><td>Stat template with code [{statCode}] already exists in namespace [{namespace}]</td></tr></table>
*/
type CreateStatConflict struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *CreateStatConflict) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/stats][%d] createStatConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateStatConflict) ToJSONString() string {
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

func (o *CreateStatConflict) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateStatConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
