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

type AdminDownloadMyBackupCodesV4Response struct {
	iamclientmodels.ApiResponse
	Data io.Writer

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 *iamclientmodels.RestErrorResponse
	Error500 *iamclientmodels.RestErrorResponse
}

func (m *AdminDownloadMyBackupCodesV4Response) Unpack() (io.Writer, *iamclientmodels.ApiError) {
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

// AdminDownloadMyBackupCodesV4Reader is a Reader for the AdminDownloadMyBackupCodesV4 structure.
type AdminDownloadMyBackupCodesV4Reader struct {
	formats strfmt.Registry
	writer  io.Writer
}

// ReadResponse reads a server response into the received o.
func (o *AdminDownloadMyBackupCodesV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminDownloadMyBackupCodesV4OK(o.writer)
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDownloadMyBackupCodesV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDownloadMyBackupCodesV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDownloadMyBackupCodesV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDownloadMyBackupCodesV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDownloadMyBackupCodesV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v4/admin/users/me/mfa/backupCode/download returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDownloadMyBackupCodesV4OK creates a AdminDownloadMyBackupCodesV4OK with default headers values
func NewAdminDownloadMyBackupCodesV4OK(writer io.Writer) *AdminDownloadMyBackupCodesV4OK {
	return &AdminDownloadMyBackupCodesV4OK{
		Payload: writer,
	}
}

/*AdminDownloadMyBackupCodesV4OK handles this case with default header values.

  Backup codes downloaded
*/
type AdminDownloadMyBackupCodesV4OK struct {
	Payload io.Writer
}

func (o *AdminDownloadMyBackupCodesV4OK) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/users/me/mfa/backupCode/download][%d] adminDownloadMyBackupCodesV4OK  %+v", 200, o.ToJSONString())
}

func (o *AdminDownloadMyBackupCodesV4OK) ToJSONString() string {
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

func (o *AdminDownloadMyBackupCodesV4OK) GetPayload() io.Writer {
	return o.Payload
}

func (o *AdminDownloadMyBackupCodesV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDownloadMyBackupCodesV4BadRequest creates a AdminDownloadMyBackupCodesV4BadRequest with default headers values
func NewAdminDownloadMyBackupCodesV4BadRequest() *AdminDownloadMyBackupCodesV4BadRequest {
	return &AdminDownloadMyBackupCodesV4BadRequest{}
}

/*AdminDownloadMyBackupCodesV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10192</td><td>factor not enabled</td></tr><tr><td>10191</td><td>email address not verified</td></tr><tr><td>10195</td><td>no valid backup code found</td></tr><tr><td>10171</td><td>email address not found</td></tr></table>
*/
type AdminDownloadMyBackupCodesV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDownloadMyBackupCodesV4BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/users/me/mfa/backupCode/download][%d] adminDownloadMyBackupCodesV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDownloadMyBackupCodesV4BadRequest) ToJSONString() string {
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

func (o *AdminDownloadMyBackupCodesV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDownloadMyBackupCodesV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDownloadMyBackupCodesV4Unauthorized creates a AdminDownloadMyBackupCodesV4Unauthorized with default headers values
func NewAdminDownloadMyBackupCodesV4Unauthorized() *AdminDownloadMyBackupCodesV4Unauthorized {
	return &AdminDownloadMyBackupCodesV4Unauthorized{}
}

/*AdminDownloadMyBackupCodesV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDownloadMyBackupCodesV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDownloadMyBackupCodesV4Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/users/me/mfa/backupCode/download][%d] adminDownloadMyBackupCodesV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDownloadMyBackupCodesV4Unauthorized) ToJSONString() string {
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

func (o *AdminDownloadMyBackupCodesV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDownloadMyBackupCodesV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDownloadMyBackupCodesV4Forbidden creates a AdminDownloadMyBackupCodesV4Forbidden with default headers values
func NewAdminDownloadMyBackupCodesV4Forbidden() *AdminDownloadMyBackupCodesV4Forbidden {
	return &AdminDownloadMyBackupCodesV4Forbidden{}
}

/*AdminDownloadMyBackupCodesV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminDownloadMyBackupCodesV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDownloadMyBackupCodesV4Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/users/me/mfa/backupCode/download][%d] adminDownloadMyBackupCodesV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDownloadMyBackupCodesV4Forbidden) ToJSONString() string {
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

func (o *AdminDownloadMyBackupCodesV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDownloadMyBackupCodesV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDownloadMyBackupCodesV4NotFound creates a AdminDownloadMyBackupCodesV4NotFound with default headers values
func NewAdminDownloadMyBackupCodesV4NotFound() *AdminDownloadMyBackupCodesV4NotFound {
	return &AdminDownloadMyBackupCodesV4NotFound{}
}

/*AdminDownloadMyBackupCodesV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminDownloadMyBackupCodesV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDownloadMyBackupCodesV4NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/users/me/mfa/backupCode/download][%d] adminDownloadMyBackupCodesV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDownloadMyBackupCodesV4NotFound) ToJSONString() string {
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

func (o *AdminDownloadMyBackupCodesV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDownloadMyBackupCodesV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDownloadMyBackupCodesV4InternalServerError creates a AdminDownloadMyBackupCodesV4InternalServerError with default headers values
func NewAdminDownloadMyBackupCodesV4InternalServerError() *AdminDownloadMyBackupCodesV4InternalServerError {
	return &AdminDownloadMyBackupCodesV4InternalServerError{}
}

/*AdminDownloadMyBackupCodesV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminDownloadMyBackupCodesV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminDownloadMyBackupCodesV4InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/users/me/mfa/backupCode/download][%d] adminDownloadMyBackupCodesV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDownloadMyBackupCodesV4InternalServerError) ToJSONString() string {
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

func (o *AdminDownloadMyBackupCodesV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminDownloadMyBackupCodesV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
