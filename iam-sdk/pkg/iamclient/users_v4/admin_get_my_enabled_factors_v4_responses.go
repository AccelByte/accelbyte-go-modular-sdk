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

type AdminGetMyEnabledFactorsV4Response struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.ModelEnabledFactorsResponseV4

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 *iamclientmodels.RestErrorResponse
	Error500 *iamclientmodels.RestErrorResponse
}

func (m *AdminGetMyEnabledFactorsV4Response) Unpack() (*iamclientmodels.ModelEnabledFactorsResponseV4, *iamclientmodels.ApiError) {
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

// AdminGetMyEnabledFactorsV4Reader is a Reader for the AdminGetMyEnabledFactorsV4 structure.
type AdminGetMyEnabledFactorsV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetMyEnabledFactorsV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetMyEnabledFactorsV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetMyEnabledFactorsV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetMyEnabledFactorsV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetMyEnabledFactorsV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetMyEnabledFactorsV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetMyEnabledFactorsV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v4/admin/users/me/mfa/factor returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetMyEnabledFactorsV4OK creates a AdminGetMyEnabledFactorsV4OK with default headers values
func NewAdminGetMyEnabledFactorsV4OK() *AdminGetMyEnabledFactorsV4OK {
	return &AdminGetMyEnabledFactorsV4OK{}
}

/*AdminGetMyEnabledFactorsV4OK handles this case with default header values.

  Methods returned
*/
type AdminGetMyEnabledFactorsV4OK struct {
	Payload *iamclientmodels.ModelEnabledFactorsResponseV4
}

func (o *AdminGetMyEnabledFactorsV4OK) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/users/me/mfa/factor][%d] adminGetMyEnabledFactorsV4OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetMyEnabledFactorsV4OK) ToJSONString() string {
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

func (o *AdminGetMyEnabledFactorsV4OK) GetPayload() *iamclientmodels.ModelEnabledFactorsResponseV4 {
	return o.Payload
}

func (o *AdminGetMyEnabledFactorsV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelEnabledFactorsResponseV4)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetMyEnabledFactorsV4BadRequest creates a AdminGetMyEnabledFactorsV4BadRequest with default headers values
func NewAdminGetMyEnabledFactorsV4BadRequest() *AdminGetMyEnabledFactorsV4BadRequest {
	return &AdminGetMyEnabledFactorsV4BadRequest{}
}

/*AdminGetMyEnabledFactorsV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10191</td><td>email address not verified</td></tr><tr><td>10193</td><td>mfa not enabled</td></tr><tr><td>10171</td><td>email address not found</td></tr></table>
*/
type AdminGetMyEnabledFactorsV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetMyEnabledFactorsV4BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/users/me/mfa/factor][%d] adminGetMyEnabledFactorsV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetMyEnabledFactorsV4BadRequest) ToJSONString() string {
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

func (o *AdminGetMyEnabledFactorsV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetMyEnabledFactorsV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetMyEnabledFactorsV4Unauthorized creates a AdminGetMyEnabledFactorsV4Unauthorized with default headers values
func NewAdminGetMyEnabledFactorsV4Unauthorized() *AdminGetMyEnabledFactorsV4Unauthorized {
	return &AdminGetMyEnabledFactorsV4Unauthorized{}
}

/*AdminGetMyEnabledFactorsV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetMyEnabledFactorsV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetMyEnabledFactorsV4Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/users/me/mfa/factor][%d] adminGetMyEnabledFactorsV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetMyEnabledFactorsV4Unauthorized) ToJSONString() string {
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

func (o *AdminGetMyEnabledFactorsV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetMyEnabledFactorsV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetMyEnabledFactorsV4Forbidden creates a AdminGetMyEnabledFactorsV4Forbidden with default headers values
func NewAdminGetMyEnabledFactorsV4Forbidden() *AdminGetMyEnabledFactorsV4Forbidden {
	return &AdminGetMyEnabledFactorsV4Forbidden{}
}

/*AdminGetMyEnabledFactorsV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetMyEnabledFactorsV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetMyEnabledFactorsV4Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/users/me/mfa/factor][%d] adminGetMyEnabledFactorsV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetMyEnabledFactorsV4Forbidden) ToJSONString() string {
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

func (o *AdminGetMyEnabledFactorsV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetMyEnabledFactorsV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetMyEnabledFactorsV4NotFound creates a AdminGetMyEnabledFactorsV4NotFound with default headers values
func NewAdminGetMyEnabledFactorsV4NotFound() *AdminGetMyEnabledFactorsV4NotFound {
	return &AdminGetMyEnabledFactorsV4NotFound{}
}

/*AdminGetMyEnabledFactorsV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminGetMyEnabledFactorsV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetMyEnabledFactorsV4NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/users/me/mfa/factor][%d] adminGetMyEnabledFactorsV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetMyEnabledFactorsV4NotFound) ToJSONString() string {
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

func (o *AdminGetMyEnabledFactorsV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetMyEnabledFactorsV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetMyEnabledFactorsV4InternalServerError creates a AdminGetMyEnabledFactorsV4InternalServerError with default headers values
func NewAdminGetMyEnabledFactorsV4InternalServerError() *AdminGetMyEnabledFactorsV4InternalServerError {
	return &AdminGetMyEnabledFactorsV4InternalServerError{}
}

/*AdminGetMyEnabledFactorsV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetMyEnabledFactorsV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetMyEnabledFactorsV4InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v4/admin/users/me/mfa/factor][%d] adminGetMyEnabledFactorsV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetMyEnabledFactorsV4InternalServerError) ToJSONString() string {
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

func (o *AdminGetMyEnabledFactorsV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetMyEnabledFactorsV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
