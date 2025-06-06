// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package tier

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
)

type UpdateTierResponse struct {
	seasonpassclientmodels.ApiResponse
	Data *seasonpassclientmodels.Tier

	Error400 *seasonpassclientmodels.ErrorEntity
	Error404 *seasonpassclientmodels.ErrorEntity
	Error409 *seasonpassclientmodels.ErrorEntity
	Error422 *seasonpassclientmodels.ValidationErrorEntity
}

func (m *UpdateTierResponse) Unpack() (*seasonpassclientmodels.Tier, *seasonpassclientmodels.ApiError) {
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

		case 422:
			e, err := m.Error422.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		default:
			return nil, &seasonpassclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// UpdateTierReader is a Reader for the UpdateTier structure.
type UpdateTierReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateTierReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateTierOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateTierBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateTierNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdateTierConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUpdateTierUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateTierOK creates a UpdateTierOK with default headers values
func NewUpdateTierOK() *UpdateTierOK {
	return &UpdateTierOK{}
}

/*UpdateTierOK handles this case with default header values.

  successful operation
*/
type UpdateTierOK struct {
	Payload *seasonpassclientmodels.Tier
}

func (o *UpdateTierOK) Error() string {
	return fmt.Sprintf("[PUT /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}][%d] updateTierOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateTierOK) ToJSONString() string {
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

func (o *UpdateTierOK) GetPayload() *seasonpassclientmodels.Tier {
	return o.Payload
}

func (o *UpdateTierOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.Tier)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateTierBadRequest creates a UpdateTierBadRequest with default headers values
func NewUpdateTierBadRequest() *UpdateTierBadRequest {
	return &UpdateTierBadRequest{}
}

/*UpdateTierBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr></table>
*/
type UpdateTierBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *UpdateTierBadRequest) Error() string {
	return fmt.Sprintf("[PUT /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}][%d] updateTierBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateTierBadRequest) ToJSONString() string {
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

func (o *UpdateTierBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateTierBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateTierNotFound creates a UpdateTierNotFound with default headers values
func NewUpdateTierNotFound() *UpdateTierNotFound {
	return &UpdateTierNotFound{}
}

/*UpdateTierNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49143</td><td>Season [{seasonId}] does not exist in namespace [{namespace}]</td></tr><tr><td>49144</td><td>Reward [{code}] does not exist</td></tr><tr><td>49145</td><td>Pass [{code}] does not exist</td></tr><tr><td>49146</td><td>Tier does not exist</td></tr></table>
*/
type UpdateTierNotFound struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *UpdateTierNotFound) Error() string {
	return fmt.Sprintf("[PUT /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}][%d] updateTierNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateTierNotFound) ToJSONString() string {
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

func (o *UpdateTierNotFound) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateTierNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateTierConflict creates a UpdateTierConflict with default headers values
func NewUpdateTierConflict() *UpdateTierConflict {
	return &UpdateTierConflict{}
}

/*UpdateTierConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49171</td><td>Invalid season status [{status}]</td></tr></table>
*/
type UpdateTierConflict struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *UpdateTierConflict) Error() string {
	return fmt.Sprintf("[PUT /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}][%d] updateTierConflict  %+v", 409, o.ToJSONString())
}

func (o *UpdateTierConflict) ToJSONString() string {
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

func (o *UpdateTierConflict) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateTierConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateTierUnprocessableEntity creates a UpdateTierUnprocessableEntity with default headers values
func NewUpdateTierUnprocessableEntity() *UpdateTierUnprocessableEntity {
	return &UpdateTierUnprocessableEntity{}
}

/*UpdateTierUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdateTierUnprocessableEntity struct {
	Payload *seasonpassclientmodels.ValidationErrorEntity
}

func (o *UpdateTierUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}][%d] updateTierUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UpdateTierUnprocessableEntity) ToJSONString() string {
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

func (o *UpdateTierUnprocessableEntity) GetPayload() *seasonpassclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdateTierUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
