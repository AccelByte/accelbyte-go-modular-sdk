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

type CreateUserFromInvitationV4Response struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.AccountCreateUserResponseV4

	Error400 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 *iamclientmodels.RestErrorResponse
	Error409 *iamclientmodels.RestErrorResponse
	Error500 *iamclientmodels.RestErrorResponse
}

func (m *CreateUserFromInvitationV4Response) Unpack() (*iamclientmodels.AccountCreateUserResponseV4, *iamclientmodels.ApiError) {
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

// CreateUserFromInvitationV4Reader is a Reader for the CreateUserFromInvitationV4 structure.
type CreateUserFromInvitationV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateUserFromInvitationV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateUserFromInvitationV4Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateUserFromInvitationV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateUserFromInvitationV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateUserFromInvitationV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateUserFromInvitationV4Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateUserFromInvitationV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/public/namespaces/{namespace}/users/invite/{invitationId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateUserFromInvitationV4Created creates a CreateUserFromInvitationV4Created with default headers values
func NewCreateUserFromInvitationV4Created() *CreateUserFromInvitationV4Created {
	return &CreateUserFromInvitationV4Created{}
}

/*CreateUserFromInvitationV4Created handles this case with default header values.

  Created
*/
type CreateUserFromInvitationV4Created struct {
	Payload *iamclientmodels.AccountCreateUserResponseV4
}

func (o *CreateUserFromInvitationV4Created) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/invite/{invitationId}][%d] createUserFromInvitationV4Created  %+v", 201, o.ToJSONString())
}

func (o *CreateUserFromInvitationV4Created) ToJSONString() string {
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

func (o *CreateUserFromInvitationV4Created) GetPayload() *iamclientmodels.AccountCreateUserResponseV4 {
	return o.Payload
}

func (o *CreateUserFromInvitationV4Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.AccountCreateUserResponseV4)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateUserFromInvitationV4BadRequest creates a CreateUserFromInvitationV4BadRequest with default headers values
func NewCreateUserFromInvitationV4BadRequest() *CreateUserFromInvitationV4BadRequest {
	return &CreateUserFromInvitationV4BadRequest{}
}

/*CreateUserFromInvitationV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>10130</td><td>user under age</td></tr></table>
*/
type CreateUserFromInvitationV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *CreateUserFromInvitationV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/invite/{invitationId}][%d] createUserFromInvitationV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateUserFromInvitationV4BadRequest) ToJSONString() string {
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

func (o *CreateUserFromInvitationV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *CreateUserFromInvitationV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateUserFromInvitationV4Forbidden creates a CreateUserFromInvitationV4Forbidden with default headers values
func NewCreateUserFromInvitationV4Forbidden() *CreateUserFromInvitationV4Forbidden {
	return &CreateUserFromInvitationV4Forbidden{}
}

/*CreateUserFromInvitationV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20003</td><td>forbidden access</td></tr><tr><td>10213</td><td>country is blocked</td></tr></table>
*/
type CreateUserFromInvitationV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *CreateUserFromInvitationV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/invite/{invitationId}][%d] createUserFromInvitationV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateUserFromInvitationV4Forbidden) ToJSONString() string {
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

func (o *CreateUserFromInvitationV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *CreateUserFromInvitationV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateUserFromInvitationV4NotFound creates a CreateUserFromInvitationV4NotFound with default headers values
func NewCreateUserFromInvitationV4NotFound() *CreateUserFromInvitationV4NotFound {
	return &CreateUserFromInvitationV4NotFound{}
}

/*CreateUserFromInvitationV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10180</td><td>admin invitation not found or expired</td></tr><tr><td>10154</td><td>country not found</td></tr></table>
*/
type CreateUserFromInvitationV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *CreateUserFromInvitationV4NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/invite/{invitationId}][%d] createUserFromInvitationV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateUserFromInvitationV4NotFound) ToJSONString() string {
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

func (o *CreateUserFromInvitationV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *CreateUserFromInvitationV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateUserFromInvitationV4Conflict creates a CreateUserFromInvitationV4Conflict with default headers values
func NewCreateUserFromInvitationV4Conflict() *CreateUserFromInvitationV4Conflict {
	return &CreateUserFromInvitationV4Conflict{}
}

/*CreateUserFromInvitationV4Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10222</td><td>unique display name already exists</td></tr></table>
*/
type CreateUserFromInvitationV4Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *CreateUserFromInvitationV4Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/invite/{invitationId}][%d] createUserFromInvitationV4Conflict  %+v", 409, o.ToJSONString())
}

func (o *CreateUserFromInvitationV4Conflict) ToJSONString() string {
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

func (o *CreateUserFromInvitationV4Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *CreateUserFromInvitationV4Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateUserFromInvitationV4InternalServerError creates a CreateUserFromInvitationV4InternalServerError with default headers values
func NewCreateUserFromInvitationV4InternalServerError() *CreateUserFromInvitationV4InternalServerError {
	return &CreateUserFromInvitationV4InternalServerError{}
}

/*CreateUserFromInvitationV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type CreateUserFromInvitationV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *CreateUserFromInvitationV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/users/invite/{invitationId}][%d] createUserFromInvitationV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateUserFromInvitationV4InternalServerError) ToJSONString() string {
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

func (o *CreateUserFromInvitationV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *CreateUserFromInvitationV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
