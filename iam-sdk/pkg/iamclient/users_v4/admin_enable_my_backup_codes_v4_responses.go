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

type AdminEnableMyBackupCodesV4Response struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.ModelBackupCodesResponseV4

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 *iamclientmodels.RestErrorResponse
	Error409 *iamclientmodels.RestErrorResponse
	Error500 *iamclientmodels.RestErrorResponse
}

func (m *AdminEnableMyBackupCodesV4Response) Unpack() (*iamclientmodels.ModelBackupCodesResponseV4, *iamclientmodels.ApiError) {
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

// AdminEnableMyBackupCodesV4Reader is a Reader for the AdminEnableMyBackupCodesV4 structure.
type AdminEnableMyBackupCodesV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminEnableMyBackupCodesV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminEnableMyBackupCodesV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminEnableMyBackupCodesV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminEnableMyBackupCodesV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminEnableMyBackupCodesV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminEnableMyBackupCodesV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminEnableMyBackupCodesV4Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminEnableMyBackupCodesV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/admin/users/me/mfa/backupCode/enable returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminEnableMyBackupCodesV4OK creates a AdminEnableMyBackupCodesV4OK with default headers values
func NewAdminEnableMyBackupCodesV4OK() *AdminEnableMyBackupCodesV4OK {
	return &AdminEnableMyBackupCodesV4OK{}
}

/*AdminEnableMyBackupCodesV4OK handles this case with default header values.

  Backup codes enabled
*/
type AdminEnableMyBackupCodesV4OK struct {
	Payload *iamclientmodels.ModelBackupCodesResponseV4
}

func (o *AdminEnableMyBackupCodesV4OK) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/backupCode/enable][%d] adminEnableMyBackupCodesV4OK  %+v", 200, o.ToJSONString())
}

func (o *AdminEnableMyBackupCodesV4OK) ToJSONString() string {
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

func (o *AdminEnableMyBackupCodesV4OK) GetPayload() *iamclientmodels.ModelBackupCodesResponseV4 {
	return o.Payload
}

func (o *AdminEnableMyBackupCodesV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminEnableMyBackupCodesV4BadRequest creates a AdminEnableMyBackupCodesV4BadRequest with default headers values
func NewAdminEnableMyBackupCodesV4BadRequest() *AdminEnableMyBackupCodesV4BadRequest {
	return &AdminEnableMyBackupCodesV4BadRequest{}
}

/*AdminEnableMyBackupCodesV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10191</td><td>email address not verified</td></tr><tr><td>10194</td><td>factor already enabled</td></tr><tr><td>10171</td><td>email address not found</td></tr></table>
*/
type AdminEnableMyBackupCodesV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminEnableMyBackupCodesV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/backupCode/enable][%d] adminEnableMyBackupCodesV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminEnableMyBackupCodesV4BadRequest) ToJSONString() string {
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

func (o *AdminEnableMyBackupCodesV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminEnableMyBackupCodesV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminEnableMyBackupCodesV4Unauthorized creates a AdminEnableMyBackupCodesV4Unauthorized with default headers values
func NewAdminEnableMyBackupCodesV4Unauthorized() *AdminEnableMyBackupCodesV4Unauthorized {
	return &AdminEnableMyBackupCodesV4Unauthorized{}
}

/*AdminEnableMyBackupCodesV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminEnableMyBackupCodesV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminEnableMyBackupCodesV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/backupCode/enable][%d] adminEnableMyBackupCodesV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminEnableMyBackupCodesV4Unauthorized) ToJSONString() string {
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

func (o *AdminEnableMyBackupCodesV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminEnableMyBackupCodesV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminEnableMyBackupCodesV4Forbidden creates a AdminEnableMyBackupCodesV4Forbidden with default headers values
func NewAdminEnableMyBackupCodesV4Forbidden() *AdminEnableMyBackupCodesV4Forbidden {
	return &AdminEnableMyBackupCodesV4Forbidden{}
}

/*AdminEnableMyBackupCodesV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminEnableMyBackupCodesV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminEnableMyBackupCodesV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/backupCode/enable][%d] adminEnableMyBackupCodesV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminEnableMyBackupCodesV4Forbidden) ToJSONString() string {
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

func (o *AdminEnableMyBackupCodesV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminEnableMyBackupCodesV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminEnableMyBackupCodesV4NotFound creates a AdminEnableMyBackupCodesV4NotFound with default headers values
func NewAdminEnableMyBackupCodesV4NotFound() *AdminEnableMyBackupCodesV4NotFound {
	return &AdminEnableMyBackupCodesV4NotFound{}
}

/*AdminEnableMyBackupCodesV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminEnableMyBackupCodesV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminEnableMyBackupCodesV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/backupCode/enable][%d] adminEnableMyBackupCodesV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminEnableMyBackupCodesV4NotFound) ToJSONString() string {
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

func (o *AdminEnableMyBackupCodesV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminEnableMyBackupCodesV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminEnableMyBackupCodesV4Conflict creates a AdminEnableMyBackupCodesV4Conflict with default headers values
func NewAdminEnableMyBackupCodesV4Conflict() *AdminEnableMyBackupCodesV4Conflict {
	return &AdminEnableMyBackupCodesV4Conflict{}
}

/*AdminEnableMyBackupCodesV4Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10194</td><td>factor already enabled</td></tr></table>
*/
type AdminEnableMyBackupCodesV4Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminEnableMyBackupCodesV4Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/backupCode/enable][%d] adminEnableMyBackupCodesV4Conflict  %+v", 409, o.ToJSONString())
}

func (o *AdminEnableMyBackupCodesV4Conflict) ToJSONString() string {
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

func (o *AdminEnableMyBackupCodesV4Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminEnableMyBackupCodesV4Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminEnableMyBackupCodesV4InternalServerError creates a AdminEnableMyBackupCodesV4InternalServerError with default headers values
func NewAdminEnableMyBackupCodesV4InternalServerError() *AdminEnableMyBackupCodesV4InternalServerError {
	return &AdminEnableMyBackupCodesV4InternalServerError{}
}

/*AdminEnableMyBackupCodesV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminEnableMyBackupCodesV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminEnableMyBackupCodesV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/users/me/mfa/backupCode/enable][%d] adminEnableMyBackupCodesV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminEnableMyBackupCodesV4InternalServerError) ToJSONString() string {
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

func (o *AdminEnableMyBackupCodesV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminEnableMyBackupCodesV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
