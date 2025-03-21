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

type PublicGenerateMyBackupCodesV4Response struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.ModelBackupCodesResponseV4

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 *iamclientmodels.RestErrorResponse
	Error500 *iamclientmodels.RestErrorResponse
}

func (m *PublicGenerateMyBackupCodesV4Response) Unpack() (*iamclientmodels.ModelBackupCodesResponseV4, *iamclientmodels.ApiError) {
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

// PublicGenerateMyBackupCodesV4Reader is a Reader for the PublicGenerateMyBackupCodesV4 structure.
type PublicGenerateMyBackupCodesV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGenerateMyBackupCodesV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGenerateMyBackupCodesV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGenerateMyBackupCodesV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGenerateMyBackupCodesV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGenerateMyBackupCodesV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGenerateMyBackupCodesV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGenerateMyBackupCodesV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGenerateMyBackupCodesV4OK creates a PublicGenerateMyBackupCodesV4OK with default headers values
func NewPublicGenerateMyBackupCodesV4OK() *PublicGenerateMyBackupCodesV4OK {
	return &PublicGenerateMyBackupCodesV4OK{}
}

/*PublicGenerateMyBackupCodesV4OK handles this case with default header values.

  Backup codes generated
*/
type PublicGenerateMyBackupCodesV4OK struct {
	Payload *iamclientmodels.ModelBackupCodesResponseV4
}

func (o *PublicGenerateMyBackupCodesV4OK) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode][%d] publicGenerateMyBackupCodesV4OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGenerateMyBackupCodesV4OK) ToJSONString() string {
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

func (o *PublicGenerateMyBackupCodesV4OK) GetPayload() *iamclientmodels.ModelBackupCodesResponseV4 {
	return o.Payload
}

func (o *PublicGenerateMyBackupCodesV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelBackupCodesResponseV4)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGenerateMyBackupCodesV4BadRequest creates a PublicGenerateMyBackupCodesV4BadRequest with default headers values
func NewPublicGenerateMyBackupCodesV4BadRequest() *PublicGenerateMyBackupCodesV4BadRequest {
	return &PublicGenerateMyBackupCodesV4BadRequest{}
}

/*PublicGenerateMyBackupCodesV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10191</td><td>email address not verified</td></tr><tr><td>10192</td><td>factor not enabled</td></tr><tr><td>10171</td><td>email address not found</td></tr></table>
*/
type PublicGenerateMyBackupCodesV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGenerateMyBackupCodesV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode][%d] publicGenerateMyBackupCodesV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGenerateMyBackupCodesV4BadRequest) ToJSONString() string {
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

func (o *PublicGenerateMyBackupCodesV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGenerateMyBackupCodesV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGenerateMyBackupCodesV4Unauthorized creates a PublicGenerateMyBackupCodesV4Unauthorized with default headers values
func NewPublicGenerateMyBackupCodesV4Unauthorized() *PublicGenerateMyBackupCodesV4Unauthorized {
	return &PublicGenerateMyBackupCodesV4Unauthorized{}
}

/*PublicGenerateMyBackupCodesV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicGenerateMyBackupCodesV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGenerateMyBackupCodesV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode][%d] publicGenerateMyBackupCodesV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGenerateMyBackupCodesV4Unauthorized) ToJSONString() string {
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

func (o *PublicGenerateMyBackupCodesV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGenerateMyBackupCodesV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGenerateMyBackupCodesV4Forbidden creates a PublicGenerateMyBackupCodesV4Forbidden with default headers values
func NewPublicGenerateMyBackupCodesV4Forbidden() *PublicGenerateMyBackupCodesV4Forbidden {
	return &PublicGenerateMyBackupCodesV4Forbidden{}
}

/*PublicGenerateMyBackupCodesV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicGenerateMyBackupCodesV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGenerateMyBackupCodesV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode][%d] publicGenerateMyBackupCodesV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGenerateMyBackupCodesV4Forbidden) ToJSONString() string {
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

func (o *PublicGenerateMyBackupCodesV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGenerateMyBackupCodesV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGenerateMyBackupCodesV4NotFound creates a PublicGenerateMyBackupCodesV4NotFound with default headers values
func NewPublicGenerateMyBackupCodesV4NotFound() *PublicGenerateMyBackupCodesV4NotFound {
	return &PublicGenerateMyBackupCodesV4NotFound{}
}

/*PublicGenerateMyBackupCodesV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicGenerateMyBackupCodesV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGenerateMyBackupCodesV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode][%d] publicGenerateMyBackupCodesV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGenerateMyBackupCodesV4NotFound) ToJSONString() string {
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

func (o *PublicGenerateMyBackupCodesV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGenerateMyBackupCodesV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGenerateMyBackupCodesV4InternalServerError creates a PublicGenerateMyBackupCodesV4InternalServerError with default headers values
func NewPublicGenerateMyBackupCodesV4InternalServerError() *PublicGenerateMyBackupCodesV4InternalServerError {
	return &PublicGenerateMyBackupCodesV4InternalServerError{}
}

/*PublicGenerateMyBackupCodesV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicGenerateMyBackupCodesV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGenerateMyBackupCodesV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode][%d] publicGenerateMyBackupCodesV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGenerateMyBackupCodesV4InternalServerError) ToJSONString() string {
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

func (o *PublicGenerateMyBackupCodesV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGenerateMyBackupCodesV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
