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

type AdminUnlockAchievementResponse struct {
	achievementclientmodels.ApiResponse

	Error400 *achievementclientmodels.ResponseError
	Error401 *achievementclientmodels.ResponseError
	Error404 *achievementclientmodels.ResponseError
	Error422 *achievementclientmodels.ResponseError
	Error500 *achievementclientmodels.ResponseError
}

func (m *AdminUnlockAchievementResponse) Unpack() *achievementclientmodels.ApiError {
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

// AdminUnlockAchievementReader is a Reader for the AdminUnlockAchievement structure.
type AdminUnlockAchievementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUnlockAchievementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminUnlockAchievementNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUnlockAchievementBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUnlockAchievementUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUnlockAchievementNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewAdminUnlockAchievementUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUnlockAchievementInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/unlock returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUnlockAchievementNoContent creates a AdminUnlockAchievementNoContent with default headers values
func NewAdminUnlockAchievementNoContent() *AdminUnlockAchievementNoContent {
	return &AdminUnlockAchievementNoContent{}
}

/*AdminUnlockAchievementNoContent handles this case with default header values.

  No Content
*/
type AdminUnlockAchievementNoContent struct {
}

func (o *AdminUnlockAchievementNoContent) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/unlock][%d] adminUnlockAchievementNoContent ", 204)
}

func (o *AdminUnlockAchievementNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminUnlockAchievementBadRequest creates a AdminUnlockAchievementBadRequest with default headers values
func NewAdminUnlockAchievementBadRequest() *AdminUnlockAchievementBadRequest {
	return &AdminUnlockAchievementBadRequest{}
}

/*AdminUnlockAchievementBadRequest handles this case with default header values.

  Bad Request
*/
type AdminUnlockAchievementBadRequest struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminUnlockAchievementBadRequest) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/unlock][%d] adminUnlockAchievementBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUnlockAchievementBadRequest) ToJSONString() string {
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

func (o *AdminUnlockAchievementBadRequest) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUnlockAchievementBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUnlockAchievementUnauthorized creates a AdminUnlockAchievementUnauthorized with default headers values
func NewAdminUnlockAchievementUnauthorized() *AdminUnlockAchievementUnauthorized {
	return &AdminUnlockAchievementUnauthorized{}
}

/*AdminUnlockAchievementUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUnlockAchievementUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminUnlockAchievementUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/unlock][%d] adminUnlockAchievementUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUnlockAchievementUnauthorized) ToJSONString() string {
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

func (o *AdminUnlockAchievementUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUnlockAchievementUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUnlockAchievementNotFound creates a AdminUnlockAchievementNotFound with default headers values
func NewAdminUnlockAchievementNotFound() *AdminUnlockAchievementNotFound {
	return &AdminUnlockAchievementNotFound{}
}

/*AdminUnlockAchievementNotFound handles this case with default header values.

  Not Found
*/
type AdminUnlockAchievementNotFound struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminUnlockAchievementNotFound) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/unlock][%d] adminUnlockAchievementNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUnlockAchievementNotFound) ToJSONString() string {
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

func (o *AdminUnlockAchievementNotFound) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUnlockAchievementNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUnlockAchievementUnprocessableEntity creates a AdminUnlockAchievementUnprocessableEntity with default headers values
func NewAdminUnlockAchievementUnprocessableEntity() *AdminUnlockAchievementUnprocessableEntity {
	return &AdminUnlockAchievementUnprocessableEntity{}
}

/*AdminUnlockAchievementUnprocessableEntity handles this case with default header values.

  Unprocessable Entity
*/
type AdminUnlockAchievementUnprocessableEntity struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminUnlockAchievementUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/unlock][%d] adminUnlockAchievementUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *AdminUnlockAchievementUnprocessableEntity) ToJSONString() string {
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

func (o *AdminUnlockAchievementUnprocessableEntity) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUnlockAchievementUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUnlockAchievementInternalServerError creates a AdminUnlockAchievementInternalServerError with default headers values
func NewAdminUnlockAchievementInternalServerError() *AdminUnlockAchievementInternalServerError {
	return &AdminUnlockAchievementInternalServerError{}
}

/*AdminUnlockAchievementInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUnlockAchievementInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminUnlockAchievementInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/unlock][%d] adminUnlockAchievementInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUnlockAchievementInternalServerError) ToJSONString() string {
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

func (o *AdminUnlockAchievementInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUnlockAchievementInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
