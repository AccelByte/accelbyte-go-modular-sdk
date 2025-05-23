// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package tags

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

type PublicListTagsResponse struct {
	achievementclientmodels.ApiResponse
	Data *achievementclientmodels.ModelsPaginatedTagResponse

	Error400 *achievementclientmodels.ResponseError
	Error401 *achievementclientmodels.ResponseError
	Error404 *achievementclientmodels.ResponseError
	Error500 *achievementclientmodels.ResponseError
}

func (m *PublicListTagsResponse) Unpack() (*achievementclientmodels.ModelsPaginatedTagResponse, *achievementclientmodels.ApiError) {
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

// PublicListTagsReader is a Reader for the PublicListTags structure.
type PublicListTagsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicListTagsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicListTagsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicListTagsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicListTagsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicListTagsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicListTagsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /achievement/v1/public/namespaces/{namespace}/tags returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicListTagsOK creates a PublicListTagsOK with default headers values
func NewPublicListTagsOK() *PublicListTagsOK {
	return &PublicListTagsOK{}
}

/*PublicListTagsOK handles this case with default header values.

  OK
*/
type PublicListTagsOK struct {
	Payload *achievementclientmodels.ModelsPaginatedTagResponse
}

func (o *PublicListTagsOK) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/tags][%d] publicListTagsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicListTagsOK) ToJSONString() string {
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

func (o *PublicListTagsOK) GetPayload() *achievementclientmodels.ModelsPaginatedTagResponse {
	return o.Payload
}

func (o *PublicListTagsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ModelsPaginatedTagResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicListTagsBadRequest creates a PublicListTagsBadRequest with default headers values
func NewPublicListTagsBadRequest() *PublicListTagsBadRequest {
	return &PublicListTagsBadRequest{}
}

/*PublicListTagsBadRequest handles this case with default header values.

  Bad Request
*/
type PublicListTagsBadRequest struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicListTagsBadRequest) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/tags][%d] publicListTagsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicListTagsBadRequest) ToJSONString() string {
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

func (o *PublicListTagsBadRequest) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicListTagsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListTagsUnauthorized creates a PublicListTagsUnauthorized with default headers values
func NewPublicListTagsUnauthorized() *PublicListTagsUnauthorized {
	return &PublicListTagsUnauthorized{}
}

/*PublicListTagsUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicListTagsUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicListTagsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/tags][%d] publicListTagsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicListTagsUnauthorized) ToJSONString() string {
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

func (o *PublicListTagsUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicListTagsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListTagsNotFound creates a PublicListTagsNotFound with default headers values
func NewPublicListTagsNotFound() *PublicListTagsNotFound {
	return &PublicListTagsNotFound{}
}

/*PublicListTagsNotFound handles this case with default header values.

  Not Found
*/
type PublicListTagsNotFound struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicListTagsNotFound) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/tags][%d] publicListTagsNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicListTagsNotFound) ToJSONString() string {
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

func (o *PublicListTagsNotFound) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicListTagsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListTagsInternalServerError creates a PublicListTagsInternalServerError with default headers values
func NewPublicListTagsInternalServerError() *PublicListTagsInternalServerError {
	return &PublicListTagsInternalServerError{}
}

/*PublicListTagsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicListTagsInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicListTagsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/tags][%d] publicListTagsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicListTagsInternalServerError) ToJSONString() string {
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

func (o *PublicListTagsInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicListTagsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
