// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package game_session

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

type PublicGameSessionInviteResponse struct {
	sessionclientmodels.ApiResponse

	Error400 *sessionclientmodels.ResponseError
	Error401 *sessionclientmodels.ResponseError
	Error404 *sessionclientmodels.ResponseError
	Error500 *sessionclientmodels.ResponseError
}

func (m *PublicGameSessionInviteResponse) Unpack() *sessionclientmodels.ApiError {
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

// PublicGameSessionInviteReader is a Reader for the PublicGameSessionInvite structure.
type PublicGameSessionInviteReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGameSessionInviteReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewPublicGameSessionInviteCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 204:
		result := NewPublicGameSessionInviteNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGameSessionInviteBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGameSessionInviteUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGameSessionInviteNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGameSessionInviteInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/invite returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGameSessionInviteCreated creates a PublicGameSessionInviteCreated with default headers values
func NewPublicGameSessionInviteCreated() *PublicGameSessionInviteCreated {
	return &PublicGameSessionInviteCreated{}
}

/*PublicGameSessionInviteCreated handles this case with default header values.

  Created
*/
type PublicGameSessionInviteCreated struct {
}

func (o *PublicGameSessionInviteCreated) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/invite][%d] publicGameSessionInviteCreated ", 201)
}

func (o *PublicGameSessionInviteCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicGameSessionInviteNoContent creates a PublicGameSessionInviteNoContent with default headers values
func NewPublicGameSessionInviteNoContent() *PublicGameSessionInviteNoContent {
	return &PublicGameSessionInviteNoContent{}
}

/*PublicGameSessionInviteNoContent handles this case with default header values.

  No Content
*/
type PublicGameSessionInviteNoContent struct {
}

func (o *PublicGameSessionInviteNoContent) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/invite][%d] publicGameSessionInviteNoContent ", 204)
}

func (o *PublicGameSessionInviteNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicGameSessionInviteBadRequest creates a PublicGameSessionInviteBadRequest with default headers values
func NewPublicGameSessionInviteBadRequest() *PublicGameSessionInviteBadRequest {
	return &PublicGameSessionInviteBadRequest{}
}

/*PublicGameSessionInviteBadRequest handles this case with default header values.

  Bad Request
*/
type PublicGameSessionInviteBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGameSessionInviteBadRequest) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/invite][%d] publicGameSessionInviteBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGameSessionInviteBadRequest) ToJSONString() string {
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

func (o *PublicGameSessionInviteBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGameSessionInviteBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGameSessionInviteUnauthorized creates a PublicGameSessionInviteUnauthorized with default headers values
func NewPublicGameSessionInviteUnauthorized() *PublicGameSessionInviteUnauthorized {
	return &PublicGameSessionInviteUnauthorized{}
}

/*PublicGameSessionInviteUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGameSessionInviteUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGameSessionInviteUnauthorized) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/invite][%d] publicGameSessionInviteUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGameSessionInviteUnauthorized) ToJSONString() string {
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

func (o *PublicGameSessionInviteUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGameSessionInviteUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGameSessionInviteNotFound creates a PublicGameSessionInviteNotFound with default headers values
func NewPublicGameSessionInviteNotFound() *PublicGameSessionInviteNotFound {
	return &PublicGameSessionInviteNotFound{}
}

/*PublicGameSessionInviteNotFound handles this case with default header values.

  Not Found
*/
type PublicGameSessionInviteNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGameSessionInviteNotFound) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/invite][%d] publicGameSessionInviteNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGameSessionInviteNotFound) ToJSONString() string {
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

func (o *PublicGameSessionInviteNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGameSessionInviteNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGameSessionInviteInternalServerError creates a PublicGameSessionInviteInternalServerError with default headers values
func NewPublicGameSessionInviteInternalServerError() *PublicGameSessionInviteInternalServerError {
	return &PublicGameSessionInviteInternalServerError{}
}

/*PublicGameSessionInviteInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGameSessionInviteInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *PublicGameSessionInviteInternalServerError) Error() string {
	return fmt.Sprintf("[POST /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/invite][%d] publicGameSessionInviteInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGameSessionInviteInternalServerError) ToJSONString() string {
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

func (o *PublicGameSessionInviteInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGameSessionInviteInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
