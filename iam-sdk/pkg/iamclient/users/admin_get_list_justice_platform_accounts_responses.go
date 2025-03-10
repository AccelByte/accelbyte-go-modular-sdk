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

type AdminGetListJusticePlatformAccountsResponse struct {
	iamclientmodels.ApiResponse
	Data []*iamclientmodels.ModelGetUserMapping

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 *iamclientmodels.RestErrorResponse
	Error500 *iamclientmodels.RestErrorResponse
}

func (m *AdminGetListJusticePlatformAccountsResponse) Unpack() ([]*iamclientmodels.ModelGetUserMapping, *iamclientmodels.ApiError) {
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

// AdminGetListJusticePlatformAccountsReader is a Reader for the AdminGetListJusticePlatformAccounts structure.
type AdminGetListJusticePlatformAccountsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetListJusticePlatformAccountsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetListJusticePlatformAccountsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetListJusticePlatformAccountsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetListJusticePlatformAccountsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetListJusticePlatformAccountsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetListJusticePlatformAccountsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetListJusticePlatformAccountsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetListJusticePlatformAccountsOK creates a AdminGetListJusticePlatformAccountsOK with default headers values
func NewAdminGetListJusticePlatformAccountsOK() *AdminGetListJusticePlatformAccountsOK {
	return &AdminGetListJusticePlatformAccountsOK{}
}

/*AdminGetListJusticePlatformAccountsOK handles this case with default header values.

  OK
*/
type AdminGetListJusticePlatformAccountsOK struct {
	Payload []*iamclientmodels.ModelGetUserMapping
}

func (o *AdminGetListJusticePlatformAccountsOK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice][%d] adminGetListJusticePlatformAccountsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetListJusticePlatformAccountsOK) ToJSONString() string {
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

func (o *AdminGetListJusticePlatformAccountsOK) GetPayload() []*iamclientmodels.ModelGetUserMapping {
	return o.Payload
}

func (o *AdminGetListJusticePlatformAccountsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetListJusticePlatformAccountsBadRequest creates a AdminGetListJusticePlatformAccountsBadRequest with default headers values
func NewAdminGetListJusticePlatformAccountsBadRequest() *AdminGetListJusticePlatformAccountsBadRequest {
	return &AdminGetListJusticePlatformAccountsBadRequest{}
}

/*AdminGetListJusticePlatformAccountsBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20025</td><td>not a publisher user</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminGetListJusticePlatformAccountsBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetListJusticePlatformAccountsBadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice][%d] adminGetListJusticePlatformAccountsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetListJusticePlatformAccountsBadRequest) ToJSONString() string {
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

func (o *AdminGetListJusticePlatformAccountsBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetListJusticePlatformAccountsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetListJusticePlatformAccountsUnauthorized creates a AdminGetListJusticePlatformAccountsUnauthorized with default headers values
func NewAdminGetListJusticePlatformAccountsUnauthorized() *AdminGetListJusticePlatformAccountsUnauthorized {
	return &AdminGetListJusticePlatformAccountsUnauthorized{}
}

/*AdminGetListJusticePlatformAccountsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetListJusticePlatformAccountsUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetListJusticePlatformAccountsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice][%d] adminGetListJusticePlatformAccountsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetListJusticePlatformAccountsUnauthorized) ToJSONString() string {
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

func (o *AdminGetListJusticePlatformAccountsUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetListJusticePlatformAccountsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetListJusticePlatformAccountsForbidden creates a AdminGetListJusticePlatformAccountsForbidden with default headers values
func NewAdminGetListJusticePlatformAccountsForbidden() *AdminGetListJusticePlatformAccountsForbidden {
	return &AdminGetListJusticePlatformAccountsForbidden{}
}

/*AdminGetListJusticePlatformAccountsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetListJusticePlatformAccountsForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetListJusticePlatformAccountsForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice][%d] adminGetListJusticePlatformAccountsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetListJusticePlatformAccountsForbidden) ToJSONString() string {
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

func (o *AdminGetListJusticePlatformAccountsForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetListJusticePlatformAccountsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetListJusticePlatformAccountsNotFound creates a AdminGetListJusticePlatformAccountsNotFound with default headers values
func NewAdminGetListJusticePlatformAccountsNotFound() *AdminGetListJusticePlatformAccountsNotFound {
	return &AdminGetListJusticePlatformAccountsNotFound{}
}

/*AdminGetListJusticePlatformAccountsNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminGetListJusticePlatformAccountsNotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetListJusticePlatformAccountsNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice][%d] adminGetListJusticePlatformAccountsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetListJusticePlatformAccountsNotFound) ToJSONString() string {
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

func (o *AdminGetListJusticePlatformAccountsNotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetListJusticePlatformAccountsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetListJusticePlatformAccountsInternalServerError creates a AdminGetListJusticePlatformAccountsInternalServerError with default headers values
func NewAdminGetListJusticePlatformAccountsInternalServerError() *AdminGetListJusticePlatformAccountsInternalServerError {
	return &AdminGetListJusticePlatformAccountsInternalServerError{}
}

/*AdminGetListJusticePlatformAccountsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetListJusticePlatformAccountsInternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetListJusticePlatformAccountsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice][%d] adminGetListJusticePlatformAccountsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetListJusticePlatformAccountsInternalServerError) ToJSONString() string {
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

func (o *AdminGetListJusticePlatformAccountsInternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetListJusticePlatformAccountsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
