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

// DeleteStatReader is a Reader for the DeleteStat structure.
type DeleteStatReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteStatReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteStatNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteStatNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /social/v1/admin/namespaces/{namespace}/stats/{statCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteStatNoContent creates a DeleteStatNoContent with default headers values
func NewDeleteStatNoContent() *DeleteStatNoContent {
	return &DeleteStatNoContent{}
}

/*DeleteStatNoContent handles this case with default header values.

  Successful delete of stat
*/
type DeleteStatNoContent struct {
}

func (o *DeleteStatNoContent) Error() string {
	return fmt.Sprintf("[DELETE /social/v1/admin/namespaces/{namespace}/stats/{statCode}][%d] deleteStatNoContent ", 204)
}

func (o *DeleteStatNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteStatNotFound creates a DeleteStatNotFound with default headers values
func NewDeleteStatNotFound() *DeleteStatNotFound {
	return &DeleteStatNotFound{}
}

/*DeleteStatNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12241</td><td>Stat [{statCode}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type DeleteStatNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *DeleteStatNotFound) Error() string {
	return fmt.Sprintf("[DELETE /social/v1/admin/namespaces/{namespace}/stats/{statCode}][%d] deleteStatNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteStatNotFound) ToJSONString() string {
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

func (o *DeleteStatNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteStatNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
