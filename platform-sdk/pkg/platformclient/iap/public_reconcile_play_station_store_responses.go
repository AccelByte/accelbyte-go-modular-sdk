// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

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

type PublicReconcilePlayStationStoreResponse struct {
	platformclientmodels.ApiResponse
	Data []*platformclientmodels.PlayStationReconcileResult

	Error400 *platformclientmodels.ErrorEntity
	Error404 *platformclientmodels.ErrorEntity
}

func (m *PublicReconcilePlayStationStoreResponse) Unpack() ([]*platformclientmodels.PlayStationReconcileResult, *platformclientmodels.ApiError) {
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

		default:
			return nil, &platformclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// PublicReconcilePlayStationStoreReader is a Reader for the PublicReconcilePlayStationStore structure.
type PublicReconcilePlayStationStoreReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicReconcilePlayStationStoreReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicReconcilePlayStationStoreOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicReconcilePlayStationStoreBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicReconcilePlayStationStoreNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/psn/sync returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicReconcilePlayStationStoreOK creates a PublicReconcilePlayStationStoreOK with default headers values
func NewPublicReconcilePlayStationStoreOK() *PublicReconcilePlayStationStoreOK {
	return &PublicReconcilePlayStationStoreOK{}
}

/*PublicReconcilePlayStationStoreOK handles this case with default header values.

  successful operation
*/
type PublicReconcilePlayStationStoreOK struct {
	Payload []*platformclientmodels.PlayStationReconcileResult
}

func (o *PublicReconcilePlayStationStoreOK) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/psn/sync][%d] publicReconcilePlayStationStoreOK  %+v", 200, o.ToJSONString())
}

func (o *PublicReconcilePlayStationStoreOK) ToJSONString() string {
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

func (o *PublicReconcilePlayStationStoreOK) GetPayload() []*platformclientmodels.PlayStationReconcileResult {
	return o.Payload
}

func (o *PublicReconcilePlayStationStoreOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicReconcilePlayStationStoreBadRequest creates a PublicReconcilePlayStationStoreBadRequest with default headers values
func NewPublicReconcilePlayStationStoreBadRequest() *PublicReconcilePlayStationStoreBadRequest {
	return &PublicReconcilePlayStationStoreBadRequest{}
}

/*PublicReconcilePlayStationStoreBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39125</td><td>Invalid platform [{platformId}] user token</td></tr><tr><td>39126</td><td>User id [{}] in namespace [{}] doesn't link platform [{}]</td></tr><tr><td>39127</td><td>Invalid service label [{serviceLabel}]</td></tr><tr><td>39132</td><td>Bad request for playstation under namespace [{namespace}], reason: [{reason}].</td></tr>
*/
type PublicReconcilePlayStationStoreBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicReconcilePlayStationStoreBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/psn/sync][%d] publicReconcilePlayStationStoreBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicReconcilePlayStationStoreBadRequest) ToJSONString() string {
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

func (o *PublicReconcilePlayStationStoreBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicReconcilePlayStationStoreBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicReconcilePlayStationStoreNotFound creates a PublicReconcilePlayStationStoreNotFound with default headers values
func NewPublicReconcilePlayStationStoreNotFound() *PublicReconcilePlayStationStoreNotFound {
	return &PublicReconcilePlayStationStoreNotFound{}
}

/*PublicReconcilePlayStationStoreNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39143</td><td>PlayStation IAP config not found in namespace [{namespace}]</td></tr></table>
*/
type PublicReconcilePlayStationStoreNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicReconcilePlayStationStoreNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/public/namespaces/{namespace}/users/{userId}/iap/psn/sync][%d] publicReconcilePlayStationStoreNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicReconcilePlayStationStoreNotFound) ToJSONString() string {
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

func (o *PublicReconcilePlayStationStoreNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicReconcilePlayStationStoreNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
