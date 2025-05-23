// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package achievements

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

type AdminDeleteAchievementResponse struct {
	achievementclientmodels.ApiResponse

	Error400 *achievementclientmodels.ResponseError
	Error401 *achievementclientmodels.ResponseError
	Error404 *achievementclientmodels.ResponseError
	Error500 *achievementclientmodels.ResponseError
}

func (m *AdminDeleteAchievementResponse) Unpack() *achievementclientmodels.ApiError {
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
			return &achievementclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// AdminDeleteAchievementReader is a Reader for the AdminDeleteAchievement structure.
type AdminDeleteAchievementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteAchievementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteAchievementNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteAchievementBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteAchievementUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteAchievementNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteAchievementInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteAchievementNoContent creates a AdminDeleteAchievementNoContent with default headers values
func NewAdminDeleteAchievementNoContent() *AdminDeleteAchievementNoContent {
	return &AdminDeleteAchievementNoContent{}
}

/*AdminDeleteAchievementNoContent handles this case with default header values.

  No Content
*/
type AdminDeleteAchievementNoContent struct {
}

func (o *AdminDeleteAchievementNoContent) Error() string {
	return fmt.Sprintf("[DELETE /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}][%d] adminDeleteAchievementNoContent ", 204)
}

func (o *AdminDeleteAchievementNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteAchievementBadRequest creates a AdminDeleteAchievementBadRequest with default headers values
func NewAdminDeleteAchievementBadRequest() *AdminDeleteAchievementBadRequest {
	return &AdminDeleteAchievementBadRequest{}
}

/*AdminDeleteAchievementBadRequest handles this case with default header values.

  Bad Request
*/
type AdminDeleteAchievementBadRequest struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminDeleteAchievementBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}][%d] adminDeleteAchievementBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeleteAchievementBadRequest) ToJSONString() string {
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

func (o *AdminDeleteAchievementBadRequest) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteAchievementBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteAchievementUnauthorized creates a AdminDeleteAchievementUnauthorized with default headers values
func NewAdminDeleteAchievementUnauthorized() *AdminDeleteAchievementUnauthorized {
	return &AdminDeleteAchievementUnauthorized{}
}

/*AdminDeleteAchievementUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminDeleteAchievementUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminDeleteAchievementUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}][%d] adminDeleteAchievementUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteAchievementUnauthorized) ToJSONString() string {
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

func (o *AdminDeleteAchievementUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteAchievementUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteAchievementNotFound creates a AdminDeleteAchievementNotFound with default headers values
func NewAdminDeleteAchievementNotFound() *AdminDeleteAchievementNotFound {
	return &AdminDeleteAchievementNotFound{}
}

/*AdminDeleteAchievementNotFound handles this case with default header values.

  Not Found
*/
type AdminDeleteAchievementNotFound struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminDeleteAchievementNotFound) Error() string {
	return fmt.Sprintf("[DELETE /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}][%d] adminDeleteAchievementNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeleteAchievementNotFound) ToJSONString() string {
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

func (o *AdminDeleteAchievementNotFound) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteAchievementNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteAchievementInternalServerError creates a AdminDeleteAchievementInternalServerError with default headers values
func NewAdminDeleteAchievementInternalServerError() *AdminDeleteAchievementInternalServerError {
	return &AdminDeleteAchievementInternalServerError{}
}

/*AdminDeleteAchievementInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminDeleteAchievementInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminDeleteAchievementInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}][%d] adminDeleteAchievementInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteAchievementInternalServerError) ToJSONString() string {
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

func (o *AdminDeleteAchievementInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteAchievementInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
