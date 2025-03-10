// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users_v4

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

type PublicUpgradeHeadlessAccountV4Response struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.AccountUserResponseV4

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error404 *iamclientmodels.RestErrorResponse
	Error409 *iamclientmodels.RestErrorResponse
	Error500 *iamclientmodels.RestErrorResponse
}

func (m *PublicUpgradeHeadlessAccountV4Response) Unpack() (*iamclientmodels.AccountUserResponseV4, *iamclientmodels.ApiError) {
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

// PublicUpgradeHeadlessAccountV4Reader is a Reader for the PublicUpgradeHeadlessAccountV4 structure.
type PublicUpgradeHeadlessAccountV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpgradeHeadlessAccountV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicUpgradeHeadlessAccountV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUpgradeHeadlessAccountV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUpgradeHeadlessAccountV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUpgradeHeadlessAccountV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicUpgradeHeadlessAccountV4Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicUpgradeHeadlessAccountV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/public/namespaces/{namespace}/users/me/headless/verify returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpgradeHeadlessAccountV4OK creates a PublicUpgradeHeadlessAccountV4OK with default headers values
func NewPublicUpgradeHeadlessAccountV4OK() *PublicUpgradeHeadlessAccountV4OK {
	return &PublicUpgradeHeadlessAccountV4OK{}
}

/*PublicUpgradeHeadlessAccountV4OK handles this case with default header values.

  OK
*/
type PublicUpgradeHeadlessAccountV4OK struct {
	Payload *iamclientmodels.AccountUserResponseV4
}

func (o *PublicUpgradeHeadlessAccountV4OK) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/headless/verify][%d] publicUpgradeHeadlessAccountV4OK  %+v", 200, o.ToJSONString())
}

func (o *PublicUpgradeHeadlessAccountV4OK) ToJSONString() string {
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

func (o *PublicUpgradeHeadlessAccountV4OK) GetPayload() *iamclientmodels.AccountUserResponseV4 {
	return o.Payload
}

func (o *PublicUpgradeHeadlessAccountV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.AccountUserResponseV4)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUpgradeHeadlessAccountV4BadRequest creates a PublicUpgradeHeadlessAccountV4BadRequest with default headers values
func NewPublicUpgradeHeadlessAccountV4BadRequest() *PublicUpgradeHeadlessAccountV4BadRequest {
	return &PublicUpgradeHeadlessAccountV4BadRequest{}
}

/*PublicUpgradeHeadlessAccountV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicUpgradeHeadlessAccountV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpgradeHeadlessAccountV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/headless/verify][%d] publicUpgradeHeadlessAccountV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUpgradeHeadlessAccountV4BadRequest) ToJSONString() string {
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

func (o *PublicUpgradeHeadlessAccountV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpgradeHeadlessAccountV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpgradeHeadlessAccountV4Unauthorized creates a PublicUpgradeHeadlessAccountV4Unauthorized with default headers values
func NewPublicUpgradeHeadlessAccountV4Unauthorized() *PublicUpgradeHeadlessAccountV4Unauthorized {
	return &PublicUpgradeHeadlessAccountV4Unauthorized{}
}

/*PublicUpgradeHeadlessAccountV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type PublicUpgradeHeadlessAccountV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpgradeHeadlessAccountV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/headless/verify][%d] publicUpgradeHeadlessAccountV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUpgradeHeadlessAccountV4Unauthorized) ToJSONString() string {
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

func (o *PublicUpgradeHeadlessAccountV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpgradeHeadlessAccountV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpgradeHeadlessAccountV4NotFound creates a PublicUpgradeHeadlessAccountV4NotFound with default headers values
func NewPublicUpgradeHeadlessAccountV4NotFound() *PublicUpgradeHeadlessAccountV4NotFound {
	return &PublicUpgradeHeadlessAccountV4NotFound{}
}

/*PublicUpgradeHeadlessAccountV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr></table>
*/
type PublicUpgradeHeadlessAccountV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpgradeHeadlessAccountV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/headless/verify][%d] publicUpgradeHeadlessAccountV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicUpgradeHeadlessAccountV4NotFound) ToJSONString() string {
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

func (o *PublicUpgradeHeadlessAccountV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpgradeHeadlessAccountV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpgradeHeadlessAccountV4Conflict creates a PublicUpgradeHeadlessAccountV4Conflict with default headers values
func NewPublicUpgradeHeadlessAccountV4Conflict() *PublicUpgradeHeadlessAccountV4Conflict {
	return &PublicUpgradeHeadlessAccountV4Conflict{}
}

/*PublicUpgradeHeadlessAccountV4Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10153</td><td>user exist</td></tr><tr><td>10170</td><td>account is already a full account</td></tr><tr><td>10133</td><td>email already used</td></tr><tr><td>10177</td><td>username already used</td></tr></table>
*/
type PublicUpgradeHeadlessAccountV4Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpgradeHeadlessAccountV4Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/headless/verify][%d] publicUpgradeHeadlessAccountV4Conflict  %+v", 409, o.ToJSONString())
}

func (o *PublicUpgradeHeadlessAccountV4Conflict) ToJSONString() string {
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

func (o *PublicUpgradeHeadlessAccountV4Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpgradeHeadlessAccountV4Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpgradeHeadlessAccountV4InternalServerError creates a PublicUpgradeHeadlessAccountV4InternalServerError with default headers values
func NewPublicUpgradeHeadlessAccountV4InternalServerError() *PublicUpgradeHeadlessAccountV4InternalServerError {
	return &PublicUpgradeHeadlessAccountV4InternalServerError{}
}

/*PublicUpgradeHeadlessAccountV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicUpgradeHeadlessAccountV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpgradeHeadlessAccountV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/headless/verify][%d] publicUpgradeHeadlessAccountV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicUpgradeHeadlessAccountV4InternalServerError) ToJSONString() string {
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

func (o *PublicUpgradeHeadlessAccountV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpgradeHeadlessAccountV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
