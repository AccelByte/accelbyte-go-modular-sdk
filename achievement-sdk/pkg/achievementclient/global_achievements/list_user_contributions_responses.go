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

type ListUserContributionsResponse struct {
	achievementclientmodels.ApiResponse
	Data *achievementclientmodels.ModelsPaginatedUserContributionResponse

	Error400 *achievementclientmodels.ResponseError
	Error401 *achievementclientmodels.ResponseError
	Error500 *achievementclientmodels.ResponseError
}

func (m *ListUserContributionsResponse) Unpack() (*achievementclientmodels.ModelsPaginatedUserContributionResponse, *achievementclientmodels.ApiError) {
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

// ListUserContributionsReader is a Reader for the ListUserContributions structure.
type ListUserContributionsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListUserContributionsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListUserContributionsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewListUserContributionsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewListUserContributionsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewListUserContributionsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /achievement/v1/public/namespaces/{namespace}/users/{userId}/global/achievements returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListUserContributionsOK creates a ListUserContributionsOK with default headers values
func NewListUserContributionsOK() *ListUserContributionsOK {
	return &ListUserContributionsOK{}
}

/*ListUserContributionsOK handles this case with default header values.

  OK
*/
type ListUserContributionsOK struct {
	Payload *achievementclientmodels.ModelsPaginatedUserContributionResponse
}

func (o *ListUserContributionsOK) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/users/{userId}/global/achievements][%d] listUserContributionsOK  %+v", 200, o.ToJSONString())
}

func (o *ListUserContributionsOK) ToJSONString() string {
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

func (o *ListUserContributionsOK) GetPayload() *achievementclientmodels.ModelsPaginatedUserContributionResponse {
	return o.Payload
}

func (o *ListUserContributionsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ModelsPaginatedUserContributionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListUserContributionsBadRequest creates a ListUserContributionsBadRequest with default headers values
func NewListUserContributionsBadRequest() *ListUserContributionsBadRequest {
	return &ListUserContributionsBadRequest{}
}

/*ListUserContributionsBadRequest handles this case with default header values.

  Bad Request
*/
type ListUserContributionsBadRequest struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *ListUserContributionsBadRequest) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/users/{userId}/global/achievements][%d] listUserContributionsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ListUserContributionsBadRequest) ToJSONString() string {
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

func (o *ListUserContributionsBadRequest) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *ListUserContributionsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewListUserContributionsUnauthorized creates a ListUserContributionsUnauthorized with default headers values
func NewListUserContributionsUnauthorized() *ListUserContributionsUnauthorized {
	return &ListUserContributionsUnauthorized{}
}

/*ListUserContributionsUnauthorized handles this case with default header values.

  Unauthorized
*/
type ListUserContributionsUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *ListUserContributionsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/users/{userId}/global/achievements][%d] listUserContributionsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ListUserContributionsUnauthorized) ToJSONString() string {
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

func (o *ListUserContributionsUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *ListUserContributionsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewListUserContributionsInternalServerError creates a ListUserContributionsInternalServerError with default headers values
func NewListUserContributionsInternalServerError() *ListUserContributionsInternalServerError {
	return &ListUserContributionsInternalServerError{}
}

/*ListUserContributionsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ListUserContributionsInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *ListUserContributionsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/users/{userId}/global/achievements][%d] listUserContributionsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ListUserContributionsInternalServerError) ToJSONString() string {
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

func (o *ListUserContributionsInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *ListUserContributionsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
