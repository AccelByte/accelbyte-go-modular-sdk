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

type TokenIntrospectionV3Response struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.OauthmodelTokenIntrospectResponse

	Error400 *iamclientmodels.OauthmodelErrorResponse
	Error401 *iamclientmodels.OauthmodelErrorResponse
}

func (m *TokenIntrospectionV3Response) Unpack() (*iamclientmodels.OauthmodelTokenIntrospectResponse, *iamclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 400:
			e, err := m.Error400.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

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

// TokenIntrospectionV3Reader is a Reader for the TokenIntrospectionV3 structure.
type TokenIntrospectionV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *TokenIntrospectionV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewTokenIntrospectionV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewTokenIntrospectionV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewTokenIntrospectionV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/oauth/introspect returns an error %d: %s", response.Code(), string(data))
	}
}

// NewTokenIntrospectionV3OK creates a TokenIntrospectionV3OK with default headers values
func NewTokenIntrospectionV3OK() *TokenIntrospectionV3OK {
	return &TokenIntrospectionV3OK{}
}

/*TokenIntrospectionV3OK handles this case with default header values.

  OK
*/
type TokenIntrospectionV3OK struct {
	Payload *iamclientmodels.OauthmodelTokenIntrospectResponse
}

func (o *TokenIntrospectionV3OK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/introspect][%d] tokenIntrospectionV3OK  %+v", 200, o.ToJSONString())
}

func (o *TokenIntrospectionV3OK) ToJSONString() string {
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

func (o *TokenIntrospectionV3OK) GetPayload() *iamclientmodels.OauthmodelTokenIntrospectResponse {
	return o.Payload
}

func (o *TokenIntrospectionV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelTokenIntrospectResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewTokenIntrospectionV3BadRequest creates a TokenIntrospectionV3BadRequest with default headers values
func NewTokenIntrospectionV3BadRequest() *TokenIntrospectionV3BadRequest {
	return &TokenIntrospectionV3BadRequest{}
}

/*TokenIntrospectionV3BadRequest handles this case with default header values.

  invalid input
*/
type TokenIntrospectionV3BadRequest struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *TokenIntrospectionV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/introspect][%d] tokenIntrospectionV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *TokenIntrospectionV3BadRequest) ToJSONString() string {
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

func (o *TokenIntrospectionV3BadRequest) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *TokenIntrospectionV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewTokenIntrospectionV3Unauthorized creates a TokenIntrospectionV3Unauthorized with default headers values
func NewTokenIntrospectionV3Unauthorized() *TokenIntrospectionV3Unauthorized {
	return &TokenIntrospectionV3Unauthorized{}
}

/*TokenIntrospectionV3Unauthorized handles this case with default header values.

  invalid bearer or basic authorization header
*/
type TokenIntrospectionV3Unauthorized struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *TokenIntrospectionV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/introspect][%d] tokenIntrospectionV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *TokenIntrospectionV3Unauthorized) ToJSONString() string {
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

func (o *TokenIntrospectionV3Unauthorized) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *TokenIntrospectionV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
