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

type Verify2FACodeResponse struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.OauthmodelTokenResponseV3

	Error401 *iamclientmodels.OauthmodelErrorResponse
}

func (m *Verify2FACodeResponse) Unpack() (*iamclientmodels.OauthmodelTokenResponseV3, *iamclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 401:
			e, err := m.Error401.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		default:
			return nil, &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// Verify2FACodeReader is a Reader for the Verify2FACode structure.
type Verify2FACodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *Verify2FACodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewVerify2FACodeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewVerify2FACodeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/oauth/mfa/verify returns an error %d: %s", response.Code(), string(data))
	}
}

// NewVerify2FACodeOK creates a Verify2FACodeOK with default headers values
func NewVerify2FACodeOK() *Verify2FACodeOK {
	return &Verify2FACodeOK{}
}

/*Verify2FACodeOK handles this case with default header values.

  Token returned
*/
type Verify2FACodeOK struct {
	Payload *iamclientmodels.OauthmodelTokenResponseV3
}

func (o *Verify2FACodeOK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/mfa/verify][%d] verify2faCodeOK  %+v", 200, o.ToJSONString())
}

func (o *Verify2FACodeOK) ToJSONString() string {
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

func (o *Verify2FACodeOK) GetPayload() *iamclientmodels.OauthmodelTokenResponseV3 {
	return o.Payload
}

func (o *Verify2FACodeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewVerify2FACodeUnauthorized creates a Verify2FACodeUnauthorized with default headers values
func NewVerify2FACodeUnauthorized() *Verify2FACodeUnauthorized {
	return &Verify2FACodeUnauthorized{}
}

/*Verify2FACodeUnauthorized handles this case with default header values.

  Unauthorized
*/
type Verify2FACodeUnauthorized struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *Verify2FACodeUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/mfa/verify][%d] verify2faCodeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *Verify2FACodeUnauthorized) ToJSONString() string {
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

func (o *Verify2FACodeUnauthorized) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *Verify2FACodeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
