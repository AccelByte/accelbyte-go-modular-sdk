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

type AdminListUserIDByUserIDsV3Response struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.ModelListUserInformationResult

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error500 *iamclientmodels.RestErrorResponse
}

func (m *AdminListUserIDByUserIDsV3Response) Unpack() (*iamclientmodels.ModelListUserInformationResult, *iamclientmodels.ApiError) {
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

// AdminListUserIDByUserIDsV3Reader is a Reader for the AdminListUserIDByUserIDsV3 structure.
type AdminListUserIDByUserIDsV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListUserIDByUserIDsV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListUserIDByUserIDsV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminListUserIDByUserIDsV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminListUserIDByUserIDsV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminListUserIDByUserIDsV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminListUserIDByUserIDsV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/admin/namespaces/{namespace}/users/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListUserIDByUserIDsV3OK creates a AdminListUserIDByUserIDsV3OK with default headers values
func NewAdminListUserIDByUserIDsV3OK() *AdminListUserIDByUserIDsV3OK {
	return &AdminListUserIDByUserIDsV3OK{}
}

/*AdminListUserIDByUserIDsV3OK handles this case with default header values.

  OK
*/
type AdminListUserIDByUserIDsV3OK struct {
	Payload *iamclientmodels.ModelListUserInformationResult
}

func (o *AdminListUserIDByUserIDsV3OK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/bulk][%d] adminListUserIdByUserIDsV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminListUserIDByUserIDsV3OK) ToJSONString() string {
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

func (o *AdminListUserIDByUserIDsV3OK) GetPayload() *iamclientmodels.ModelListUserInformationResult {
	return o.Payload
}

func (o *AdminListUserIDByUserIDsV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelListUserInformationResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminListUserIDByUserIDsV3BadRequest creates a AdminListUserIDByUserIDsV3BadRequest with default headers values
func NewAdminListUserIDByUserIDsV3BadRequest() *AdminListUserIDByUserIDsV3BadRequest {
	return &AdminListUserIDByUserIDsV3BadRequest{}
}

/*AdminListUserIDByUserIDsV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminListUserIDByUserIDsV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListUserIDByUserIDsV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/bulk][%d] adminListUserIdByUserIDsV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminListUserIDByUserIDsV3BadRequest) ToJSONString() string {
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

func (o *AdminListUserIDByUserIDsV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListUserIDByUserIDsV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListUserIDByUserIDsV3Unauthorized creates a AdminListUserIDByUserIDsV3Unauthorized with default headers values
func NewAdminListUserIDByUserIDsV3Unauthorized() *AdminListUserIDByUserIDsV3Unauthorized {
	return &AdminListUserIDByUserIDsV3Unauthorized{}
}

/*AdminListUserIDByUserIDsV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type AdminListUserIDByUserIDsV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListUserIDByUserIDsV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/bulk][%d] adminListUserIdByUserIDsV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminListUserIDByUserIDsV3Unauthorized) ToJSONString() string {
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

func (o *AdminListUserIDByUserIDsV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListUserIDByUserIDsV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListUserIDByUserIDsV3Forbidden creates a AdminListUserIDByUserIDsV3Forbidden with default headers values
func NewAdminListUserIDByUserIDsV3Forbidden() *AdminListUserIDByUserIDsV3Forbidden {
	return &AdminListUserIDByUserIDsV3Forbidden{}
}

/*AdminListUserIDByUserIDsV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminListUserIDByUserIDsV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListUserIDByUserIDsV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/bulk][%d] adminListUserIdByUserIDsV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminListUserIDByUserIDsV3Forbidden) ToJSONString() string {
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

func (o *AdminListUserIDByUserIDsV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListUserIDByUserIDsV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListUserIDByUserIDsV3InternalServerError creates a AdminListUserIDByUserIDsV3InternalServerError with default headers values
func NewAdminListUserIDByUserIDsV3InternalServerError() *AdminListUserIDByUserIDsV3InternalServerError {
	return &AdminListUserIDByUserIDsV3InternalServerError{}
}

/*AdminListUserIDByUserIDsV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminListUserIDByUserIDsV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListUserIDByUserIDsV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/bulk][%d] adminListUserIdByUserIDsV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminListUserIDByUserIDsV3InternalServerError) ToJSONString() string {
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

func (o *AdminListUserIDByUserIDsV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListUserIDByUserIDsV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
