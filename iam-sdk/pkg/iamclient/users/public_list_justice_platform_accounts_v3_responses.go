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

type PublicListJusticePlatformAccountsV3Response struct {
	iamclientmodels.ApiResponse
	Data []*iamclientmodels.ModelGetUserMappingV3

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 *iamclientmodels.RestErrorResponse
	Error500 *iamclientmodels.RestErrorResponse
}

func (m *PublicListJusticePlatformAccountsV3Response) Unpack() ([]*iamclientmodels.ModelGetUserMappingV3, *iamclientmodels.ApiError) {
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

// PublicListJusticePlatformAccountsV3Reader is a Reader for the PublicListJusticePlatformAccountsV3 structure.
type PublicListJusticePlatformAccountsV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicListJusticePlatformAccountsV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicListJusticePlatformAccountsV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicListJusticePlatformAccountsV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicListJusticePlatformAccountsV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicListJusticePlatformAccountsV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicListJusticePlatformAccountsV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicListJusticePlatformAccountsV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/justice returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicListJusticePlatformAccountsV3OK creates a PublicListJusticePlatformAccountsV3OK with default headers values
func NewPublicListJusticePlatformAccountsV3OK() *PublicListJusticePlatformAccountsV3OK {
	return &PublicListJusticePlatformAccountsV3OK{}
}

/*PublicListJusticePlatformAccountsV3OK handles this case with default header values.

  OK
*/
type PublicListJusticePlatformAccountsV3OK struct {
	Payload []*iamclientmodels.ModelGetUserMappingV3
}

func (o *PublicListJusticePlatformAccountsV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/justice][%d] publicListJusticePlatformAccountsV3OK  %+v", 200, o.ToJSONString())
}

func (o *PublicListJusticePlatformAccountsV3OK) ToJSONString() string {
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

func (o *PublicListJusticePlatformAccountsV3OK) GetPayload() []*iamclientmodels.ModelGetUserMappingV3 {
	return o.Payload
}

func (o *PublicListJusticePlatformAccountsV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListJusticePlatformAccountsV3BadRequest creates a PublicListJusticePlatformAccountsV3BadRequest with default headers values
func NewPublicListJusticePlatformAccountsV3BadRequest() *PublicListJusticePlatformAccountsV3BadRequest {
	return &PublicListJusticePlatformAccountsV3BadRequest{}
}

/*PublicListJusticePlatformAccountsV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20025</td><td>not a publisher user</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicListJusticePlatformAccountsV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicListJusticePlatformAccountsV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/justice][%d] publicListJusticePlatformAccountsV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicListJusticePlatformAccountsV3BadRequest) ToJSONString() string {
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

func (o *PublicListJusticePlatformAccountsV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicListJusticePlatformAccountsV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListJusticePlatformAccountsV3Unauthorized creates a PublicListJusticePlatformAccountsV3Unauthorized with default headers values
func NewPublicListJusticePlatformAccountsV3Unauthorized() *PublicListJusticePlatformAccountsV3Unauthorized {
	return &PublicListJusticePlatformAccountsV3Unauthorized{}
}

/*PublicListJusticePlatformAccountsV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicListJusticePlatformAccountsV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicListJusticePlatformAccountsV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/justice][%d] publicListJusticePlatformAccountsV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicListJusticePlatformAccountsV3Unauthorized) ToJSONString() string {
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

func (o *PublicListJusticePlatformAccountsV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicListJusticePlatformAccountsV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListJusticePlatformAccountsV3Forbidden creates a PublicListJusticePlatformAccountsV3Forbidden with default headers values
func NewPublicListJusticePlatformAccountsV3Forbidden() *PublicListJusticePlatformAccountsV3Forbidden {
	return &PublicListJusticePlatformAccountsV3Forbidden{}
}

/*PublicListJusticePlatformAccountsV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicListJusticePlatformAccountsV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicListJusticePlatformAccountsV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/justice][%d] publicListJusticePlatformAccountsV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicListJusticePlatformAccountsV3Forbidden) ToJSONString() string {
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

func (o *PublicListJusticePlatformAccountsV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicListJusticePlatformAccountsV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListJusticePlatformAccountsV3NotFound creates a PublicListJusticePlatformAccountsV3NotFound with default headers values
func NewPublicListJusticePlatformAccountsV3NotFound() *PublicListJusticePlatformAccountsV3NotFound {
	return &PublicListJusticePlatformAccountsV3NotFound{}
}

/*PublicListJusticePlatformAccountsV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicListJusticePlatformAccountsV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicListJusticePlatformAccountsV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/justice][%d] publicListJusticePlatformAccountsV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicListJusticePlatformAccountsV3NotFound) ToJSONString() string {
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

func (o *PublicListJusticePlatformAccountsV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicListJusticePlatformAccountsV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListJusticePlatformAccountsV3InternalServerError creates a PublicListJusticePlatformAccountsV3InternalServerError with default headers values
func NewPublicListJusticePlatformAccountsV3InternalServerError() *PublicListJusticePlatformAccountsV3InternalServerError {
	return &PublicListJusticePlatformAccountsV3InternalServerError{}
}

/*PublicListJusticePlatformAccountsV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicListJusticePlatformAccountsV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicListJusticePlatformAccountsV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/justice][%d] publicListJusticePlatformAccountsV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicListJusticePlatformAccountsV3InternalServerError) ToJSONString() string {
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

func (o *PublicListJusticePlatformAccountsV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicListJusticePlatformAccountsV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
