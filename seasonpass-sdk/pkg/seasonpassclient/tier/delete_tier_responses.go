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

type DeleteTierResponse struct {
	seasonpassclientmodels.ApiResponse

	Error400 *seasonpassclientmodels.ErrorEntity
	Error404 *seasonpassclientmodels.ErrorEntity
	Error409 *seasonpassclientmodels.ErrorEntity
}

func (m *DeleteTierResponse) Unpack() *seasonpassclientmodels.ApiError {
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

		default:
			return &seasonpassclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// DeleteTierReader is a Reader for the DeleteTier structure.
type DeleteTierReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteTierReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteTierNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteTierBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteTierNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewDeleteTierConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteTierNoContent creates a DeleteTierNoContent with default headers values
func NewDeleteTierNoContent() *DeleteTierNoContent {
	return &DeleteTierNoContent{}
}

/*DeleteTierNoContent handles this case with default header values.

  Delete tier successfully
*/
type DeleteTierNoContent struct {
}

func (o *DeleteTierNoContent) Error() string {
	return fmt.Sprintf("[DELETE /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}][%d] deleteTierNoContent ", 204)
}

func (o *DeleteTierNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteTierBadRequest creates a DeleteTierBadRequest with default headers values
func NewDeleteTierBadRequest() *DeleteTierBadRequest {
	return &DeleteTierBadRequest{}
}

/*DeleteTierBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr></table>
*/
type DeleteTierBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *DeleteTierBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}][%d] deleteTierBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteTierBadRequest) ToJSONString() string {
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

func (o *DeleteTierBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteTierBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteTierNotFound creates a DeleteTierNotFound with default headers values
func NewDeleteTierNotFound() *DeleteTierNotFound {
	return &DeleteTierNotFound{}
}

/*DeleteTierNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49143</td><td>Season [{seasonId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type DeleteTierNotFound struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *DeleteTierNotFound) Error() string {
	return fmt.Sprintf("[DELETE /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}][%d] deleteTierNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteTierNotFound) ToJSONString() string {
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

func (o *DeleteTierNotFound) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteTierNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteTierConflict creates a DeleteTierConflict with default headers values
func NewDeleteTierConflict() *DeleteTierConflict {
	return &DeleteTierConflict{}
}

/*DeleteTierConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49171</td><td>Invalid season status [{status}]</td></tr></table>
*/
type DeleteTierConflict struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *DeleteTierConflict) Error() string {
	return fmt.Sprintf("[DELETE /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}][%d] deleteTierConflict  %+v", 409, o.ToJSONString())
}

func (o *DeleteTierConflict) ToJSONString() string {
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

func (o *DeleteTierConflict) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteTierConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
