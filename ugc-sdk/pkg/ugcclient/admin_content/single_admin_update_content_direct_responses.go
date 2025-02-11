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

type SingleAdminUpdateContentDirectResponse struct {
	ugcclientmodels.ApiResponse
	Data *ugcclientmodels.ModelsCreateContentResponse

	Error400 *ugcclientmodels.ResponseError
	Error401 *ugcclientmodels.ResponseError
	Error403 *ugcclientmodels.ResponseError
	Error404 *ugcclientmodels.ResponseError
	Error500 *ugcclientmodels.ResponseError
}

func (m *SingleAdminUpdateContentDirectResponse) Unpack() (*ugcclientmodels.ModelsCreateContentResponse, *ugcclientmodels.ApiError) {
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

		case 403:
			e, err := m.Error403.TranslateToApiError()
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
			return nil, &ugcclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// SingleAdminUpdateContentDirectReader is a Reader for the SingleAdminUpdateContentDirect structure.
type SingleAdminUpdateContentDirectReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SingleAdminUpdateContentDirectReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSingleAdminUpdateContentDirectOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSingleAdminUpdateContentDirectBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSingleAdminUpdateContentDirectUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewSingleAdminUpdateContentDirectForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSingleAdminUpdateContentDirectNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSingleAdminUpdateContentDirectInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSingleAdminUpdateContentDirectOK creates a SingleAdminUpdateContentDirectOK with default headers values
func NewSingleAdminUpdateContentDirectOK() *SingleAdminUpdateContentDirectOK {
	return &SingleAdminUpdateContentDirectOK{}
}

/*SingleAdminUpdateContentDirectOK handles this case with default header values.

  Content updated
*/
type SingleAdminUpdateContentDirectOK struct {
	Payload *ugcclientmodels.ModelsCreateContentResponse
}

func (o *SingleAdminUpdateContentDirectOK) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] singleAdminUpdateContentDirectOK  %+v", 200, o.ToJSONString())
}

func (o *SingleAdminUpdateContentDirectOK) ToJSONString() string {
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

func (o *SingleAdminUpdateContentDirectOK) GetPayload() *ugcclientmodels.ModelsCreateContentResponse {
	return o.Payload
}

func (o *SingleAdminUpdateContentDirectOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsCreateContentResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSingleAdminUpdateContentDirectBadRequest creates a SingleAdminUpdateContentDirectBadRequest with default headers values
func NewSingleAdminUpdateContentDirectBadRequest() *SingleAdminUpdateContentDirectBadRequest {
	return &SingleAdminUpdateContentDirectBadRequest{}
}

/*SingleAdminUpdateContentDirectBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772601</td><td>Malformed request</td></tr></table>
*/
type SingleAdminUpdateContentDirectBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminUpdateContentDirectBadRequest) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] singleAdminUpdateContentDirectBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SingleAdminUpdateContentDirectBadRequest) ToJSONString() string {
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

func (o *SingleAdminUpdateContentDirectBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminUpdateContentDirectBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSingleAdminUpdateContentDirectUnauthorized creates a SingleAdminUpdateContentDirectUnauthorized with default headers values
func NewSingleAdminUpdateContentDirectUnauthorized() *SingleAdminUpdateContentDirectUnauthorized {
	return &SingleAdminUpdateContentDirectUnauthorized{}
}

/*SingleAdminUpdateContentDirectUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type SingleAdminUpdateContentDirectUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminUpdateContentDirectUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] singleAdminUpdateContentDirectUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *SingleAdminUpdateContentDirectUnauthorized) ToJSONString() string {
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

func (o *SingleAdminUpdateContentDirectUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminUpdateContentDirectUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSingleAdminUpdateContentDirectForbidden creates a SingleAdminUpdateContentDirectForbidden with default headers values
func NewSingleAdminUpdateContentDirectForbidden() *SingleAdminUpdateContentDirectForbidden {
	return &SingleAdminUpdateContentDirectForbidden{}
}

/*SingleAdminUpdateContentDirectForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772604</td><td>User has been banned to update content</td></tr></table>
*/
type SingleAdminUpdateContentDirectForbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminUpdateContentDirectForbidden) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] singleAdminUpdateContentDirectForbidden  %+v", 403, o.ToJSONString())
}

func (o *SingleAdminUpdateContentDirectForbidden) ToJSONString() string {
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

func (o *SingleAdminUpdateContentDirectForbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminUpdateContentDirectForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSingleAdminUpdateContentDirectNotFound creates a SingleAdminUpdateContentDirectNotFound with default headers values
func NewSingleAdminUpdateContentDirectNotFound() *SingleAdminUpdateContentDirectNotFound {
	return &SingleAdminUpdateContentDirectNotFound{}
}

/*SingleAdminUpdateContentDirectNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772603</td><td>Content not found</td></tr></table>
*/
type SingleAdminUpdateContentDirectNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminUpdateContentDirectNotFound) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] singleAdminUpdateContentDirectNotFound  %+v", 404, o.ToJSONString())
}

func (o *SingleAdminUpdateContentDirectNotFound) ToJSONString() string {
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

func (o *SingleAdminUpdateContentDirectNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminUpdateContentDirectNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSingleAdminUpdateContentDirectInternalServerError creates a SingleAdminUpdateContentDirectInternalServerError with default headers values
func NewSingleAdminUpdateContentDirectInternalServerError() *SingleAdminUpdateContentDirectInternalServerError {
	return &SingleAdminUpdateContentDirectInternalServerError{}
}

/*SingleAdminUpdateContentDirectInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772602</td><td>Unable to check user ban status/Unable to get updated ugc content</td></tr></table>
*/
type SingleAdminUpdateContentDirectInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminUpdateContentDirectInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] singleAdminUpdateContentDirectInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SingleAdminUpdateContentDirectInternalServerError) ToJSONString() string {
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

func (o *SingleAdminUpdateContentDirectInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminUpdateContentDirectInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
