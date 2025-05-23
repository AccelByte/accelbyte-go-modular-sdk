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

type AdminUpgradeHeadlessAccountV3Response struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.ModelUserResponseV3

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 *iamclientmodels.RestErrorResponse
	Error409 *iamclientmodels.RestErrorResponse
	Error500 *iamclientmodels.RestErrorResponse
}

func (m *AdminUpgradeHeadlessAccountV3Response) Unpack() (*iamclientmodels.ModelUserResponseV3, *iamclientmodels.ApiError) {
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

// AdminUpgradeHeadlessAccountV3Reader is a Reader for the AdminUpgradeHeadlessAccountV3 structure.
type AdminUpgradeHeadlessAccountV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpgradeHeadlessAccountV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpgradeHeadlessAccountV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpgradeHeadlessAccountV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpgradeHeadlessAccountV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpgradeHeadlessAccountV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpgradeHeadlessAccountV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminUpgradeHeadlessAccountV3Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpgradeHeadlessAccountV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/headless/code/verify returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpgradeHeadlessAccountV3OK creates a AdminUpgradeHeadlessAccountV3OK with default headers values
func NewAdminUpgradeHeadlessAccountV3OK() *AdminUpgradeHeadlessAccountV3OK {
	return &AdminUpgradeHeadlessAccountV3OK{}
}

/*AdminUpgradeHeadlessAccountV3OK handles this case with default header values.

  OK
*/
type AdminUpgradeHeadlessAccountV3OK struct {
	Payload *iamclientmodels.ModelUserResponseV3
}

func (o *AdminUpgradeHeadlessAccountV3OK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/headless/code/verify][%d] adminUpgradeHeadlessAccountV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpgradeHeadlessAccountV3OK) ToJSONString() string {
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

func (o *AdminUpgradeHeadlessAccountV3OK) GetPayload() *iamclientmodels.ModelUserResponseV3 {
	return o.Payload
}

func (o *AdminUpgradeHeadlessAccountV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpgradeHeadlessAccountV3BadRequest creates a AdminUpgradeHeadlessAccountV3BadRequest with default headers values
func NewAdminUpgradeHeadlessAccountV3BadRequest() *AdminUpgradeHeadlessAccountV3BadRequest {
	return &AdminUpgradeHeadlessAccountV3BadRequest{}
}

/*AdminUpgradeHeadlessAccountV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>10155</td><td>country is not defined</td></tr><tr><td>10130</td><td>user under age</td></tr></table>
*/
type AdminUpgradeHeadlessAccountV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpgradeHeadlessAccountV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/headless/code/verify][%d] adminUpgradeHeadlessAccountV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpgradeHeadlessAccountV3BadRequest) ToJSONString() string {
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

func (o *AdminUpgradeHeadlessAccountV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpgradeHeadlessAccountV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpgradeHeadlessAccountV3Unauthorized creates a AdminUpgradeHeadlessAccountV3Unauthorized with default headers values
func NewAdminUpgradeHeadlessAccountV3Unauthorized() *AdminUpgradeHeadlessAccountV3Unauthorized {
	return &AdminUpgradeHeadlessAccountV3Unauthorized{}
}

/*AdminUpgradeHeadlessAccountV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUpgradeHeadlessAccountV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpgradeHeadlessAccountV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/headless/code/verify][%d] adminUpgradeHeadlessAccountV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpgradeHeadlessAccountV3Unauthorized) ToJSONString() string {
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

func (o *AdminUpgradeHeadlessAccountV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpgradeHeadlessAccountV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpgradeHeadlessAccountV3Forbidden creates a AdminUpgradeHeadlessAccountV3Forbidden with default headers values
func NewAdminUpgradeHeadlessAccountV3Forbidden() *AdminUpgradeHeadlessAccountV3Forbidden {
	return &AdminUpgradeHeadlessAccountV3Forbidden{}
}

/*AdminUpgradeHeadlessAccountV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>10152</td><td>verification code not found</td></tr><tr><td>10137</td><td>code is expired</td></tr><tr><td>10136</td><td>code is either been used or not valid anymore</td></tr><tr><td>10138</td><td>code not match</td></tr><tr><td>10149</td><td>verification contact type doesn't match</td></tr><tr><td>10148</td><td>verification code context doesn't match the required context</td></tr><tr><td>10213</td><td>country is blocked</td></tr></table>
*/
type AdminUpgradeHeadlessAccountV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpgradeHeadlessAccountV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/headless/code/verify][%d] adminUpgradeHeadlessAccountV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpgradeHeadlessAccountV3Forbidden) ToJSONString() string {
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

func (o *AdminUpgradeHeadlessAccountV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpgradeHeadlessAccountV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpgradeHeadlessAccountV3NotFound creates a AdminUpgradeHeadlessAccountV3NotFound with default headers values
func NewAdminUpgradeHeadlessAccountV3NotFound() *AdminUpgradeHeadlessAccountV3NotFound {
	return &AdminUpgradeHeadlessAccountV3NotFound{}
}

/*AdminUpgradeHeadlessAccountV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>10154</td><td>country not found</td></tr></table>
*/
type AdminUpgradeHeadlessAccountV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpgradeHeadlessAccountV3NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/headless/code/verify][%d] adminUpgradeHeadlessAccountV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpgradeHeadlessAccountV3NotFound) ToJSONString() string {
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

func (o *AdminUpgradeHeadlessAccountV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpgradeHeadlessAccountV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpgradeHeadlessAccountV3Conflict creates a AdminUpgradeHeadlessAccountV3Conflict with default headers values
func NewAdminUpgradeHeadlessAccountV3Conflict() *AdminUpgradeHeadlessAccountV3Conflict {
	return &AdminUpgradeHeadlessAccountV3Conflict{}
}

/*AdminUpgradeHeadlessAccountV3Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10153</td><td>user exist</td></tr><tr><td>10170</td><td>account is already a full account</td></tr><tr><td>10222</td><td>unique display name already exists</td></tr></table>
*/
type AdminUpgradeHeadlessAccountV3Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpgradeHeadlessAccountV3Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/headless/code/verify][%d] adminUpgradeHeadlessAccountV3Conflict  %+v", 409, o.ToJSONString())
}

func (o *AdminUpgradeHeadlessAccountV3Conflict) ToJSONString() string {
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

func (o *AdminUpgradeHeadlessAccountV3Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpgradeHeadlessAccountV3Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpgradeHeadlessAccountV3InternalServerError creates a AdminUpgradeHeadlessAccountV3InternalServerError with default headers values
func NewAdminUpgradeHeadlessAccountV3InternalServerError() *AdminUpgradeHeadlessAccountV3InternalServerError {
	return &AdminUpgradeHeadlessAccountV3InternalServerError{}
}

/*AdminUpgradeHeadlessAccountV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminUpgradeHeadlessAccountV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpgradeHeadlessAccountV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/headless/code/verify][%d] adminUpgradeHeadlessAccountV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpgradeHeadlessAccountV3InternalServerError) ToJSONString() string {
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

func (o *AdminUpgradeHeadlessAccountV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpgradeHeadlessAccountV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
