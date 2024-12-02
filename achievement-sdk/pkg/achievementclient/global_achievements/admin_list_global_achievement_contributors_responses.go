// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package global_achievements

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

type AdminListGlobalAchievementContributorsResponse struct {
	achievementclientmodels.ApiResponse
	Data *achievementclientmodels.ModelsPaginatedContributorResponse

	Error400 *achievementclientmodels.ResponseError
	Error401 *achievementclientmodels.ResponseError
	Error500 *achievementclientmodels.ResponseError
}

func (m *AdminListGlobalAchievementContributorsResponse) Unpack() (*achievementclientmodels.ModelsPaginatedContributorResponse, *achievementclientmodels.ApiError) {
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

// AdminListGlobalAchievementContributorsReader is a Reader for the AdminListGlobalAchievementContributors structure.
type AdminListGlobalAchievementContributorsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListGlobalAchievementContributorsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListGlobalAchievementContributorsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminListGlobalAchievementContributorsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminListGlobalAchievementContributorsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminListGlobalAchievementContributorsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /achievement/v1/admin/namespaces/{namespace}/global/achievements/{achievementCode}/contributors returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListGlobalAchievementContributorsOK creates a AdminListGlobalAchievementContributorsOK with default headers values
func NewAdminListGlobalAchievementContributorsOK() *AdminListGlobalAchievementContributorsOK {
	return &AdminListGlobalAchievementContributorsOK{}
}

/*AdminListGlobalAchievementContributorsOK handles this case with default header values.

  OK
*/
type AdminListGlobalAchievementContributorsOK struct {
	Payload *achievementclientmodels.ModelsPaginatedContributorResponse
}

func (o *AdminListGlobalAchievementContributorsOK) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/global/achievements/{achievementCode}/contributors][%d] adminListGlobalAchievementContributorsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminListGlobalAchievementContributorsOK) ToJSONString() string {
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

func (o *AdminListGlobalAchievementContributorsOK) GetPayload() *achievementclientmodels.ModelsPaginatedContributorResponse {
	return o.Payload
}

func (o *AdminListGlobalAchievementContributorsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ModelsPaginatedContributorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminListGlobalAchievementContributorsBadRequest creates a AdminListGlobalAchievementContributorsBadRequest with default headers values
func NewAdminListGlobalAchievementContributorsBadRequest() *AdminListGlobalAchievementContributorsBadRequest {
	return &AdminListGlobalAchievementContributorsBadRequest{}
}

/*AdminListGlobalAchievementContributorsBadRequest handles this case with default header values.

  Bad Request
*/
type AdminListGlobalAchievementContributorsBadRequest struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminListGlobalAchievementContributorsBadRequest) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/global/achievements/{achievementCode}/contributors][%d] adminListGlobalAchievementContributorsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminListGlobalAchievementContributorsBadRequest) ToJSONString() string {
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

func (o *AdminListGlobalAchievementContributorsBadRequest) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListGlobalAchievementContributorsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListGlobalAchievementContributorsUnauthorized creates a AdminListGlobalAchievementContributorsUnauthorized with default headers values
func NewAdminListGlobalAchievementContributorsUnauthorized() *AdminListGlobalAchievementContributorsUnauthorized {
	return &AdminListGlobalAchievementContributorsUnauthorized{}
}

/*AdminListGlobalAchievementContributorsUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminListGlobalAchievementContributorsUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminListGlobalAchievementContributorsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/global/achievements/{achievementCode}/contributors][%d] adminListGlobalAchievementContributorsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminListGlobalAchievementContributorsUnauthorized) ToJSONString() string {
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

func (o *AdminListGlobalAchievementContributorsUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListGlobalAchievementContributorsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListGlobalAchievementContributorsInternalServerError creates a AdminListGlobalAchievementContributorsInternalServerError with default headers values
func NewAdminListGlobalAchievementContributorsInternalServerError() *AdminListGlobalAchievementContributorsInternalServerError {
	return &AdminListGlobalAchievementContributorsInternalServerError{}
}

/*AdminListGlobalAchievementContributorsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminListGlobalAchievementContributorsInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminListGlobalAchievementContributorsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/global/achievements/{achievementCode}/contributors][%d] adminListGlobalAchievementContributorsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminListGlobalAchievementContributorsInternalServerError) ToJSONString() string {
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

func (o *AdminListGlobalAchievementContributorsInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListGlobalAchievementContributorsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
