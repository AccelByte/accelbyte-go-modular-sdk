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

type AdminBanUserV2Response struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.ModelUserBanResponse

	Error400 string
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 string
	Error500 string
}

func (m *AdminBanUserV2Response) Unpack() (*iamclientmodels.ModelUserBanResponse, *iamclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 400:
			return nil, &iamclientmodels.ApiError{Code: "400", Message: m.Error400}

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
			return nil, &iamclientmodels.ApiError{Code: "404", Message: m.Error404}

		case 500:
			return nil, &iamclientmodels.ApiError{Code: "500", Message: m.Error500}

		default:
			return nil, &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// AdminBanUserV2Reader is a Reader for the AdminBanUserV2 structure.
type AdminBanUserV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminBanUserV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminBanUserV2Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminBanUserV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminBanUserV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminBanUserV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminBanUserV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminBanUserV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v2/admin/namespaces/{namespace}/users/{userId}/ban returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminBanUserV2Created creates a AdminBanUserV2Created with default headers values
func NewAdminBanUserV2Created() *AdminBanUserV2Created {
	return &AdminBanUserV2Created{}
}

/*AdminBanUserV2Created handles this case with default header values.

  Created
*/
type AdminBanUserV2Created struct {
	Payload *iamclientmodels.ModelUserBanResponse
}

func (o *AdminBanUserV2Created) Error() string {
	return fmt.Sprintf("[POST /iam/v2/admin/namespaces/{namespace}/users/{userId}/ban][%d] adminBanUserV2Created  %+v", 201, o.ToJSONString())
}

func (o *AdminBanUserV2Created) ToJSONString() string {
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

func (o *AdminBanUserV2Created) GetPayload() *iamclientmodels.ModelUserBanResponse {
	return o.Payload
}

func (o *AdminBanUserV2Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserBanResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminBanUserV2BadRequest creates a AdminBanUserV2BadRequest with default headers values
func NewAdminBanUserV2BadRequest() *AdminBanUserV2BadRequest {
	return &AdminBanUserV2BadRequest{}
}

/*AdminBanUserV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type AdminBanUserV2BadRequest struct {
}

func (o *AdminBanUserV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v2/admin/namespaces/{namespace}/users/{userId}/ban][%d] adminBanUserV2BadRequest ", 400)
}

func (o *AdminBanUserV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminBanUserV2Unauthorized creates a AdminBanUserV2Unauthorized with default headers values
func NewAdminBanUserV2Unauthorized() *AdminBanUserV2Unauthorized {
	return &AdminBanUserV2Unauthorized{}
}

/*AdminBanUserV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminBanUserV2Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBanUserV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v2/admin/namespaces/{namespace}/users/{userId}/ban][%d] adminBanUserV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminBanUserV2Unauthorized) ToJSONString() string {
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

func (o *AdminBanUserV2Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBanUserV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBanUserV2Forbidden creates a AdminBanUserV2Forbidden with default headers values
func NewAdminBanUserV2Forbidden() *AdminBanUserV2Forbidden {
	return &AdminBanUserV2Forbidden{}
}

/*AdminBanUserV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminBanUserV2Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBanUserV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v2/admin/namespaces/{namespace}/users/{userId}/ban][%d] adminBanUserV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminBanUserV2Forbidden) ToJSONString() string {
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

func (o *AdminBanUserV2Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBanUserV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBanUserV2NotFound creates a AdminBanUserV2NotFound with default headers values
func NewAdminBanUserV2NotFound() *AdminBanUserV2NotFound {
	return &AdminBanUserV2NotFound{}
}

/*AdminBanUserV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr><tr><td>10158</td><td>ban not found</td></tr></table>
*/
type AdminBanUserV2NotFound struct {
}

func (o *AdminBanUserV2NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v2/admin/namespaces/{namespace}/users/{userId}/ban][%d] adminBanUserV2NotFound ", 404)
}

func (o *AdminBanUserV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminBanUserV2InternalServerError creates a AdminBanUserV2InternalServerError with default headers values
func NewAdminBanUserV2InternalServerError() *AdminBanUserV2InternalServerError {
	return &AdminBanUserV2InternalServerError{}
}

/*AdminBanUserV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminBanUserV2InternalServerError struct {
}

func (o *AdminBanUserV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v2/admin/namespaces/{namespace}/users/{userId}/ban][%d] adminBanUserV2InternalServerError ", 500)
}

func (o *AdminBanUserV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
