// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package party

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

type PublicUpdatePartyAttributesV1Response struct {
	lobbyclientmodels.ApiResponse
	Data *lobbyclientmodels.ModelsPartyData

	Error400 *lobbyclientmodels.RestapiErrorResponseBody
	Error401 *lobbyclientmodels.RestapiErrorResponseBody
	Error403 *lobbyclientmodels.RestapiErrorResponseBody
	Error404 *lobbyclientmodels.RestapiErrorResponseBody
	Error412 *lobbyclientmodels.RestapiErrorResponseBody
	Error500 *lobbyclientmodels.RestapiErrorResponseBody
}

func (m *PublicUpdatePartyAttributesV1Response) Unpack() (*lobbyclientmodels.ModelsPartyData, *lobbyclientmodels.ApiError) {
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

		case 412:
			e, err := m.Error412.TranslateToApiError()
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
			return nil, &lobbyclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// PublicUpdatePartyAttributesV1Reader is a Reader for the PublicUpdatePartyAttributesV1 structure.
type PublicUpdatePartyAttributesV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpdatePartyAttributesV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicUpdatePartyAttributesV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUpdatePartyAttributesV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUpdatePartyAttributesV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicUpdatePartyAttributesV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUpdatePartyAttributesV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 412:
		result := NewPublicUpdatePartyAttributesV1PreconditionFailed()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicUpdatePartyAttributesV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}/attributes returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpdatePartyAttributesV1OK creates a PublicUpdatePartyAttributesV1OK with default headers values
func NewPublicUpdatePartyAttributesV1OK() *PublicUpdatePartyAttributesV1OK {
	return &PublicUpdatePartyAttributesV1OK{}
}

/*PublicUpdatePartyAttributesV1OK handles this case with default header values.

  OK
*/
type PublicUpdatePartyAttributesV1OK struct {
	Payload *lobbyclientmodels.ModelsPartyData
}

func (o *PublicUpdatePartyAttributesV1OK) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}/attributes][%d] publicUpdatePartyAttributesV1OK  %+v", 200, o.ToJSONString())
}

func (o *PublicUpdatePartyAttributesV1OK) ToJSONString() string {
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

func (o *PublicUpdatePartyAttributesV1OK) GetPayload() *lobbyclientmodels.ModelsPartyData {
	return o.Payload
}

func (o *PublicUpdatePartyAttributesV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelsPartyData)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUpdatePartyAttributesV1BadRequest creates a PublicUpdatePartyAttributesV1BadRequest with default headers values
func NewPublicUpdatePartyAttributesV1BadRequest() *PublicUpdatePartyAttributesV1BadRequest {
	return &PublicUpdatePartyAttributesV1BadRequest{}
}

/*PublicUpdatePartyAttributesV1BadRequest handles this case with default header values.

  Bad Request
*/
type PublicUpdatePartyAttributesV1BadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicUpdatePartyAttributesV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}/attributes][%d] publicUpdatePartyAttributesV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUpdatePartyAttributesV1BadRequest) ToJSONString() string {
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

func (o *PublicUpdatePartyAttributesV1BadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicUpdatePartyAttributesV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUpdatePartyAttributesV1Unauthorized creates a PublicUpdatePartyAttributesV1Unauthorized with default headers values
func NewPublicUpdatePartyAttributesV1Unauthorized() *PublicUpdatePartyAttributesV1Unauthorized {
	return &PublicUpdatePartyAttributesV1Unauthorized{}
}

/*PublicUpdatePartyAttributesV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type PublicUpdatePartyAttributesV1Unauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicUpdatePartyAttributesV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}/attributes][%d] publicUpdatePartyAttributesV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUpdatePartyAttributesV1Unauthorized) ToJSONString() string {
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

func (o *PublicUpdatePartyAttributesV1Unauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicUpdatePartyAttributesV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUpdatePartyAttributesV1Forbidden creates a PublicUpdatePartyAttributesV1Forbidden with default headers values
func NewPublicUpdatePartyAttributesV1Forbidden() *PublicUpdatePartyAttributesV1Forbidden {
	return &PublicUpdatePartyAttributesV1Forbidden{}
}

/*PublicUpdatePartyAttributesV1Forbidden handles this case with default header values.

  Forbidden
*/
type PublicUpdatePartyAttributesV1Forbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicUpdatePartyAttributesV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}/attributes][%d] publicUpdatePartyAttributesV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicUpdatePartyAttributesV1Forbidden) ToJSONString() string {
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

func (o *PublicUpdatePartyAttributesV1Forbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicUpdatePartyAttributesV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUpdatePartyAttributesV1NotFound creates a PublicUpdatePartyAttributesV1NotFound with default headers values
func NewPublicUpdatePartyAttributesV1NotFound() *PublicUpdatePartyAttributesV1NotFound {
	return &PublicUpdatePartyAttributesV1NotFound{}
}

/*PublicUpdatePartyAttributesV1NotFound handles this case with default header values.

  Not Found
*/
type PublicUpdatePartyAttributesV1NotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicUpdatePartyAttributesV1NotFound) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}/attributes][%d] publicUpdatePartyAttributesV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicUpdatePartyAttributesV1NotFound) ToJSONString() string {
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

func (o *PublicUpdatePartyAttributesV1NotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicUpdatePartyAttributesV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUpdatePartyAttributesV1PreconditionFailed creates a PublicUpdatePartyAttributesV1PreconditionFailed with default headers values
func NewPublicUpdatePartyAttributesV1PreconditionFailed() *PublicUpdatePartyAttributesV1PreconditionFailed {
	return &PublicUpdatePartyAttributesV1PreconditionFailed{}
}

/*PublicUpdatePartyAttributesV1PreconditionFailed handles this case with default header values.

  Precondition Failed
*/
type PublicUpdatePartyAttributesV1PreconditionFailed struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicUpdatePartyAttributesV1PreconditionFailed) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}/attributes][%d] publicUpdatePartyAttributesV1PreconditionFailed  %+v", 412, o.ToJSONString())
}

func (o *PublicUpdatePartyAttributesV1PreconditionFailed) ToJSONString() string {
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

func (o *PublicUpdatePartyAttributesV1PreconditionFailed) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicUpdatePartyAttributesV1PreconditionFailed) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUpdatePartyAttributesV1InternalServerError creates a PublicUpdatePartyAttributesV1InternalServerError with default headers values
func NewPublicUpdatePartyAttributesV1InternalServerError() *PublicUpdatePartyAttributesV1InternalServerError {
	return &PublicUpdatePartyAttributesV1InternalServerError{}
}

/*PublicUpdatePartyAttributesV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicUpdatePartyAttributesV1InternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicUpdatePartyAttributesV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}/attributes][%d] publicUpdatePartyAttributesV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicUpdatePartyAttributesV1InternalServerError) ToJSONString() string {
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

func (o *PublicUpdatePartyAttributesV1InternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicUpdatePartyAttributesV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
