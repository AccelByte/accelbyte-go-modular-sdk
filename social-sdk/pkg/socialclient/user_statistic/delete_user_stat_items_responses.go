// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_statistic

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclientmodels"
)

type DeleteUserStatItemsResponse struct {
	socialclientmodels.ApiResponse

	Error401 *socialclientmodels.ErrorEntity
	Error403 *socialclientmodels.ErrorEntity
	Error404 *socialclientmodels.ErrorEntity
	Error422 *socialclientmodels.ValidationErrorEntity
	Error500 *socialclientmodels.ErrorEntity
}

func (m *DeleteUserStatItemsResponse) Unpack() *socialclientmodels.ApiError {
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

		case 422:
			e, err := m.Error422.TranslateToApiError()
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
			return &socialclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// DeleteUserStatItemsReader is a Reader for the DeleteUserStatItems structure.
type DeleteUserStatItemsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteUserStatItemsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteUserStatItemsNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteUserStatItemsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteUserStatItemsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteUserStatItemsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewDeleteUserStatItemsUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteUserStatItemsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteUserStatItemsNoContent creates a DeleteUserStatItemsNoContent with default headers values
func NewDeleteUserStatItemsNoContent() *DeleteUserStatItemsNoContent {
	return &DeleteUserStatItemsNoContent{}
}

/*DeleteUserStatItemsNoContent handles this case with default header values.

  delete successfully
*/
type DeleteUserStatItemsNoContent struct {
}

func (o *DeleteUserStatItemsNoContent) Error() string {
	return fmt.Sprintf("[DELETE /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems][%d] deleteUserStatItemsNoContent ", 204)
}

func (o *DeleteUserStatItemsNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteUserStatItemsUnauthorized creates a DeleteUserStatItemsUnauthorized with default headers values
func NewDeleteUserStatItemsUnauthorized() *DeleteUserStatItemsUnauthorized {
	return &DeleteUserStatItemsUnauthorized{}
}

/*DeleteUserStatItemsUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type DeleteUserStatItemsUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *DeleteUserStatItemsUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems][%d] deleteUserStatItemsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteUserStatItemsUnauthorized) ToJSONString() string {
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

func (o *DeleteUserStatItemsUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteUserStatItemsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteUserStatItemsForbidden creates a DeleteUserStatItemsForbidden with default headers values
func NewDeleteUserStatItemsForbidden() *DeleteUserStatItemsForbidden {
	return &DeleteUserStatItemsForbidden{}
}

/*DeleteUserStatItemsForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type DeleteUserStatItemsForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *DeleteUserStatItemsForbidden) Error() string {
	return fmt.Sprintf("[DELETE /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems][%d] deleteUserStatItemsForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteUserStatItemsForbidden) ToJSONString() string {
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

func (o *DeleteUserStatItemsForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteUserStatItemsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteUserStatItemsNotFound creates a DeleteUserStatItemsNotFound with default headers values
func NewDeleteUserStatItemsNotFound() *DeleteUserStatItemsNotFound {
	return &DeleteUserStatItemsNotFound{}
}

/*DeleteUserStatItemsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12242</td><td>Stat item of [{statCode}] of user [{profileId}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type DeleteUserStatItemsNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *DeleteUserStatItemsNotFound) Error() string {
	return fmt.Sprintf("[DELETE /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems][%d] deleteUserStatItemsNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteUserStatItemsNotFound) ToJSONString() string {
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

func (o *DeleteUserStatItemsNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteUserStatItemsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteUserStatItemsUnprocessableEntity creates a DeleteUserStatItemsUnprocessableEntity with default headers values
func NewDeleteUserStatItemsUnprocessableEntity() *DeleteUserStatItemsUnprocessableEntity {
	return &DeleteUserStatItemsUnprocessableEntity{}
}

/*DeleteUserStatItemsUnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type DeleteUserStatItemsUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *DeleteUserStatItemsUnprocessableEntity) Error() string {
	return fmt.Sprintf("[DELETE /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems][%d] deleteUserStatItemsUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *DeleteUserStatItemsUnprocessableEntity) ToJSONString() string {
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

func (o *DeleteUserStatItemsUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *DeleteUserStatItemsUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteUserStatItemsInternalServerError creates a DeleteUserStatItemsInternalServerError with default headers values
func NewDeleteUserStatItemsInternalServerError() *DeleteUserStatItemsInternalServerError {
	return &DeleteUserStatItemsInternalServerError{}
}

/*DeleteUserStatItemsInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type DeleteUserStatItemsInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *DeleteUserStatItemsInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems][%d] deleteUserStatItemsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteUserStatItemsInternalServerError) ToJSONString() string {
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

func (o *DeleteUserStatItemsInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteUserStatItemsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
