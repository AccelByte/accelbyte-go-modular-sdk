// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_achievements

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/achievement-sdk/pkg/achievementclientmodels"
)

type PublicUnlockAchievementResponse struct {
	achievementclientmodels.ApiResponse

	Error400 *achievementclientmodels.ResponseError
	Error401 *achievementclientmodels.ResponseError
	Error404 *achievementclientmodels.ResponseError
	Error422 *achievementclientmodels.ResponseError
	Error500 *achievementclientmodels.ResponseError
}

func (m *PublicUnlockAchievementResponse) Unpack() *achievementclientmodels.ApiError {
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

		case 422:
			e, err := m.Error422.TranslateToApiError()
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
			return &achievementclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// PublicUnlockAchievementReader is a Reader for the PublicUnlockAchievement structure.
type PublicUnlockAchievementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUnlockAchievementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicUnlockAchievementNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUnlockAchievementBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUnlockAchievementUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUnlockAchievementNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPublicUnlockAchievementUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicUnlockAchievementInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/unlock returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUnlockAchievementNoContent creates a PublicUnlockAchievementNoContent with default headers values
func NewPublicUnlockAchievementNoContent() *PublicUnlockAchievementNoContent {
	return &PublicUnlockAchievementNoContent{}
}

/*PublicUnlockAchievementNoContent handles this case with default header values.

  No Content
*/
type PublicUnlockAchievementNoContent struct {
}

func (o *PublicUnlockAchievementNoContent) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/unlock][%d] publicUnlockAchievementNoContent ", 204)
}

func (o *PublicUnlockAchievementNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicUnlockAchievementBadRequest creates a PublicUnlockAchievementBadRequest with default headers values
func NewPublicUnlockAchievementBadRequest() *PublicUnlockAchievementBadRequest {
	return &PublicUnlockAchievementBadRequest{}
}

/*PublicUnlockAchievementBadRequest handles this case with default header values.

  Bad Request
*/
type PublicUnlockAchievementBadRequest struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicUnlockAchievementBadRequest) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/unlock][%d] publicUnlockAchievementBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUnlockAchievementBadRequest) ToJSONString() string {
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

func (o *PublicUnlockAchievementBadRequest) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUnlockAchievementBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUnlockAchievementUnauthorized creates a PublicUnlockAchievementUnauthorized with default headers values
func NewPublicUnlockAchievementUnauthorized() *PublicUnlockAchievementUnauthorized {
	return &PublicUnlockAchievementUnauthorized{}
}

/*PublicUnlockAchievementUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicUnlockAchievementUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicUnlockAchievementUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/unlock][%d] publicUnlockAchievementUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUnlockAchievementUnauthorized) ToJSONString() string {
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

func (o *PublicUnlockAchievementUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUnlockAchievementUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUnlockAchievementNotFound creates a PublicUnlockAchievementNotFound with default headers values
func NewPublicUnlockAchievementNotFound() *PublicUnlockAchievementNotFound {
	return &PublicUnlockAchievementNotFound{}
}

/*PublicUnlockAchievementNotFound handles this case with default header values.

  Not Found
*/
type PublicUnlockAchievementNotFound struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicUnlockAchievementNotFound) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/unlock][%d] publicUnlockAchievementNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicUnlockAchievementNotFound) ToJSONString() string {
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

func (o *PublicUnlockAchievementNotFound) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUnlockAchievementNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUnlockAchievementUnprocessableEntity creates a PublicUnlockAchievementUnprocessableEntity with default headers values
func NewPublicUnlockAchievementUnprocessableEntity() *PublicUnlockAchievementUnprocessableEntity {
	return &PublicUnlockAchievementUnprocessableEntity{}
}

/*PublicUnlockAchievementUnprocessableEntity handles this case with default header values.

  Unprocessable Entity
*/
type PublicUnlockAchievementUnprocessableEntity struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicUnlockAchievementUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/unlock][%d] publicUnlockAchievementUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *PublicUnlockAchievementUnprocessableEntity) ToJSONString() string {
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

func (o *PublicUnlockAchievementUnprocessableEntity) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUnlockAchievementUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUnlockAchievementInternalServerError creates a PublicUnlockAchievementInternalServerError with default headers values
func NewPublicUnlockAchievementInternalServerError() *PublicUnlockAchievementInternalServerError {
	return &PublicUnlockAchievementInternalServerError{}
}

/*PublicUnlockAchievementInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicUnlockAchievementInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicUnlockAchievementInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/unlock][%d] publicUnlockAchievementInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicUnlockAchievementInternalServerError) ToJSONString() string {
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

func (o *PublicUnlockAchievementInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUnlockAchievementInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
