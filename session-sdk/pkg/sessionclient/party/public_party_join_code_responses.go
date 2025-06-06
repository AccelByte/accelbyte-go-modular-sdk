// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package party

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclientmodels"
)

type PublicPartyJoinCodeResponse struct {
	sessionclientmodels.ApiResponse
	Data *sessionclientmodels.ApimodelsPartySessionResponse

	Error400 *sessionclientmodels.ResponseError
	Error401 *sessionclientmodels.ResponseError
	Error403 *sessionclientmodels.ResponseError
	Error404 *sessionclientmodels.ResponseError
	Error500 *sessionclientmodels.ResponseError
}

func (m *PublicPartyJoinCodeResponse) Unpack() (*sessionclientmodels.ApimodelsPartySessionResponse, *sessionclientmodels.ApiError) {
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
			return nil, &sessionclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// PublicPartyJoinCodeReader is a Reader for the PublicPartyJoinCode structure.
type PublicPartyJoinCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicPartyJoinCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicPartyJoinCodeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicPartyJoinCodeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicPartyJoinCodeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicPartyJoinCodeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicPartyJoinCodeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicPartyJoinCodeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /session/v1/public/namespaces/{namespace}/parties/users/me/join/code returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicPartyJoinCodeOK creates a PublicPartyJoinCodeOK with default headers values
func NewPublicPartyJoinCodeOK() *PublicPartyJoinCodeOK {
	return &PublicPartyJoinCodeOK{}
}

/*PublicPartyJoinCodeOK handles this case with default header values.

  OK
*/
type PublicPartyJoinCodeOK struct {
	Payload *sessionclientmodels.ApimodelsPartySessionResponse
}

func (o *PublicPartyJoinCodeOK) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/users/me/join/code][%d] publicPartyJoinCodeOK  %+v", 200, o.ToJSONString())
}

func (o *PublicPartyJoinCodeOK) ToJSONString() string {
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

func (o *PublicPartyJoinCodeOK) GetPayload() *sessionclientmodels.ApimodelsPartySessionResponse {
	return o.Payload
}

func (o *PublicPartyJoinCodeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ApimodelsPartySessionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicPartyJoinCodeBadRequest creates a PublicPartyJoinCodeBadRequest with default headers values
func NewPublicPartyJoinCodeBadRequest() *PublicPartyJoinCodeBadRequest {
	return &PublicPartyJoinCodeBadRequest{}
}

/*PublicPartyJoinCodeBadRequest handles this case with default header values.

  Bad Request
*/
type PublicPartyJoinCodeBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPartyJoinCodeBadRequest) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/users/me/join/code][%d] publicPartyJoinCodeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicPartyJoinCodeBadRequest) ToJSONString() string {
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

func (o *PublicPartyJoinCodeBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPartyJoinCodeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicPartyJoinCodeUnauthorized creates a PublicPartyJoinCodeUnauthorized with default headers values
func NewPublicPartyJoinCodeUnauthorized() *PublicPartyJoinCodeUnauthorized {
	return &PublicPartyJoinCodeUnauthorized{}
}

/*PublicPartyJoinCodeUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicPartyJoinCodeUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPartyJoinCodeUnauthorized) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/users/me/join/code][%d] publicPartyJoinCodeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicPartyJoinCodeUnauthorized) ToJSONString() string {
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

func (o *PublicPartyJoinCodeUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPartyJoinCodeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicPartyJoinCodeForbidden creates a PublicPartyJoinCodeForbidden with default headers values
func NewPublicPartyJoinCodeForbidden() *PublicPartyJoinCodeForbidden {
	return &PublicPartyJoinCodeForbidden{}
}

/*PublicPartyJoinCodeForbidden handles this case with default header values.

  Forbidden
*/
type PublicPartyJoinCodeForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPartyJoinCodeForbidden) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/users/me/join/code][%d] publicPartyJoinCodeForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicPartyJoinCodeForbidden) ToJSONString() string {
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

func (o *PublicPartyJoinCodeForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPartyJoinCodeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicPartyJoinCodeNotFound creates a PublicPartyJoinCodeNotFound with default headers values
func NewPublicPartyJoinCodeNotFound() *PublicPartyJoinCodeNotFound {
	return &PublicPartyJoinCodeNotFound{}
}

/*PublicPartyJoinCodeNotFound handles this case with default header values.

  Not Found
*/
type PublicPartyJoinCodeNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPartyJoinCodeNotFound) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/users/me/join/code][%d] publicPartyJoinCodeNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicPartyJoinCodeNotFound) ToJSONString() string {
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

func (o *PublicPartyJoinCodeNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPartyJoinCodeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicPartyJoinCodeInternalServerError creates a PublicPartyJoinCodeInternalServerError with default headers values
func NewPublicPartyJoinCodeInternalServerError() *PublicPartyJoinCodeInternalServerError {
	return &PublicPartyJoinCodeInternalServerError{}
}

/*PublicPartyJoinCodeInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicPartyJoinCodeInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicPartyJoinCodeInternalServerError) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/parties/users/me/join/code][%d] publicPartyJoinCodeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicPartyJoinCodeInternalServerError) ToJSONString() string {
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

func (o *PublicPartyJoinCodeInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicPartyJoinCodeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
