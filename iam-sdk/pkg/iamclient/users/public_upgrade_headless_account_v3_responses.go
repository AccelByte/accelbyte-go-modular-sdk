// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

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

type PublicUpgradeHeadlessAccountV3Response struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.ModelUserResponseV3

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 *iamclientmodels.RestErrorResponse
	Error409 *iamclientmodels.RestErrorResponse
	Error500 *iamclientmodels.RestErrorResponse
}

func (m *PublicUpgradeHeadlessAccountV3Response) Unpack() (*iamclientmodels.ModelUserResponseV3, *iamclientmodels.ApiError) {
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

		case 404:
			e, err := m.Error404.TranslateToApiError()
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

		case 500:
			e, err := m.Error500.TranslateToApiError()
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

// PublicUpgradeHeadlessAccountV3Reader is a Reader for the PublicUpgradeHeadlessAccountV3 structure.
type PublicUpgradeHeadlessAccountV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpgradeHeadlessAccountV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicUpgradeHeadlessAccountV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUpgradeHeadlessAccountV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUpgradeHeadlessAccountV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicUpgradeHeadlessAccountV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUpgradeHeadlessAccountV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicUpgradeHeadlessAccountV3Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicUpgradeHeadlessAccountV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/public/namespaces/{namespace}/users/me/headless/code/verify returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpgradeHeadlessAccountV3OK creates a PublicUpgradeHeadlessAccountV3OK with default headers values
func NewPublicUpgradeHeadlessAccountV3OK() *PublicUpgradeHeadlessAccountV3OK {
	return &PublicUpgradeHeadlessAccountV3OK{}
}

/*PublicUpgradeHeadlessAccountV3OK handles this case with default header values.

  OK
*/
type PublicUpgradeHeadlessAccountV3OK struct {
	Payload *iamclientmodels.ModelUserResponseV3
}

func (o *PublicUpgradeHeadlessAccountV3OK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/headless/code/verify][%d] publicUpgradeHeadlessAccountV3OK  %+v", 200, o.ToJSONString())
}

func (o *PublicUpgradeHeadlessAccountV3OK) ToJSONString() string {
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

func (o *PublicUpgradeHeadlessAccountV3OK) GetPayload() *iamclientmodels.ModelUserResponseV3 {
	return o.Payload
}

func (o *PublicUpgradeHeadlessAccountV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUpgradeHeadlessAccountV3BadRequest creates a PublicUpgradeHeadlessAccountV3BadRequest with default headers values
func NewPublicUpgradeHeadlessAccountV3BadRequest() *PublicUpgradeHeadlessAccountV3BadRequest {
	return &PublicUpgradeHeadlessAccountV3BadRequest{}
}

/*PublicUpgradeHeadlessAccountV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>10155</td><td>country is not defined</td></tr><tr><td>10130</td><td>user under age</td></tr></table>
*/
type PublicUpgradeHeadlessAccountV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpgradeHeadlessAccountV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/headless/code/verify][%d] publicUpgradeHeadlessAccountV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUpgradeHeadlessAccountV3BadRequest) ToJSONString() string {
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

func (o *PublicUpgradeHeadlessAccountV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpgradeHeadlessAccountV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpgradeHeadlessAccountV3Unauthorized creates a PublicUpgradeHeadlessAccountV3Unauthorized with default headers values
func NewPublicUpgradeHeadlessAccountV3Unauthorized() *PublicUpgradeHeadlessAccountV3Unauthorized {
	return &PublicUpgradeHeadlessAccountV3Unauthorized{}
}

/*PublicUpgradeHeadlessAccountV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type PublicUpgradeHeadlessAccountV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpgradeHeadlessAccountV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/headless/code/verify][%d] publicUpgradeHeadlessAccountV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUpgradeHeadlessAccountV3Unauthorized) ToJSONString() string {
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

func (o *PublicUpgradeHeadlessAccountV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpgradeHeadlessAccountV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpgradeHeadlessAccountV3Forbidden creates a PublicUpgradeHeadlessAccountV3Forbidden with default headers values
func NewPublicUpgradeHeadlessAccountV3Forbidden() *PublicUpgradeHeadlessAccountV3Forbidden {
	return &PublicUpgradeHeadlessAccountV3Forbidden{}
}

/*PublicUpgradeHeadlessAccountV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10152</td><td>verification code not found</td></tr><tr><td>10137</td><td>code is expired</td></tr><tr><td>10136</td><td>code is either been used or not valid anymore</td></tr><tr><td>10138</td><td>code not match</td></tr><tr><td>10149</td><td>verification contact type doesn't match</td></tr><tr><td>10148</td><td>verification code context doesn't match the required context</td></tr><tr><td>10213</td><td>country is blocked</td></tr></table>
*/
type PublicUpgradeHeadlessAccountV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpgradeHeadlessAccountV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/headless/code/verify][%d] publicUpgradeHeadlessAccountV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicUpgradeHeadlessAccountV3Forbidden) ToJSONString() string {
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

func (o *PublicUpgradeHeadlessAccountV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpgradeHeadlessAccountV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpgradeHeadlessAccountV3NotFound creates a PublicUpgradeHeadlessAccountV3NotFound with default headers values
func NewPublicUpgradeHeadlessAccountV3NotFound() *PublicUpgradeHeadlessAccountV3NotFound {
	return &PublicUpgradeHeadlessAccountV3NotFound{}
}

/*PublicUpgradeHeadlessAccountV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>10154</td><td>country not found</td></tr></table>
*/
type PublicUpgradeHeadlessAccountV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpgradeHeadlessAccountV3NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/headless/code/verify][%d] publicUpgradeHeadlessAccountV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicUpgradeHeadlessAccountV3NotFound) ToJSONString() string {
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

func (o *PublicUpgradeHeadlessAccountV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpgradeHeadlessAccountV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpgradeHeadlessAccountV3Conflict creates a PublicUpgradeHeadlessAccountV3Conflict with default headers values
func NewPublicUpgradeHeadlessAccountV3Conflict() *PublicUpgradeHeadlessAccountV3Conflict {
	return &PublicUpgradeHeadlessAccountV3Conflict{}
}

/*PublicUpgradeHeadlessAccountV3Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10153</td><td>user exist</td></tr><tr><td>10170</td><td>account is already a full account</td></tr><tr><td>10222</td><td>unique display name already exists</td></tr></table>
*/
type PublicUpgradeHeadlessAccountV3Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpgradeHeadlessAccountV3Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/headless/code/verify][%d] publicUpgradeHeadlessAccountV3Conflict  %+v", 409, o.ToJSONString())
}

func (o *PublicUpgradeHeadlessAccountV3Conflict) ToJSONString() string {
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

func (o *PublicUpgradeHeadlessAccountV3Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpgradeHeadlessAccountV3Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpgradeHeadlessAccountV3InternalServerError creates a PublicUpgradeHeadlessAccountV3InternalServerError with default headers values
func NewPublicUpgradeHeadlessAccountV3InternalServerError() *PublicUpgradeHeadlessAccountV3InternalServerError {
	return &PublicUpgradeHeadlessAccountV3InternalServerError{}
}

/*PublicUpgradeHeadlessAccountV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicUpgradeHeadlessAccountV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpgradeHeadlessAccountV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/headless/code/verify][%d] publicUpgradeHeadlessAccountV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicUpgradeHeadlessAccountV3InternalServerError) ToJSONString() string {
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

func (o *PublicUpgradeHeadlessAccountV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpgradeHeadlessAccountV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
