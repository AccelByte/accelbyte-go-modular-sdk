// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package third_party_credential

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

type RetrieveThirdPartyLoginPlatformCredentialV3Response struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse

	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 *iamclientmodels.RestErrorResponse
	Error500 *iamclientmodels.RestErrorResponse
}

func (m *RetrieveThirdPartyLoginPlatformCredentialV3Response) Unpack() (*iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse, *iamclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

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

// RetrieveThirdPartyLoginPlatformCredentialV3Reader is a Reader for the RetrieveThirdPartyLoginPlatformCredentialV3 structure.
type RetrieveThirdPartyLoginPlatformCredentialV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveThirdPartyLoginPlatformCredentialV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveThirdPartyLoginPlatformCredentialV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRetrieveThirdPartyLoginPlatformCredentialV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewRetrieveThirdPartyLoginPlatformCredentialV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRetrieveThirdPartyLoginPlatformCredentialV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewRetrieveThirdPartyLoginPlatformCredentialV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrieveThirdPartyLoginPlatformCredentialV3OK creates a RetrieveThirdPartyLoginPlatformCredentialV3OK with default headers values
func NewRetrieveThirdPartyLoginPlatformCredentialV3OK() *RetrieveThirdPartyLoginPlatformCredentialV3OK {
	return &RetrieveThirdPartyLoginPlatformCredentialV3OK{}
}

/*RetrieveThirdPartyLoginPlatformCredentialV3OK handles this case with default header values.

  Third Party Credential Found
*/
type RetrieveThirdPartyLoginPlatformCredentialV3OK struct {
	Payload *iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse
}

func (o *RetrieveThirdPartyLoginPlatformCredentialV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients][%d] retrieveThirdPartyLoginPlatformCredentialV3OK  %+v", 200, o.ToJSONString())
}

func (o *RetrieveThirdPartyLoginPlatformCredentialV3OK) ToJSONString() string {
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

func (o *RetrieveThirdPartyLoginPlatformCredentialV3OK) GetPayload() *iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse {
	return o.Payload
}

func (o *RetrieveThirdPartyLoginPlatformCredentialV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelThirdPartyLoginPlatformCredentialResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRetrieveThirdPartyLoginPlatformCredentialV3Unauthorized creates a RetrieveThirdPartyLoginPlatformCredentialV3Unauthorized with default headers values
func NewRetrieveThirdPartyLoginPlatformCredentialV3Unauthorized() *RetrieveThirdPartyLoginPlatformCredentialV3Unauthorized {
	return &RetrieveThirdPartyLoginPlatformCredentialV3Unauthorized{}
}

/*RetrieveThirdPartyLoginPlatformCredentialV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type RetrieveThirdPartyLoginPlatformCredentialV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveThirdPartyLoginPlatformCredentialV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients][%d] retrieveThirdPartyLoginPlatformCredentialV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *RetrieveThirdPartyLoginPlatformCredentialV3Unauthorized) ToJSONString() string {
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

func (o *RetrieveThirdPartyLoginPlatformCredentialV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveThirdPartyLoginPlatformCredentialV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveThirdPartyLoginPlatformCredentialV3Forbidden creates a RetrieveThirdPartyLoginPlatformCredentialV3Forbidden with default headers values
func NewRetrieveThirdPartyLoginPlatformCredentialV3Forbidden() *RetrieveThirdPartyLoginPlatformCredentialV3Forbidden {
	return &RetrieveThirdPartyLoginPlatformCredentialV3Forbidden{}
}

/*RetrieveThirdPartyLoginPlatformCredentialV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type RetrieveThirdPartyLoginPlatformCredentialV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveThirdPartyLoginPlatformCredentialV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients][%d] retrieveThirdPartyLoginPlatformCredentialV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *RetrieveThirdPartyLoginPlatformCredentialV3Forbidden) ToJSONString() string {
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

func (o *RetrieveThirdPartyLoginPlatformCredentialV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveThirdPartyLoginPlatformCredentialV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveThirdPartyLoginPlatformCredentialV3NotFound creates a RetrieveThirdPartyLoginPlatformCredentialV3NotFound with default headers values
func NewRetrieveThirdPartyLoginPlatformCredentialV3NotFound() *RetrieveThirdPartyLoginPlatformCredentialV3NotFound {
	return &RetrieveThirdPartyLoginPlatformCredentialV3NotFound{}
}

/*RetrieveThirdPartyLoginPlatformCredentialV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10175</td><td>third party credential not found</td></tr></table>
*/
type RetrieveThirdPartyLoginPlatformCredentialV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveThirdPartyLoginPlatformCredentialV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients][%d] retrieveThirdPartyLoginPlatformCredentialV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *RetrieveThirdPartyLoginPlatformCredentialV3NotFound) ToJSONString() string {
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

func (o *RetrieveThirdPartyLoginPlatformCredentialV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveThirdPartyLoginPlatformCredentialV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveThirdPartyLoginPlatformCredentialV3InternalServerError creates a RetrieveThirdPartyLoginPlatformCredentialV3InternalServerError with default headers values
func NewRetrieveThirdPartyLoginPlatformCredentialV3InternalServerError() *RetrieveThirdPartyLoginPlatformCredentialV3InternalServerError {
	return &RetrieveThirdPartyLoginPlatformCredentialV3InternalServerError{}
}

/*RetrieveThirdPartyLoginPlatformCredentialV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type RetrieveThirdPartyLoginPlatformCredentialV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RetrieveThirdPartyLoginPlatformCredentialV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients][%d] retrieveThirdPartyLoginPlatformCredentialV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *RetrieveThirdPartyLoginPlatformCredentialV3InternalServerError) ToJSONString() string {
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

func (o *RetrieveThirdPartyLoginPlatformCredentialV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RetrieveThirdPartyLoginPlatformCredentialV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
