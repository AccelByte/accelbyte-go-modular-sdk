// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0_extension

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
)

// RequestGameTokenResponseV3Reader is a Reader for the RequestGameTokenResponseV3 structure.
type RequestGameTokenResponseV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RequestGameTokenResponseV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRequestGameTokenResponseV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/token/exchange returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRequestGameTokenResponseV3OK creates a RequestGameTokenResponseV3OK with default headers values
func NewRequestGameTokenResponseV3OK() *RequestGameTokenResponseV3OK {
	return &RequestGameTokenResponseV3OK{}
}

/*RequestGameTokenResponseV3OK handles this case with default header values.

  Succeed to generate token.
*/
type RequestGameTokenResponseV3OK struct {
	Payload *iamclientmodels.OauthmodelTokenResponseV3
}

func (o *RequestGameTokenResponseV3OK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/token/exchange][%d] requestGameTokenResponseV3OK  %+v", 200, o.ToJSONString())
}

func (o *RequestGameTokenResponseV3OK) ToJSONString() string {
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

func (o *RequestGameTokenResponseV3OK) GetPayload() *iamclientmodels.OauthmodelTokenResponseV3 {
	return o.Payload
}

func (o *RequestGameTokenResponseV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelTokenResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
