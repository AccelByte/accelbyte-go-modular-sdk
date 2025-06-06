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

type AddFriendsWithoutConfirmationResponse struct {
	lobbyclientmodels.ApiResponse

	Error400 *lobbyclientmodels.RestapiErrorResponseV1
	Error401 *lobbyclientmodels.RestapiErrorResponseV1
	Error403 *lobbyclientmodels.RestapiErrorResponseV1
	Error500 *lobbyclientmodels.RestapiErrorResponseV1
}

func (m *AddFriendsWithoutConfirmationResponse) Unpack() *lobbyclientmodels.ApiError {
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

// AddFriendsWithoutConfirmationReader is a Reader for the AddFriendsWithoutConfirmation structure.
type AddFriendsWithoutConfirmationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AddFriendsWithoutConfirmationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAddFriendsWithoutConfirmationNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAddFriendsWithoutConfirmationBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAddFriendsWithoutConfirmationUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAddFriendsWithoutConfirmationForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAddFriendsWithoutConfirmationInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /friends/namespaces/{namespace}/users/{userId}/add/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAddFriendsWithoutConfirmationNoContent creates a AddFriendsWithoutConfirmationNoContent with default headers values
func NewAddFriendsWithoutConfirmationNoContent() *AddFriendsWithoutConfirmationNoContent {
	return &AddFriendsWithoutConfirmationNoContent{}
}

/*AddFriendsWithoutConfirmationNoContent handles this case with default header values.


 */
type AddFriendsWithoutConfirmationNoContent struct {
}

func (o *AddFriendsWithoutConfirmationNoContent) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/users/{userId}/add/bulk][%d] addFriendsWithoutConfirmationNoContent ", 204)
}

func (o *AddFriendsWithoutConfirmationNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAddFriendsWithoutConfirmationBadRequest creates a AddFriendsWithoutConfirmationBadRequest with default headers values
func NewAddFriendsWithoutConfirmationBadRequest() *AddFriendsWithoutConfirmationBadRequest {
	return &AddFriendsWithoutConfirmationBadRequest{}
}

/*AddFriendsWithoutConfirmationBadRequest handles this case with default header values.

  Bad Request
*/
type AddFriendsWithoutConfirmationBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *AddFriendsWithoutConfirmationBadRequest) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/users/{userId}/add/bulk][%d] addFriendsWithoutConfirmationBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AddFriendsWithoutConfirmationBadRequest) ToJSONString() string {
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

func (o *AddFriendsWithoutConfirmationBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *AddFriendsWithoutConfirmationBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAddFriendsWithoutConfirmationUnauthorized creates a AddFriendsWithoutConfirmationUnauthorized with default headers values
func NewAddFriendsWithoutConfirmationUnauthorized() *AddFriendsWithoutConfirmationUnauthorized {
	return &AddFriendsWithoutConfirmationUnauthorized{}
}

/*AddFriendsWithoutConfirmationUnauthorized handles this case with default header values.

  Unauthorized
*/
type AddFriendsWithoutConfirmationUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *AddFriendsWithoutConfirmationUnauthorized) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/users/{userId}/add/bulk][%d] addFriendsWithoutConfirmationUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AddFriendsWithoutConfirmationUnauthorized) ToJSONString() string {
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

func (o *AddFriendsWithoutConfirmationUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *AddFriendsWithoutConfirmationUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAddFriendsWithoutConfirmationForbidden creates a AddFriendsWithoutConfirmationForbidden with default headers values
func NewAddFriendsWithoutConfirmationForbidden() *AddFriendsWithoutConfirmationForbidden {
	return &AddFriendsWithoutConfirmationForbidden{}
}

/*AddFriendsWithoutConfirmationForbidden handles this case with default header values.

  Forbidden
*/
type AddFriendsWithoutConfirmationForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *AddFriendsWithoutConfirmationForbidden) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/users/{userId}/add/bulk][%d] addFriendsWithoutConfirmationForbidden  %+v", 403, o.ToJSONString())
}

func (o *AddFriendsWithoutConfirmationForbidden) ToJSONString() string {
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

func (o *AddFriendsWithoutConfirmationForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *AddFriendsWithoutConfirmationForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAddFriendsWithoutConfirmationInternalServerError creates a AddFriendsWithoutConfirmationInternalServerError with default headers values
func NewAddFriendsWithoutConfirmationInternalServerError() *AddFriendsWithoutConfirmationInternalServerError {
	return &AddFriendsWithoutConfirmationInternalServerError{}
}

/*AddFriendsWithoutConfirmationInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AddFriendsWithoutConfirmationInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *AddFriendsWithoutConfirmationInternalServerError) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/users/{userId}/add/bulk][%d] addFriendsWithoutConfirmationInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AddFriendsWithoutConfirmationInternalServerError) ToJSONString() string {
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

func (o *AddFriendsWithoutConfirmationInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *AddFriendsWithoutConfirmationInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
