// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package o_auth2_0

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

type VerifyTokenV3Response struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.OauthmodelTokenResponseV3

	Error400 string
}

func (m *VerifyTokenV3Response) Unpack() (*iamclientmodels.OauthmodelTokenResponseV3, *iamclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 400:
			return nil, &iamclientmodels.ApiError{Code: "400", Message: m.Error400}

		default:
			return nil, &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// VerifyTokenV3Reader is a Reader for the VerifyTokenV3 structure.
type VerifyTokenV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *VerifyTokenV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewVerifyTokenV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewVerifyTokenV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/oauth/verify returns an error %d: %s", response.Code(), string(data))
	}
}

// NewVerifyTokenV3OK creates a VerifyTokenV3OK with default headers values
func NewVerifyTokenV3OK() *VerifyTokenV3OK {
	return &VerifyTokenV3OK{}
}

/*VerifyTokenV3OK handles this case with default header values.

  Access Token verified
*/
type VerifyTokenV3OK struct {
	Payload *iamclientmodels.OauthmodelTokenResponseV3
}

func (o *VerifyTokenV3OK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/verify][%d] verifyTokenV3OK  %+v", 200, o.ToJSONString())
}

func (o *VerifyTokenV3OK) ToJSONString() string {
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

func (o *VerifyTokenV3OK) GetPayload() *iamclientmodels.OauthmodelTokenResponseV3 {
	return o.Payload
}

func (o *VerifyTokenV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewVerifyTokenV3BadRequest creates a VerifyTokenV3BadRequest with default headers values
func NewVerifyTokenV3BadRequest() *VerifyTokenV3BadRequest {
	return &VerifyTokenV3BadRequest{}
}

/*VerifyTokenV3BadRequest handles this case with default header values.

  Access Token not exist or expired
*/
type VerifyTokenV3BadRequest struct {
}

func (o *VerifyTokenV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/verify][%d] verifyTokenV3BadRequest ", 400)
}

func (o *VerifyTokenV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
