// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package sso_credential

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

type RetrieveSSOLoginPlatformCredentialResponse struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.ModelSSOPlatformCredentialResponse

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 *iamclientmodels.RestErrorResponse
	Error500 *iamclientmodels.RestErrorResponse
}

func (m *RetrieveSSOLoginPlatformCredentialResponse) Unpack() (*iamclientmodels.ModelSSOPlatformCredentialResponse, *iamclientmodels.ApiError) {
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

// RetrieveSSOLoginPlatformCredentialReader is a Reader for the RetrieveSSOLoginPlatformCredential structure.
type RetrieveSSOLoginPlatformCredentialReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveSSOLoginPlatformCredentialReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveSSOLoginPlatformCredentialOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewRetrieveSSOLoginPlatformCredentialBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRetrieveSSOLoginPlatformCredentialUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewRetrieveSSOLoginPlatformCredentialForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRetrieveSSOLoginPlatformCredentialNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewRetrieveSSOLoginPlatformCredentialInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrieveSSOLoginPlatformCredentialOK creates a RetrieveSSOLoginPlatformCredentialOK with default headers values
func NewRetrieveSSOLoginPlatformCredentialOK() *RetrieveSSOLoginPlatformCredentialOK {
	return &RetrieveSSOLoginPlatformCredentialOK{}
}

/*RetrieveSSOLoginPlatformCredentialOK handles this case with default header values.

  SSO Credential Found
*/
type RetrieveSSOLoginPlatformCredentialOK struct {
	Payload *iamclientmodels.ModelSSOPlatformCredentialResponse
}

func (o *RetrieveSSOLoginPlatformCredentialOK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso][%d] retrieveSsoLoginPlatformCredentialOK  %+v", 200, o.ToJSONString())
}

func (o *RetrieveSSOLoginPlatformCredentialOK) ToJSONString() string {
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

func (o *RetrieveSSOLoginPlatformCredentialOK) GetPayload() *iamclientmodels.ModelSSOPlatformCredentialResponse {
	return o.Payload
}

func (o *RetrieveSSOLoginPlatformCredentialOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelSSOPlatformCredentialResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRetrieveSSOLoginPlatformCredentialBadRequest creates a RetrieveSSOLoginPlatformCredentialBadRequest with default headers values
func NewRetrieveSSOLoginPlatformCredentialBadRequest() *RetrieveSSOLoginPlatformCredentialBadRequest {
	return &RetrieveSSOLoginPlatformCredentialBadRequest{}
}

/*RetrieveSSOLoginPlatformCredentialBadRequest handles this case with default header values.

  Invalid request
*/
type RetrieveSSOLoginPlatformCredentialBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveSSOLoginPlatformCredentialBadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso][%d] retrieveSsoLoginPlatformCredentialBadRequest  %+v", 400, o.ToJSONString())
}

func (o *RetrieveSSOLoginPlatformCredentialBadRequest) ToJSONString() string {
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

func (o *RetrieveSSOLoginPlatformCredentialBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveSSOLoginPlatformCredentialBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveSSOLoginPlatformCredentialUnauthorized creates a RetrieveSSOLoginPlatformCredentialUnauthorized with default headers values
func NewRetrieveSSOLoginPlatformCredentialUnauthorized() *RetrieveSSOLoginPlatformCredentialUnauthorized {
	return &RetrieveSSOLoginPlatformCredentialUnauthorized{}
}

/*RetrieveSSOLoginPlatformCredentialUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type RetrieveSSOLoginPlatformCredentialUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveSSOLoginPlatformCredentialUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso][%d] retrieveSsoLoginPlatformCredentialUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *RetrieveSSOLoginPlatformCredentialUnauthorized) ToJSONString() string {
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

func (o *RetrieveSSOLoginPlatformCredentialUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveSSOLoginPlatformCredentialUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveSSOLoginPlatformCredentialForbidden creates a RetrieveSSOLoginPlatformCredentialForbidden with default headers values
func NewRetrieveSSOLoginPlatformCredentialForbidden() *RetrieveSSOLoginPlatformCredentialForbidden {
	return &RetrieveSSOLoginPlatformCredentialForbidden{}
}

/*RetrieveSSOLoginPlatformCredentialForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type RetrieveSSOLoginPlatformCredentialForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveSSOLoginPlatformCredentialForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso][%d] retrieveSsoLoginPlatformCredentialForbidden  %+v", 403, o.ToJSONString())
}

func (o *RetrieveSSOLoginPlatformCredentialForbidden) ToJSONString() string {
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

func (o *RetrieveSSOLoginPlatformCredentialForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveSSOLoginPlatformCredentialForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveSSOLoginPlatformCredentialNotFound creates a RetrieveSSOLoginPlatformCredentialNotFound with default headers values
func NewRetrieveSSOLoginPlatformCredentialNotFound() *RetrieveSSOLoginPlatformCredentialNotFound {
	return &RetrieveSSOLoginPlatformCredentialNotFound{}
}

/*RetrieveSSOLoginPlatformCredentialNotFound handles this case with default header values.

  SSO Credential Not Found
*/
type RetrieveSSOLoginPlatformCredentialNotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveSSOLoginPlatformCredentialNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso][%d] retrieveSsoLoginPlatformCredentialNotFound  %+v", 404, o.ToJSONString())
}

func (o *RetrieveSSOLoginPlatformCredentialNotFound) ToJSONString() string {
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

func (o *RetrieveSSOLoginPlatformCredentialNotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveSSOLoginPlatformCredentialNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveSSOLoginPlatformCredentialInternalServerError creates a RetrieveSSOLoginPlatformCredentialInternalServerError with default headers values
func NewRetrieveSSOLoginPlatformCredentialInternalServerError() *RetrieveSSOLoginPlatformCredentialInternalServerError {
	return &RetrieveSSOLoginPlatformCredentialInternalServerError{}
}

/*RetrieveSSOLoginPlatformCredentialInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type RetrieveSSOLoginPlatformCredentialInternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveSSOLoginPlatformCredentialInternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso][%d] retrieveSsoLoginPlatformCredentialInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *RetrieveSSOLoginPlatformCredentialInternalServerError) ToJSONString() string {
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

func (o *RetrieveSSOLoginPlatformCredentialInternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveSSOLoginPlatformCredentialInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
