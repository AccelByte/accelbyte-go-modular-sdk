// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package fulfillment_script

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

// TestFulfillmentScriptEvalReader is a Reader for the TestFulfillmentScriptEval structure.
type TestFulfillmentScriptEvalReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *TestFulfillmentScriptEvalReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewTestFulfillmentScriptEvalOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/fulfillment/scripts/tests/eval returns an error %d: %s", response.Code(), string(data))
	}
}

// NewTestFulfillmentScriptEvalOK creates a TestFulfillmentScriptEvalOK with default headers values
func NewTestFulfillmentScriptEvalOK() *TestFulfillmentScriptEvalOK {
	return &TestFulfillmentScriptEvalOK{}
}

/*TestFulfillmentScriptEvalOK handles this case with default header values.

  successful operation
*/
type TestFulfillmentScriptEvalOK struct {
	Payload *platformclientmodels.FulfillmentScriptEvalTestResult
}

func (o *TestFulfillmentScriptEvalOK) Error() string {
	return fmt.Sprintf("[POST /platform/admin/fulfillment/scripts/tests/eval][%d] testFulfillmentScriptEvalOK  %+v", 200, o.ToJSONString())
}

func (o *TestFulfillmentScriptEvalOK) ToJSONString() string {
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

func (o *TestFulfillmentScriptEvalOK) GetPayload() *platformclientmodels.FulfillmentScriptEvalTestResult {
	return o.Payload
}

func (o *TestFulfillmentScriptEvalOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.FulfillmentScriptEvalTestResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
