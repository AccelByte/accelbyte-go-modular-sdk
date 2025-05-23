// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package friends

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

type UserCancelFriendRequestResponse struct {
	lobbyclientmodels.ApiResponse

	Error400 *lobbyclientmodels.RestapiErrorResponseV1
	Error401 *lobbyclientmodels.RestapiErrorResponseV1
	Error403 *lobbyclientmodels.RestapiErrorResponseV1
	Error404 *lobbyclientmodels.RestapiErrorResponseV1
	Error500 *lobbyclientmodels.RestapiErrorResponseV1
}

func (m *UserCancelFriendRequestResponse) Unpack() *lobbyclientmodels.ApiError {
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

		case 403:
			e, err := m.Error403.TranslateToApiError()
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
			return &lobbyclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// UserCancelFriendRequestReader is a Reader for the UserCancelFriendRequest structure.
type UserCancelFriendRequestReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UserCancelFriendRequestReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewUserCancelFriendRequestNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUserCancelFriendRequestBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUserCancelFriendRequestUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUserCancelFriendRequestForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUserCancelFriendRequestNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUserCancelFriendRequestInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /friends/namespaces/{namespace}/me/request/cancel returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUserCancelFriendRequestNoContent creates a UserCancelFriendRequestNoContent with default headers values
func NewUserCancelFriendRequestNoContent() *UserCancelFriendRequestNoContent {
	return &UserCancelFriendRequestNoContent{}
}

/*UserCancelFriendRequestNoContent handles this case with default header values.

  No Content
*/
type UserCancelFriendRequestNoContent struct {
}

func (o *UserCancelFriendRequestNoContent) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/request/cancel][%d] userCancelFriendRequestNoContent ", 204)
}

func (o *UserCancelFriendRequestNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUserCancelFriendRequestBadRequest creates a UserCancelFriendRequestBadRequest with default headers values
func NewUserCancelFriendRequestBadRequest() *UserCancelFriendRequestBadRequest {
	return &UserCancelFriendRequestBadRequest{}
}

/*UserCancelFriendRequestBadRequest handles this case with default header values.

  Bad Request
*/
type UserCancelFriendRequestBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserCancelFriendRequestBadRequest) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/request/cancel][%d] userCancelFriendRequestBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UserCancelFriendRequestBadRequest) ToJSONString() string {
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

func (o *UserCancelFriendRequestBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserCancelFriendRequestBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUserCancelFriendRequestUnauthorized creates a UserCancelFriendRequestUnauthorized with default headers values
func NewUserCancelFriendRequestUnauthorized() *UserCancelFriendRequestUnauthorized {
	return &UserCancelFriendRequestUnauthorized{}
}

/*UserCancelFriendRequestUnauthorized handles this case with default header values.

  Unauthorized
*/
type UserCancelFriendRequestUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserCancelFriendRequestUnauthorized) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/request/cancel][%d] userCancelFriendRequestUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UserCancelFriendRequestUnauthorized) ToJSONString() string {
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

func (o *UserCancelFriendRequestUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserCancelFriendRequestUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUserCancelFriendRequestForbidden creates a UserCancelFriendRequestForbidden with default headers values
func NewUserCancelFriendRequestForbidden() *UserCancelFriendRequestForbidden {
	return &UserCancelFriendRequestForbidden{}
}

/*UserCancelFriendRequestForbidden handles this case with default header values.

  Forbidden
*/
type UserCancelFriendRequestForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserCancelFriendRequestForbidden) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/request/cancel][%d] userCancelFriendRequestForbidden  %+v", 403, o.ToJSONString())
}

func (o *UserCancelFriendRequestForbidden) ToJSONString() string {
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

func (o *UserCancelFriendRequestForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserCancelFriendRequestForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUserCancelFriendRequestNotFound creates a UserCancelFriendRequestNotFound with default headers values
func NewUserCancelFriendRequestNotFound() *UserCancelFriendRequestNotFound {
	return &UserCancelFriendRequestNotFound{}
}

/*UserCancelFriendRequestNotFound handles this case with default header values.

  Not Found
*/
type UserCancelFriendRequestNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserCancelFriendRequestNotFound) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/request/cancel][%d] userCancelFriendRequestNotFound  %+v", 404, o.ToJSONString())
}

func (o *UserCancelFriendRequestNotFound) ToJSONString() string {
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

func (o *UserCancelFriendRequestNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserCancelFriendRequestNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUserCancelFriendRequestInternalServerError creates a UserCancelFriendRequestInternalServerError with default headers values
func NewUserCancelFriendRequestInternalServerError() *UserCancelFriendRequestInternalServerError {
	return &UserCancelFriendRequestInternalServerError{}
}

/*UserCancelFriendRequestInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UserCancelFriendRequestInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserCancelFriendRequestInternalServerError) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/request/cancel][%d] userCancelFriendRequestInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UserCancelFriendRequestInternalServerError) ToJSONString() string {
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

func (o *UserCancelFriendRequestInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserCancelFriendRequestInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
