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

type AdminUpdateAchievementResponse struct {
	achievementclientmodels.ApiResponse
	Data *achievementclientmodels.ModelsAchievementResponse

	Error400 *achievementclientmodels.ResponseError
	Error401 *achievementclientmodels.ResponseError
	Error404 *achievementclientmodels.ResponseError
	Error500 *achievementclientmodels.ResponseError
}

func (m *AdminUpdateAchievementResponse) Unpack() (*achievementclientmodels.ModelsAchievementResponse, *achievementclientmodels.ApiError) {
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

// AdminUpdateAchievementReader is a Reader for the AdminUpdateAchievement structure.
type AdminUpdateAchievementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateAchievementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateAchievementOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateAchievementBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateAchievementUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateAchievementNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateAchievementInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateAchievementOK creates a AdminUpdateAchievementOK with default headers values
func NewAdminUpdateAchievementOK() *AdminUpdateAchievementOK {
	return &AdminUpdateAchievementOK{}
}

/*AdminUpdateAchievementOK handles this case with default header values.

  OK
*/
type AdminUpdateAchievementOK struct {
	Payload *achievementclientmodels.ModelsAchievementResponse
}

func (o *AdminUpdateAchievementOK) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}][%d] adminUpdateAchievementOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateAchievementOK) ToJSONString() string {
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

func (o *AdminUpdateAchievementOK) GetPayload() *achievementclientmodels.ModelsAchievementResponse {
	return o.Payload
}

func (o *AdminUpdateAchievementOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ModelsAchievementResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateAchievementBadRequest creates a AdminUpdateAchievementBadRequest with default headers values
func NewAdminUpdateAchievementBadRequest() *AdminUpdateAchievementBadRequest {
	return &AdminUpdateAchievementBadRequest{}
}

/*AdminUpdateAchievementBadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpdateAchievementBadRequest struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminUpdateAchievementBadRequest) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}][%d] adminUpdateAchievementBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateAchievementBadRequest) ToJSONString() string {
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

func (o *AdminUpdateAchievementBadRequest) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateAchievementBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateAchievementUnauthorized creates a AdminUpdateAchievementUnauthorized with default headers values
func NewAdminUpdateAchievementUnauthorized() *AdminUpdateAchievementUnauthorized {
	return &AdminUpdateAchievementUnauthorized{}
}

/*AdminUpdateAchievementUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdateAchievementUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminUpdateAchievementUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}][%d] adminUpdateAchievementUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateAchievementUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateAchievementUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateAchievementUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateAchievementNotFound creates a AdminUpdateAchievementNotFound with default headers values
func NewAdminUpdateAchievementNotFound() *AdminUpdateAchievementNotFound {
	return &AdminUpdateAchievementNotFound{}
}

/*AdminUpdateAchievementNotFound handles this case with default header values.

  Not Found
*/
type AdminUpdateAchievementNotFound struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminUpdateAchievementNotFound) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}][%d] adminUpdateAchievementNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateAchievementNotFound) ToJSONString() string {
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

func (o *AdminUpdateAchievementNotFound) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateAchievementNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateAchievementInternalServerError creates a AdminUpdateAchievementInternalServerError with default headers values
func NewAdminUpdateAchievementInternalServerError() *AdminUpdateAchievementInternalServerError {
	return &AdminUpdateAchievementInternalServerError{}
}

/*AdminUpdateAchievementInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdateAchievementInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminUpdateAchievementInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode}][%d] adminUpdateAchievementInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateAchievementInternalServerError) ToJSONString() string {
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

func (o *AdminUpdateAchievementInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateAchievementInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
