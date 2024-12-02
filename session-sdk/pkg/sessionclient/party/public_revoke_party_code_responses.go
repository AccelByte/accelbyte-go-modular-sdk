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

type PublicRevokePartyCodeResponse struct {
	sessionclientmodels.ApiResponse

	Error400 *sessionclientmodels.ResponseError
	Error401 *sessionclientmodels.ResponseError
	Error403 *sessionclientmodels.ResponseError
	Error404 *sessionclientmodels.ResponseError
	Error500 *sessionclientmodels.ResponseError
}

func (m *PublicRevokePartyCodeResponse) Unpack() *sessionclientmodels.ApiError {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 400:
			e, err := m.Error400.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

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
			e, err := m.Error404.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 500:
			e, err := m.Error500.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		default:
			return &sessionclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// PublicRevokePartyCodeReader is a Reader for the PublicRevokePartyCode structure.
type PublicRevokePartyCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicRevokePartyCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicRevokePartyCodeNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicRevokePartyCodeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicRevokePartyCodeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicRevokePartyCodeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicRevokePartyCodeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicRevokePartyCodeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /session/v1/public/namespaces/{namespace}/parties/{partyId}/code returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicRevokePartyCodeNoContent creates a PublicRevokePartyCodeNoContent with default headers values
func NewPublicRevokePartyCodeNoContent() *PublicRevokePartyCodeNoContent {
	return &PublicRevokePartyCodeNoContent{}
}

/*PublicRevokePartyCodeNoContent handles this case with default header values.

  No Content
*/
type PublicRevokePartyCodeNoContent struct {
}

func (o *PublicRevokePartyCodeNoContent) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/parties/{partyId}/code][%d] publicRevokePartyCodeNoContent ", 204)
}

func (o *PublicRevokePartyCodeNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicRevokePartyCodeBadRequest creates a PublicRevokePartyCodeBadRequest with default headers values
func NewPublicRevokePartyCodeBadRequest() *PublicRevokePartyCodeBadRequest {
	return &PublicRevokePartyCodeBadRequest{}
}

/*PublicRevokePartyCodeBadRequest handles this case with default header values.

  Bad Request
*/
type PublicRevokePartyCodeBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicRevokePartyCodeBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/parties/{partyId}/code][%d] publicRevokePartyCodeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicRevokePartyCodeBadRequest) ToJSONString() string {
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

func (o *PublicRevokePartyCodeBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicRevokePartyCodeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicRevokePartyCodeUnauthorized creates a PublicRevokePartyCodeUnauthorized with default headers values
func NewPublicRevokePartyCodeUnauthorized() *PublicRevokePartyCodeUnauthorized {
	return &PublicRevokePartyCodeUnauthorized{}
}

/*PublicRevokePartyCodeUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicRevokePartyCodeUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicRevokePartyCodeUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/parties/{partyId}/code][%d] publicRevokePartyCodeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicRevokePartyCodeUnauthorized) ToJSONString() string {
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

func (o *PublicRevokePartyCodeUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicRevokePartyCodeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicRevokePartyCodeForbidden creates a PublicRevokePartyCodeForbidden with default headers values
func NewPublicRevokePartyCodeForbidden() *PublicRevokePartyCodeForbidden {
	return &PublicRevokePartyCodeForbidden{}
}

/*PublicRevokePartyCodeForbidden handles this case with default header values.

  Forbidden
*/
type PublicRevokePartyCodeForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicRevokePartyCodeForbidden) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/parties/{partyId}/code][%d] publicRevokePartyCodeForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicRevokePartyCodeForbidden) ToJSONString() string {
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

func (o *PublicRevokePartyCodeForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicRevokePartyCodeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicRevokePartyCodeNotFound creates a PublicRevokePartyCodeNotFound with default headers values
func NewPublicRevokePartyCodeNotFound() *PublicRevokePartyCodeNotFound {
	return &PublicRevokePartyCodeNotFound{}
}

/*PublicRevokePartyCodeNotFound handles this case with default header values.

  Not Found
*/
type PublicRevokePartyCodeNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicRevokePartyCodeNotFound) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/parties/{partyId}/code][%d] publicRevokePartyCodeNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicRevokePartyCodeNotFound) ToJSONString() string {
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

func (o *PublicRevokePartyCodeNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicRevokePartyCodeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicRevokePartyCodeInternalServerError creates a PublicRevokePartyCodeInternalServerError with default headers values
func NewPublicRevokePartyCodeInternalServerError() *PublicRevokePartyCodeInternalServerError {
	return &PublicRevokePartyCodeInternalServerError{}
}

/*PublicRevokePartyCodeInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicRevokePartyCodeInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicRevokePartyCodeInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/public/namespaces/{namespace}/parties/{partyId}/code][%d] publicRevokePartyCodeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicRevokePartyCodeInternalServerError) ToJSONString() string {
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

func (o *PublicRevokePartyCodeInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicRevokePartyCodeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
