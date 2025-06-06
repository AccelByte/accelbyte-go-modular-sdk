// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package subscription

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
)

type PublicSubscribeSubscriptionResponse struct {
	platformclientmodels.ApiResponse

	Error400 *platformclientmodels.ErrorEntity
	Error403 *platformclientmodels.ErrorEntity
	Error404 *platformclientmodels.ErrorEntity
	Error409 *platformclientmodels.ErrorEntity
	Error422 *platformclientmodels.ValidationErrorEntity
}

func (m *PublicSubscribeSubscriptionResponse) Unpack() *platformclientmodels.ApiError {
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

		case 409:
			e, err := m.Error409.TranslateToApiError()
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

		default:
			return &platformclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// PublicSubscribeSubscriptionReader is a Reader for the PublicSubscribeSubscription structure.
type PublicSubscribeSubscriptionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicSubscribeSubscriptionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewPublicSubscribeSubscriptionCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicSubscribeSubscriptionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicSubscribeSubscriptionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicSubscribeSubscriptionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicSubscribeSubscriptionConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPublicSubscribeSubscriptionUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/public/namespaces/{namespace}/users/{userId}/subscriptions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicSubscribeSubscriptionCreated creates a PublicSubscribeSubscriptionCreated with default headers values
func NewPublicSubscribeSubscriptionCreated() *PublicSubscribeSubscriptionCreated {
	return &PublicSubscribeSubscriptionCreated{}
}

/*PublicSubscribeSubscriptionCreated handles this case with default header values.

  subscribe request processed
*/
type PublicSubscribeSubscriptionCreated struct {
}

func (o *PublicSubscribeSubscriptionCreated) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/users/{userId}/subscriptions][%d] publicSubscribeSubscriptionCreated ", 201)
}

func (o *PublicSubscribeSubscriptionCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicSubscribeSubscriptionBadRequest creates a PublicSubscribeSubscriptionBadRequest with default headers values
func NewPublicSubscribeSubscriptionBadRequest() *PublicSubscribeSubscriptionBadRequest {
	return &PublicSubscribeSubscriptionBadRequest{}
}

/*PublicSubscribeSubscriptionBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>40121</td><td>Item type [{itemType}] does not support</td></tr><tr><td>40122</td><td>Subscription already been subscribed by user</td></tr><tr><td>40123</td><td>Currency [{currencyCode}] does not support</td></tr><tr><td>35123</td><td>Wallet [{walletId}] is inactive</td></tr><tr><td>35124</td><td>Wallet [{currencyCode}] has insufficient balance</td></tr></table>
*/
type PublicSubscribeSubscriptionBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicSubscribeSubscriptionBadRequest) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/users/{userId}/subscriptions][%d] publicSubscribeSubscriptionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicSubscribeSubscriptionBadRequest) ToJSONString() string {
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

func (o *PublicSubscribeSubscriptionBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicSubscribeSubscriptionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicSubscribeSubscriptionForbidden creates a PublicSubscribeSubscriptionForbidden with default headers values
func NewPublicSubscribeSubscriptionForbidden() *PublicSubscribeSubscriptionForbidden {
	return &PublicSubscribeSubscriptionForbidden{}
}

/*PublicSubscribeSubscriptionForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20016</td><td>action is banned</td></tr></table>
*/
type PublicSubscribeSubscriptionForbidden struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicSubscribeSubscriptionForbidden) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/users/{userId}/subscriptions][%d] publicSubscribeSubscriptionForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicSubscribeSubscriptionForbidden) ToJSONString() string {
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

func (o *PublicSubscribeSubscriptionForbidden) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicSubscribeSubscriptionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicSubscribeSubscriptionNotFound creates a PublicSubscribeSubscriptionNotFound with default headers values
func NewPublicSubscribeSubscriptionNotFound() *PublicSubscribeSubscriptionNotFound {
	return &PublicSubscribeSubscriptionNotFound{}
}

/*PublicSubscribeSubscriptionNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr><tr><td>36141</td><td>Currency [{currencyCode}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type PublicSubscribeSubscriptionNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicSubscribeSubscriptionNotFound) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/users/{userId}/subscriptions][%d] publicSubscribeSubscriptionNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicSubscribeSubscriptionNotFound) ToJSONString() string {
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

func (o *PublicSubscribeSubscriptionNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicSubscribeSubscriptionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicSubscribeSubscriptionConflict creates a PublicSubscribeSubscriptionConflict with default headers values
func NewPublicSubscribeSubscriptionConflict() *PublicSubscribeSubscriptionConflict {
	return &PublicSubscribeSubscriptionConflict{}
}

/*PublicSubscribeSubscriptionConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20006</td><td>optimistic lock</td></tr><tr><td>40172</td><td>Subscription [{subscriptionId}] is charging, waiting for payment notification</td></tr><tr><td>40173</td><td>Subscription [{subscriptionId}] current currency [{currentCurrency}] not match request currency [{requestCurrency}]</td></tr></table>
*/
type PublicSubscribeSubscriptionConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicSubscribeSubscriptionConflict) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/users/{userId}/subscriptions][%d] publicSubscribeSubscriptionConflict  %+v", 409, o.ToJSONString())
}

func (o *PublicSubscribeSubscriptionConflict) ToJSONString() string {
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

func (o *PublicSubscribeSubscriptionConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicSubscribeSubscriptionConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicSubscribeSubscriptionUnprocessableEntity creates a PublicSubscribeSubscriptionUnprocessableEntity with default headers values
func NewPublicSubscribeSubscriptionUnprocessableEntity() *PublicSubscribeSubscriptionUnprocessableEntity {
	return &PublicSubscribeSubscriptionUnprocessableEntity{}
}

/*PublicSubscribeSubscriptionUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicSubscribeSubscriptionUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *PublicSubscribeSubscriptionUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/users/{userId}/subscriptions][%d] publicSubscribeSubscriptionUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *PublicSubscribeSubscriptionUnprocessableEntity) ToJSONString() string {
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

func (o *PublicSubscribeSubscriptionUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicSubscribeSubscriptionUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
