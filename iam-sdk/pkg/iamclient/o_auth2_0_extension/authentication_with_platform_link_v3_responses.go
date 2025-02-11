// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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

type AuthenticationWithPlatformLinkV3Response struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.OauthmodelTokenResponseV3

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.OauthmodelErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error409 *iamclientmodels.RestErrorResponse
}

func (m *AuthenticationWithPlatformLinkV3Response) Unpack() (*iamclientmodels.OauthmodelTokenResponseV3, *iamclientmodels.ApiError) {
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

		case 403:
			e, err := m.Error403.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		case 409:
			e, err := m.Error409.TranslateToApiError()
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

// AuthenticationWithPlatformLinkV3Reader is a Reader for the AuthenticationWithPlatformLinkV3 structure.
type AuthenticationWithPlatformLinkV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AuthenticationWithPlatformLinkV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAuthenticationWithPlatformLinkV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAuthenticationWithPlatformLinkV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAuthenticationWithPlatformLinkV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAuthenticationWithPlatformLinkV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAuthenticationWithPlatformLinkV3Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/authenticateWithLink returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAuthenticationWithPlatformLinkV3OK creates a AuthenticationWithPlatformLinkV3OK with default headers values
func NewAuthenticationWithPlatformLinkV3OK() *AuthenticationWithPlatformLinkV3OK {
	return &AuthenticationWithPlatformLinkV3OK{}
}

/*AuthenticationWithPlatformLinkV3OK handles this case with default header values.

  Succeed to authenticate and link platform account.
*/
type AuthenticationWithPlatformLinkV3OK struct {
	Payload *iamclientmodels.OauthmodelTokenResponseV3
}

func (o *AuthenticationWithPlatformLinkV3OK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/authenticateWithLink][%d] authenticationWithPlatformLinkV3OK  %+v", 200, o.ToJSONString())
}

func (o *AuthenticationWithPlatformLinkV3OK) ToJSONString() string {
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

func (o *AuthenticationWithPlatformLinkV3OK) GetPayload() *iamclientmodels.OauthmodelTokenResponseV3 {
	return o.Payload
}

func (o *AuthenticationWithPlatformLinkV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAuthenticationWithPlatformLinkV3BadRequest creates a AuthenticationWithPlatformLinkV3BadRequest with default headers values
func NewAuthenticationWithPlatformLinkV3BadRequest() *AuthenticationWithPlatformLinkV3BadRequest {
	return &AuthenticationWithPlatformLinkV3BadRequest{}
}

/*AuthenticationWithPlatformLinkV3BadRequest handles this case with default header values.

  Invalid username or password.
*/
type AuthenticationWithPlatformLinkV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AuthenticationWithPlatformLinkV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/authenticateWithLink][%d] authenticationWithPlatformLinkV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AuthenticationWithPlatformLinkV3BadRequest) ToJSONString() string {
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

func (o *AuthenticationWithPlatformLinkV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AuthenticationWithPlatformLinkV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAuthenticationWithPlatformLinkV3Unauthorized creates a AuthenticationWithPlatformLinkV3Unauthorized with default headers values
func NewAuthenticationWithPlatformLinkV3Unauthorized() *AuthenticationWithPlatformLinkV3Unauthorized {
	return &AuthenticationWithPlatformLinkV3Unauthorized{}
}

/*AuthenticationWithPlatformLinkV3Unauthorized handles this case with default header values.

  Need 2FA.
*/
type AuthenticationWithPlatformLinkV3Unauthorized struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *AuthenticationWithPlatformLinkV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/authenticateWithLink][%d] authenticationWithPlatformLinkV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AuthenticationWithPlatformLinkV3Unauthorized) ToJSONString() string {
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

func (o *AuthenticationWithPlatformLinkV3Unauthorized) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *AuthenticationWithPlatformLinkV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAuthenticationWithPlatformLinkV3Forbidden creates a AuthenticationWithPlatformLinkV3Forbidden with default headers values
func NewAuthenticationWithPlatformLinkV3Forbidden() *AuthenticationWithPlatformLinkV3Forbidden {
	return &AuthenticationWithPlatformLinkV3Forbidden{}
}

/*AuthenticationWithPlatformLinkV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10213</td><td>country is blocked</td></tr></table>
*/
type AuthenticationWithPlatformLinkV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AuthenticationWithPlatformLinkV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/authenticateWithLink][%d] authenticationWithPlatformLinkV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AuthenticationWithPlatformLinkV3Forbidden) ToJSONString() string {
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

func (o *AuthenticationWithPlatformLinkV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AuthenticationWithPlatformLinkV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAuthenticationWithPlatformLinkV3Conflict creates a AuthenticationWithPlatformLinkV3Conflict with default headers values
func NewAuthenticationWithPlatformLinkV3Conflict() *AuthenticationWithPlatformLinkV3Conflict {
	return &AuthenticationWithPlatformLinkV3Conflict{}
}

/*AuthenticationWithPlatformLinkV3Conflict handles this case with default header values.

  User already link this platform's another account'.
*/
type AuthenticationWithPlatformLinkV3Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AuthenticationWithPlatformLinkV3Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v3/authenticateWithLink][%d] authenticationWithPlatformLinkV3Conflict  %+v", 409, o.ToJSONString())
}

func (o *AuthenticationWithPlatformLinkV3Conflict) ToJSONString() string {
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

func (o *AuthenticationWithPlatformLinkV3Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AuthenticationWithPlatformLinkV3Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
