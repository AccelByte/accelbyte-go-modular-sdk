// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_content

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclientmodels"
)

type SingleAdminDeleteContentResponse struct {
	ugcclientmodels.ApiResponse

	Error401 *ugcclientmodels.ResponseError
	Error404 *ugcclientmodels.ResponseError
	Error500 *ugcclientmodels.ResponseError
}

func (m *SingleAdminDeleteContentResponse) Unpack() *ugcclientmodels.ApiError {
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
			return &ugcclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// SingleAdminDeleteContentReader is a Reader for the SingleAdminDeleteContent structure.
type SingleAdminDeleteContentReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SingleAdminDeleteContentReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewSingleAdminDeleteContentNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSingleAdminDeleteContentUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSingleAdminDeleteContentNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSingleAdminDeleteContentInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSingleAdminDeleteContentNoContent creates a SingleAdminDeleteContentNoContent with default headers values
func NewSingleAdminDeleteContentNoContent() *SingleAdminDeleteContentNoContent {
	return &SingleAdminDeleteContentNoContent{}
}

/*SingleAdminDeleteContentNoContent handles this case with default header values.

  Content deleted
*/
type SingleAdminDeleteContentNoContent struct {
}

func (o *SingleAdminDeleteContentNoContent) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] singleAdminDeleteContentNoContent ", 204)
}

func (o *SingleAdminDeleteContentNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSingleAdminDeleteContentUnauthorized creates a SingleAdminDeleteContentUnauthorized with default headers values
func NewSingleAdminDeleteContentUnauthorized() *SingleAdminDeleteContentUnauthorized {
	return &SingleAdminDeleteContentUnauthorized{}
}

/*SingleAdminDeleteContentUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type SingleAdminDeleteContentUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminDeleteContentUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] singleAdminDeleteContentUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *SingleAdminDeleteContentUnauthorized) ToJSONString() string {
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

func (o *SingleAdminDeleteContentUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminDeleteContentUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSingleAdminDeleteContentNotFound creates a SingleAdminDeleteContentNotFound with default headers values
func NewSingleAdminDeleteContentNotFound() *SingleAdminDeleteContentNotFound {
	return &SingleAdminDeleteContentNotFound{}
}

/*SingleAdminDeleteContentNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772702</td><td>Content not found</td></tr></table>
*/
type SingleAdminDeleteContentNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminDeleteContentNotFound) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] singleAdminDeleteContentNotFound  %+v", 404, o.ToJSONString())
}

func (o *SingleAdminDeleteContentNotFound) ToJSONString() string {
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

func (o *SingleAdminDeleteContentNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminDeleteContentNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSingleAdminDeleteContentInternalServerError creates a SingleAdminDeleteContentInternalServerError with default headers values
func NewSingleAdminDeleteContentInternalServerError() *SingleAdminDeleteContentInternalServerError {
	return &SingleAdminDeleteContentInternalServerError{}
}

/*SingleAdminDeleteContentInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772701</td><td>Unable to delete content/Unable to update user liked count/Unable to delete like state/Unable to delete like state</td></tr></table>
*/
type SingleAdminDeleteContentInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminDeleteContentInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] singleAdminDeleteContentInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SingleAdminDeleteContentInternalServerError) ToJSONString() string {
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

func (o *SingleAdminDeleteContentInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminDeleteContentInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
