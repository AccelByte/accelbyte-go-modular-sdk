// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package anonymization

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

type AdminAnonymizeUserAchievementResponse struct {
	achievementclientmodels.ApiResponse

	Error401 *achievementclientmodels.ResponseError
	Error500 *achievementclientmodels.ResponseError
}

func (m *AdminAnonymizeUserAchievementResponse) Unpack() *achievementclientmodels.ApiError {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 401:
			e, err := m.Error401.TranslateToApiError()
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

// AdminAnonymizeUserAchievementReader is a Reader for the AdminAnonymizeUserAchievement structure.
type AdminAnonymizeUserAchievementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminAnonymizeUserAchievementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminAnonymizeUserAchievementNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminAnonymizeUserAchievementUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminAnonymizeUserAchievementInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /achievement/v1/admin/namespaces/{namespace}/users/{userId}/anonymization/achievements returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminAnonymizeUserAchievementNoContent creates a AdminAnonymizeUserAchievementNoContent with default headers values
func NewAdminAnonymizeUserAchievementNoContent() *AdminAnonymizeUserAchievementNoContent {
	return &AdminAnonymizeUserAchievementNoContent{}
}

/*AdminAnonymizeUserAchievementNoContent handles this case with default header values.

  No Content
*/
type AdminAnonymizeUserAchievementNoContent struct {
}

func (o *AdminAnonymizeUserAchievementNoContent) Error() string {
	return fmt.Sprintf("[DELETE /achievement/v1/admin/namespaces/{namespace}/users/{userId}/anonymization/achievements][%d] adminAnonymizeUserAchievementNoContent ", 204)
}

func (o *AdminAnonymizeUserAchievementNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminAnonymizeUserAchievementUnauthorized creates a AdminAnonymizeUserAchievementUnauthorized with default headers values
func NewAdminAnonymizeUserAchievementUnauthorized() *AdminAnonymizeUserAchievementUnauthorized {
	return &AdminAnonymizeUserAchievementUnauthorized{}
}

/*AdminAnonymizeUserAchievementUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminAnonymizeUserAchievementUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminAnonymizeUserAchievementUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /achievement/v1/admin/namespaces/{namespace}/users/{userId}/anonymization/achievements][%d] adminAnonymizeUserAchievementUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminAnonymizeUserAchievementUnauthorized) ToJSONString() string {
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

func (o *AdminAnonymizeUserAchievementUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminAnonymizeUserAchievementUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAnonymizeUserAchievementInternalServerError creates a AdminAnonymizeUserAchievementInternalServerError with default headers values
func NewAdminAnonymizeUserAchievementInternalServerError() *AdminAnonymizeUserAchievementInternalServerError {
	return &AdminAnonymizeUserAchievementInternalServerError{}
}

/*AdminAnonymizeUserAchievementInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminAnonymizeUserAchievementInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminAnonymizeUserAchievementInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /achievement/v1/admin/namespaces/{namespace}/users/{userId}/anonymization/achievements][%d] adminAnonymizeUserAchievementInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminAnonymizeUserAchievementInternalServerError) ToJSONString() string {
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

func (o *AdminAnonymizeUserAchievementInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminAnonymizeUserAchievementInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
