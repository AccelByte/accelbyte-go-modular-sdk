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

// DeleteTiedStatReader is a Reader for the DeleteTiedStat structure.
type DeleteTiedStatReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteTiedStatReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteTiedStatNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewDeleteTiedStatConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /social/v1/admin/namespaces/{namespace}/stats/{statCode}/tied returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteTiedStatNoContent creates a DeleteTiedStatNoContent with default headers values
func NewDeleteTiedStatNoContent() *DeleteTiedStatNoContent {
	return &DeleteTiedStatNoContent{}
}

/*DeleteTiedStatNoContent handles this case with default header values.

  Successfully delete the stat of tied status
*/
type DeleteTiedStatNoContent struct {
}

func (o *DeleteTiedStatNoContent) Error() string {
	return fmt.Sprintf("[DELETE /social/v1/admin/namespaces/{namespace}/stats/{statCode}/tied][%d] deleteTiedStatNoContent ", 204)
}

func (o *DeleteTiedStatNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteTiedStatConflict creates a DeleteTiedStatConflict with default headers values
func NewDeleteTiedStatConflict() *DeleteTiedStatConflict {
	return &DeleteTiedStatConflict{}
}

/*DeleteTiedStatConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12276</td><td> Stat template with code [{statCode}] in namespace [{namespace}] not deletable due it is in an INIT status </td></tr></table>
*/
type DeleteTiedStatConflict struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *DeleteTiedStatConflict) Error() string {
	return fmt.Sprintf("[DELETE /social/v1/admin/namespaces/{namespace}/stats/{statCode}/tied][%d] deleteTiedStatConflict  %+v", 409, o.ToJSONString())
}

func (o *DeleteTiedStatConflict) ToJSONString() string {
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

func (o *DeleteTiedStatConflict) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteTiedStatConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
