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

type PublicUpdatePasswordV2Response struct {
	iamclientmodels.ApiResponse

	Error400 string
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 string
	Error500 string
}

func (m *PublicUpdatePasswordV2Response) Unpack() *iamclientmodels.ApiError {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 400:
			return &iamclientmodels.ApiError{Code: "400", Message: m.Error400}

		case 401:
			e, err := m.Error401.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 403:
			e, err := m.Error403.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 404:
			return &iamclientmodels.ApiError{Code: "404", Message: m.Error404}

		case 500:
			return &iamclientmodels.ApiError{Code: "500", Message: m.Error500}

		default:
			return &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// PublicUpdatePasswordV2Reader is a Reader for the PublicUpdatePasswordV2 structure.
type PublicUpdatePasswordV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpdatePasswordV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicUpdatePasswordV2NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUpdatePasswordV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUpdatePasswordV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicUpdatePasswordV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUpdatePasswordV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicUpdatePasswordV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/v2/public/namespaces/{namespace}/users/{userId}/password returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpdatePasswordV2NoContent creates a PublicUpdatePasswordV2NoContent with default headers values
func NewPublicUpdatePasswordV2NoContent() *PublicUpdatePasswordV2NoContent {
	return &PublicUpdatePasswordV2NoContent{}
}

/*PublicUpdatePasswordV2NoContent handles this case with default header values.

  Operation succeeded
*/
type PublicUpdatePasswordV2NoContent struct {
}

func (o *PublicUpdatePasswordV2NoContent) Error() string {
	return fmt.Sprintf("[PUT /iam/v2/public/namespaces/{namespace}/users/{userId}/password][%d] publicUpdatePasswordV2NoContent ", 204)
}

func (o *PublicUpdatePasswordV2NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicUpdatePasswordV2BadRequest creates a PublicUpdatePasswordV2BadRequest with default headers values
func NewPublicUpdatePasswordV2BadRequest() *PublicUpdatePasswordV2BadRequest {
	return &PublicUpdatePasswordV2BadRequest{}
}

/*PublicUpdatePasswordV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>10142</td><td>new password cannot be same with original</td></tr><tr><td>10143</td><td>password not match</td></tr></table>
*/
type PublicUpdatePasswordV2BadRequest struct {
}

func (o *PublicUpdatePasswordV2BadRequest) Error() string {
	return fmt.Sprintf("[PUT /iam/v2/public/namespaces/{namespace}/users/{userId}/password][%d] publicUpdatePasswordV2BadRequest ", 400)
}

func (o *PublicUpdatePasswordV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicUpdatePasswordV2Unauthorized creates a PublicUpdatePasswordV2Unauthorized with default headers values
func NewPublicUpdatePasswordV2Unauthorized() *PublicUpdatePasswordV2Unauthorized {
	return &PublicUpdatePasswordV2Unauthorized{}
}

/*PublicUpdatePasswordV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicUpdatePasswordV2Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpdatePasswordV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/v2/public/namespaces/{namespace}/users/{userId}/password][%d] publicUpdatePasswordV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUpdatePasswordV2Unauthorized) ToJSONString() string {
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

func (o *PublicUpdatePasswordV2Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpdatePasswordV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdatePasswordV2Forbidden creates a PublicUpdatePasswordV2Forbidden with default headers values
func NewPublicUpdatePasswordV2Forbidden() *PublicUpdatePasswordV2Forbidden {
	return &PublicUpdatePasswordV2Forbidden{}
}

/*PublicUpdatePasswordV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicUpdatePasswordV2Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicUpdatePasswordV2Forbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/v2/public/namespaces/{namespace}/users/{userId}/password][%d] publicUpdatePasswordV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicUpdatePasswordV2Forbidden) ToJSONString() string {
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

func (o *PublicUpdatePasswordV2Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicUpdatePasswordV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdatePasswordV2NotFound creates a PublicUpdatePasswordV2NotFound with default headers values
func NewPublicUpdatePasswordV2NotFound() *PublicUpdatePasswordV2NotFound {
	return &PublicUpdatePasswordV2NotFound{}
}

/*PublicUpdatePasswordV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicUpdatePasswordV2NotFound struct {
}

func (o *PublicUpdatePasswordV2NotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/v2/public/namespaces/{namespace}/users/{userId}/password][%d] publicUpdatePasswordV2NotFound ", 404)
}

func (o *PublicUpdatePasswordV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicUpdatePasswordV2InternalServerError creates a PublicUpdatePasswordV2InternalServerError with default headers values
func NewPublicUpdatePasswordV2InternalServerError() *PublicUpdatePasswordV2InternalServerError {
	return &PublicUpdatePasswordV2InternalServerError{}
}

/*PublicUpdatePasswordV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicUpdatePasswordV2InternalServerError struct {
}

func (o *PublicUpdatePasswordV2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /iam/v2/public/namespaces/{namespace}/users/{userId}/password][%d] publicUpdatePasswordV2InternalServerError ", 500)
}

func (o *PublicUpdatePasswordV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
