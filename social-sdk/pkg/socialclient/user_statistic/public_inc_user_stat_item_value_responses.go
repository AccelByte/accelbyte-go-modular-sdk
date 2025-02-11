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

type PublicIncUserStatItemValueResponse struct {
	socialclientmodels.ApiResponse
	Data *socialclientmodels.StatItemIncResult

	Error400 *socialclientmodels.ErrorEntity
	Error401 *socialclientmodels.ErrorEntity
	Error403 *socialclientmodels.ErrorEntity
	Error404 *socialclientmodels.ErrorEntity
	Error409 *socialclientmodels.ErrorEntity
	Error422 *socialclientmodels.ValidationErrorEntity
	Error500 *socialclientmodels.ErrorEntity
}

func (m *PublicIncUserStatItemValueResponse) Unpack() (*socialclientmodels.StatItemIncResult, *socialclientmodels.ApiError) {
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

		case 409:
			e, err := m.Error409.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		case 422:
			e, err := m.Error422.TranslateToApiError()
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
			return nil, &socialclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// PublicIncUserStatItemValueReader is a Reader for the PublicIncUserStatItemValue structure.
type PublicIncUserStatItemValueReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicIncUserStatItemValueReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicIncUserStatItemValueOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicIncUserStatItemValueBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicIncUserStatItemValueUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicIncUserStatItemValueForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicIncUserStatItemValueNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicIncUserStatItemValueConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPublicIncUserStatItemValueUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicIncUserStatItemValueInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicIncUserStatItemValueOK creates a PublicIncUserStatItemValueOK with default headers values
func NewPublicIncUserStatItemValueOK() *PublicIncUserStatItemValueOK {
	return &PublicIncUserStatItemValueOK{}
}

/*PublicIncUserStatItemValueOK handles this case with default header values.

  successful operation
*/
type PublicIncUserStatItemValueOK struct {
	Payload *socialclientmodels.StatItemIncResult
}

func (o *PublicIncUserStatItemValueOK) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] publicIncUserStatItemValueOK  %+v", 200, o.ToJSONString())
}

func (o *PublicIncUserStatItemValueOK) ToJSONString() string {
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

func (o *PublicIncUserStatItemValueOK) GetPayload() *socialclientmodels.StatItemIncResult {
	return o.Payload
}

func (o *PublicIncUserStatItemValueOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.StatItemIncResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicIncUserStatItemValueBadRequest creates a PublicIncUserStatItemValueBadRequest with default headers values
func NewPublicIncUserStatItemValueBadRequest() *PublicIncUserStatItemValueBadRequest {
	return &PublicIncUserStatItemValueBadRequest{}
}

/*PublicIncUserStatItemValueBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12221</td><td>Invalid stat operator, expect [{expected}] but actual [{actual}]</td></tr></table>
*/
type PublicIncUserStatItemValueBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicIncUserStatItemValueBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] publicIncUserStatItemValueBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicIncUserStatItemValueBadRequest) ToJSONString() string {
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

func (o *PublicIncUserStatItemValueBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicIncUserStatItemValueBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicIncUserStatItemValueUnauthorized creates a PublicIncUserStatItemValueUnauthorized with default headers values
func NewPublicIncUserStatItemValueUnauthorized() *PublicIncUserStatItemValueUnauthorized {
	return &PublicIncUserStatItemValueUnauthorized{}
}

/*PublicIncUserStatItemValueUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type PublicIncUserStatItemValueUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicIncUserStatItemValueUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] publicIncUserStatItemValueUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicIncUserStatItemValueUnauthorized) ToJSONString() string {
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

func (o *PublicIncUserStatItemValueUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicIncUserStatItemValueUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicIncUserStatItemValueForbidden creates a PublicIncUserStatItemValueForbidden with default headers values
func NewPublicIncUserStatItemValueForbidden() *PublicIncUserStatItemValueForbidden {
	return &PublicIncUserStatItemValueForbidden{}
}

/*PublicIncUserStatItemValueForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicIncUserStatItemValueForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicIncUserStatItemValueForbidden) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] publicIncUserStatItemValueForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicIncUserStatItemValueForbidden) ToJSONString() string {
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

func (o *PublicIncUserStatItemValueForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicIncUserStatItemValueForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicIncUserStatItemValueNotFound creates a PublicIncUserStatItemValueNotFound with default headers values
func NewPublicIncUserStatItemValueNotFound() *PublicIncUserStatItemValueNotFound {
	return &PublicIncUserStatItemValueNotFound{}
}

/*PublicIncUserStatItemValueNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12241</td><td>Stat [{statCode}] cannot be found in namespace [{namespace}]</td></tr><tr><td>12242</td><td>Stat item of [{statCode}] of user [{profileId}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type PublicIncUserStatItemValueNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicIncUserStatItemValueNotFound) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] publicIncUserStatItemValueNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicIncUserStatItemValueNotFound) ToJSONString() string {
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

func (o *PublicIncUserStatItemValueNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicIncUserStatItemValueNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicIncUserStatItemValueConflict creates a PublicIncUserStatItemValueConflict with default headers values
func NewPublicIncUserStatItemValueConflict() *PublicIncUserStatItemValueConflict {
	return &PublicIncUserStatItemValueConflict{}
}

/*PublicIncUserStatItemValueConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12273</td><td>Stat [{statCode}] is not decreasable</td></tr><tr><td>12275</td><td>[{action}] value: [{value}] of stat [{statCode}]  is out of range while minimum [{minimum}] and maximum [{maximum}] in namespace [{namespace}]</td></tr></table>
*/
type PublicIncUserStatItemValueConflict struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicIncUserStatItemValueConflict) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] publicIncUserStatItemValueConflict  %+v", 409, o.ToJSONString())
}

func (o *PublicIncUserStatItemValueConflict) ToJSONString() string {
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

func (o *PublicIncUserStatItemValueConflict) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicIncUserStatItemValueConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicIncUserStatItemValueUnprocessableEntity creates a PublicIncUserStatItemValueUnprocessableEntity with default headers values
func NewPublicIncUserStatItemValueUnprocessableEntity() *PublicIncUserStatItemValueUnprocessableEntity {
	return &PublicIncUserStatItemValueUnprocessableEntity{}
}

/*PublicIncUserStatItemValueUnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicIncUserStatItemValueUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *PublicIncUserStatItemValueUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] publicIncUserStatItemValueUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *PublicIncUserStatItemValueUnprocessableEntity) ToJSONString() string {
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

func (o *PublicIncUserStatItemValueUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicIncUserStatItemValueUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicIncUserStatItemValueInternalServerError creates a PublicIncUserStatItemValueInternalServerError with default headers values
func NewPublicIncUserStatItemValueInternalServerError() *PublicIncUserStatItemValueInternalServerError {
	return &PublicIncUserStatItemValueInternalServerError{}
}

/*PublicIncUserStatItemValueInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type PublicIncUserStatItemValueInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicIncUserStatItemValueInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] publicIncUserStatItemValueInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicIncUserStatItemValueInternalServerError) ToJSONString() string {
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

func (o *PublicIncUserStatItemValueInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicIncUserStatItemValueInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
