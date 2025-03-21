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

type AdminListUserAchievementsResponse struct {
	achievementclientmodels.ApiResponse
	Data *achievementclientmodels.ModelsPaginatedUserAchievementResponse

	Error400 *achievementclientmodels.ResponseError
	Error401 *achievementclientmodels.ResponseError
	Error404 *achievementclientmodels.ResponseError
	Error500 *achievementclientmodels.ResponseError
}

func (m *AdminListUserAchievementsResponse) Unpack() (*achievementclientmodels.ModelsPaginatedUserAchievementResponse, *achievementclientmodels.ApiError) {
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
			return nil, &achievementclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// AdminListUserAchievementsReader is a Reader for the AdminListUserAchievements structure.
type AdminListUserAchievementsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListUserAchievementsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListUserAchievementsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminListUserAchievementsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminListUserAchievementsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminListUserAchievementsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminListUserAchievementsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListUserAchievementsOK creates a AdminListUserAchievementsOK with default headers values
func NewAdminListUserAchievementsOK() *AdminListUserAchievementsOK {
	return &AdminListUserAchievementsOK{}
}

/*AdminListUserAchievementsOK handles this case with default header values.

  OK
*/
type AdminListUserAchievementsOK struct {
	Payload *achievementclientmodels.ModelsPaginatedUserAchievementResponse
}

func (o *AdminListUserAchievementsOK) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements][%d] adminListUserAchievementsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminListUserAchievementsOK) ToJSONString() string {
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

func (o *AdminListUserAchievementsOK) GetPayload() *achievementclientmodels.ModelsPaginatedUserAchievementResponse {
	return o.Payload
}

func (o *AdminListUserAchievementsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ModelsPaginatedUserAchievementResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminListUserAchievementsBadRequest creates a AdminListUserAchievementsBadRequest with default headers values
func NewAdminListUserAchievementsBadRequest() *AdminListUserAchievementsBadRequest {
	return &AdminListUserAchievementsBadRequest{}
}

/*AdminListUserAchievementsBadRequest handles this case with default header values.

  Bad Request
*/
type AdminListUserAchievementsBadRequest struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminListUserAchievementsBadRequest) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements][%d] adminListUserAchievementsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminListUserAchievementsBadRequest) ToJSONString() string {
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

func (o *AdminListUserAchievementsBadRequest) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListUserAchievementsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListUserAchievementsUnauthorized creates a AdminListUserAchievementsUnauthorized with default headers values
func NewAdminListUserAchievementsUnauthorized() *AdminListUserAchievementsUnauthorized {
	return &AdminListUserAchievementsUnauthorized{}
}

/*AdminListUserAchievementsUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminListUserAchievementsUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminListUserAchievementsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements][%d] adminListUserAchievementsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminListUserAchievementsUnauthorized) ToJSONString() string {
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

func (o *AdminListUserAchievementsUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListUserAchievementsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListUserAchievementsNotFound creates a AdminListUserAchievementsNotFound with default headers values
func NewAdminListUserAchievementsNotFound() *AdminListUserAchievementsNotFound {
	return &AdminListUserAchievementsNotFound{}
}

/*AdminListUserAchievementsNotFound handles this case with default header values.

  Not Found
*/
type AdminListUserAchievementsNotFound struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminListUserAchievementsNotFound) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements][%d] adminListUserAchievementsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminListUserAchievementsNotFound) ToJSONString() string {
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

func (o *AdminListUserAchievementsNotFound) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListUserAchievementsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListUserAchievementsInternalServerError creates a AdminListUserAchievementsInternalServerError with default headers values
func NewAdminListUserAchievementsInternalServerError() *AdminListUserAchievementsInternalServerError {
	return &AdminListUserAchievementsInternalServerError{}
}

/*AdminListUserAchievementsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminListUserAchievementsInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminListUserAchievementsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements][%d] adminListUserAchievementsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminListUserAchievementsInternalServerError) ToJSONString() string {
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

func (o *AdminListUserAchievementsInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListUserAchievementsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
