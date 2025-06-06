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

type PublicChangeSubscriptionBillingAccountResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.SubscriptionInfo

	Error400 *platformclientmodels.ErrorEntity
	Error404 *platformclientmodels.ErrorEntity
	Error409 *platformclientmodels.ErrorEntity
}

func (m *PublicChangeSubscriptionBillingAccountResponse) Unpack() (*platformclientmodels.SubscriptionInfo, *platformclientmodels.ApiError) {
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

		default:
			return nil, &platformclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// PublicChangeSubscriptionBillingAccountReader is a Reader for the PublicChangeSubscriptionBillingAccount structure.
type PublicChangeSubscriptionBillingAccountReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicChangeSubscriptionBillingAccountReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicChangeSubscriptionBillingAccountOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicChangeSubscriptionBillingAccountBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicChangeSubscriptionBillingAccountNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicChangeSubscriptionBillingAccountConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/billingAccount returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicChangeSubscriptionBillingAccountOK creates a PublicChangeSubscriptionBillingAccountOK with default headers values
func NewPublicChangeSubscriptionBillingAccountOK() *PublicChangeSubscriptionBillingAccountOK {
	return &PublicChangeSubscriptionBillingAccountOK{}
}

/*PublicChangeSubscriptionBillingAccountOK handles this case with default header values.

  successful operation
*/
type PublicChangeSubscriptionBillingAccountOK struct {
	Payload *platformclientmodels.SubscriptionInfo
}

func (o *PublicChangeSubscriptionBillingAccountOK) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/billingAccount][%d] publicChangeSubscriptionBillingAccountOK  %+v", 200, o.ToJSONString())
}

func (o *PublicChangeSubscriptionBillingAccountOK) ToJSONString() string {
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

func (o *PublicChangeSubscriptionBillingAccountOK) GetPayload() *platformclientmodels.SubscriptionInfo {
	return o.Payload
}

func (o *PublicChangeSubscriptionBillingAccountOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.SubscriptionInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicChangeSubscriptionBillingAccountBadRequest creates a PublicChangeSubscriptionBillingAccountBadRequest with default headers values
func NewPublicChangeSubscriptionBillingAccountBadRequest() *PublicChangeSubscriptionBillingAccountBadRequest {
	return &PublicChangeSubscriptionBillingAccountBadRequest{}
}

/*PublicChangeSubscriptionBillingAccountBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>40125</td><td>Subscription [{subscriptionId}] has no real currency billing account</td></tr></table>
*/
type PublicChangeSubscriptionBillingAccountBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicChangeSubscriptionBillingAccountBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/billingAccount][%d] publicChangeSubscriptionBillingAccountBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicChangeSubscriptionBillingAccountBadRequest) ToJSONString() string {
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

func (o *PublicChangeSubscriptionBillingAccountBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicChangeSubscriptionBillingAccountBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicChangeSubscriptionBillingAccountNotFound creates a PublicChangeSubscriptionBillingAccountNotFound with default headers values
func NewPublicChangeSubscriptionBillingAccountNotFound() *PublicChangeSubscriptionBillingAccountNotFound {
	return &PublicChangeSubscriptionBillingAccountNotFound{}
}

/*PublicChangeSubscriptionBillingAccountNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>40141</td><td>Subscription [{subscriptionId}] does not exist</td></tr></table>
*/
type PublicChangeSubscriptionBillingAccountNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicChangeSubscriptionBillingAccountNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/billingAccount][%d] publicChangeSubscriptionBillingAccountNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicChangeSubscriptionBillingAccountNotFound) ToJSONString() string {
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

func (o *PublicChangeSubscriptionBillingAccountNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicChangeSubscriptionBillingAccountNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicChangeSubscriptionBillingAccountConflict creates a PublicChangeSubscriptionBillingAccountConflict with default headers values
func NewPublicChangeSubscriptionBillingAccountConflict() *PublicChangeSubscriptionBillingAccountConflict {
	return &PublicChangeSubscriptionBillingAccountConflict{}
}

/*PublicChangeSubscriptionBillingAccountConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>40171</td><td>Subscription [{subscriptionId}] is not active</td></tr><tr><td>40172</td><td>Subscription [{subscriptionId}] is charging, waiting for payment notification</td></tr></table>
*/
type PublicChangeSubscriptionBillingAccountConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicChangeSubscriptionBillingAccountConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/billingAccount][%d] publicChangeSubscriptionBillingAccountConflict  %+v", 409, o.ToJSONString())
}

func (o *PublicChangeSubscriptionBillingAccountConflict) ToJSONString() string {
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

func (o *PublicChangeSubscriptionBillingAccountConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicChangeSubscriptionBillingAccountConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
