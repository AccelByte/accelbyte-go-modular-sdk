// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package stat_cycle_configuration

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

// BulkGetStatCycle1Reader is a Reader for the BulkGetStatCycle1 structure.
type BulkGetStatCycle1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkGetStatCycle1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkGetStatCycle1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /social/v1/public/namespaces/{namespace}/statCycles/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkGetStatCycle1OK creates a BulkGetStatCycle1OK with default headers values
func NewBulkGetStatCycle1OK() *BulkGetStatCycle1OK {
	return &BulkGetStatCycle1OK{}
}

/*BulkGetStatCycle1OK handles this case with default header values.

  successful operation
*/
type BulkGetStatCycle1OK struct {
	Payload *socialclientmodels.BulkStatCycleResult
}

func (o *BulkGetStatCycle1OK) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/statCycles/bulk][%d] bulkGetStatCycle1OK  %+v", 200, o.ToJSONString())
}

func (o *BulkGetStatCycle1OK) ToJSONString() string {
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

func (o *BulkGetStatCycle1OK) GetPayload() *socialclientmodels.BulkStatCycleResult {
	return o.Payload
}

func (o *BulkGetStatCycle1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.BulkStatCycleResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
