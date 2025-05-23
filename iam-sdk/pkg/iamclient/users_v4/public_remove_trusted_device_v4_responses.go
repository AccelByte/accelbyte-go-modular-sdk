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

type PublicRemoveTrustedDeviceV4Response struct {
	iamclientmodels.ApiResponse

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 *iamclientmodels.RestErrorResponse
	Error500 *iamclientmodels.RestErrorResponse
}

func (m *PublicRemoveTrustedDeviceV4Response) Unpack() *iamclientmodels.ApiError {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 400:
			e, err := m.Error400.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 401:
			e, err := m.Error401.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 403:
			e, err := m.Error403.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 404:
			e, err := m.Error404.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 500:
			e, err := m.Error500.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		default:
			return &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// PublicRemoveTrustedDeviceV4Reader is a Reader for the PublicRemoveTrustedDeviceV4 structure.
type PublicRemoveTrustedDeviceV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicRemoveTrustedDeviceV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicRemoveTrustedDeviceV4NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicRemoveTrustedDeviceV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicRemoveTrustedDeviceV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicRemoveTrustedDeviceV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicRemoveTrustedDeviceV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicRemoveTrustedDeviceV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v4/public/namespaces/{namespace}/users/me/mfa/device returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicRemoveTrustedDeviceV4NoContent creates a PublicRemoveTrustedDeviceV4NoContent with default headers values
func NewPublicRemoveTrustedDeviceV4NoContent() *PublicRemoveTrustedDeviceV4NoContent {
	return &PublicRemoveTrustedDeviceV4NoContent{}
}

/*PublicRemoveTrustedDeviceV4NoContent handles this case with default header values.

  Device removed
*/
type PublicRemoveTrustedDeviceV4NoContent struct {
}

func (o *PublicRemoveTrustedDeviceV4NoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/public/namespaces/{namespace}/users/me/mfa/device][%d] publicRemoveTrustedDeviceV4NoContent ", 204)
}

func (o *PublicRemoveTrustedDeviceV4NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicRemoveTrustedDeviceV4BadRequest creates a PublicRemoveTrustedDeviceV4BadRequest with default headers values
func NewPublicRemoveTrustedDeviceV4BadRequest() *PublicRemoveTrustedDeviceV4BadRequest {
	return &PublicRemoveTrustedDeviceV4BadRequest{}
}

/*PublicRemoveTrustedDeviceV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10191</td><td>email address not verified</td></tr><tr><td>10171</td><td>email address not found</td></tr></table>
*/
type PublicRemoveTrustedDeviceV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicRemoveTrustedDeviceV4BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/public/namespaces/{namespace}/users/me/mfa/device][%d] publicRemoveTrustedDeviceV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicRemoveTrustedDeviceV4BadRequest) ToJSONString() string {
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

func (o *PublicRemoveTrustedDeviceV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicRemoveTrustedDeviceV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicRemoveTrustedDeviceV4Unauthorized creates a PublicRemoveTrustedDeviceV4Unauthorized with default headers values
func NewPublicRemoveTrustedDeviceV4Unauthorized() *PublicRemoveTrustedDeviceV4Unauthorized {
	return &PublicRemoveTrustedDeviceV4Unauthorized{}
}

/*PublicRemoveTrustedDeviceV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicRemoveTrustedDeviceV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicRemoveTrustedDeviceV4Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/public/namespaces/{namespace}/users/me/mfa/device][%d] publicRemoveTrustedDeviceV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicRemoveTrustedDeviceV4Unauthorized) ToJSONString() string {
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

func (o *PublicRemoveTrustedDeviceV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicRemoveTrustedDeviceV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicRemoveTrustedDeviceV4Forbidden creates a PublicRemoveTrustedDeviceV4Forbidden with default headers values
func NewPublicRemoveTrustedDeviceV4Forbidden() *PublicRemoveTrustedDeviceV4Forbidden {
	return &PublicRemoveTrustedDeviceV4Forbidden{}
}

/*PublicRemoveTrustedDeviceV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicRemoveTrustedDeviceV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicRemoveTrustedDeviceV4Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/public/namespaces/{namespace}/users/me/mfa/device][%d] publicRemoveTrustedDeviceV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicRemoveTrustedDeviceV4Forbidden) ToJSONString() string {
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

func (o *PublicRemoveTrustedDeviceV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicRemoveTrustedDeviceV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicRemoveTrustedDeviceV4NotFound creates a PublicRemoveTrustedDeviceV4NotFound with default headers values
func NewPublicRemoveTrustedDeviceV4NotFound() *PublicRemoveTrustedDeviceV4NotFound {
	return &PublicRemoveTrustedDeviceV4NotFound{}
}

/*PublicRemoveTrustedDeviceV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicRemoveTrustedDeviceV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicRemoveTrustedDeviceV4NotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/public/namespaces/{namespace}/users/me/mfa/device][%d] publicRemoveTrustedDeviceV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicRemoveTrustedDeviceV4NotFound) ToJSONString() string {
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

func (o *PublicRemoveTrustedDeviceV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicRemoveTrustedDeviceV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicRemoveTrustedDeviceV4InternalServerError creates a PublicRemoveTrustedDeviceV4InternalServerError with default headers values
func NewPublicRemoveTrustedDeviceV4InternalServerError() *PublicRemoveTrustedDeviceV4InternalServerError {
	return &PublicRemoveTrustedDeviceV4InternalServerError{}
}

/*PublicRemoveTrustedDeviceV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicRemoveTrustedDeviceV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicRemoveTrustedDeviceV4InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /iam/v4/public/namespaces/{namespace}/users/me/mfa/device][%d] publicRemoveTrustedDeviceV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicRemoveTrustedDeviceV4InternalServerError) ToJSONString() string {
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

func (o *PublicRemoveTrustedDeviceV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicRemoveTrustedDeviceV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
