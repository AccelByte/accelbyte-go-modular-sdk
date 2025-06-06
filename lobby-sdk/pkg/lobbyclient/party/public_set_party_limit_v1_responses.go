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

type PublicSetPartyLimitV1Response struct {
	lobbyclientmodels.ApiResponse

	Error400 *lobbyclientmodels.RestapiErrorResponseBody
	Error401 *lobbyclientmodels.RestapiErrorResponseBody
	Error403 *lobbyclientmodels.RestapiErrorResponseBody
	Error404 *lobbyclientmodels.RestapiErrorResponseBody
	Error500 *lobbyclientmodels.RestapiErrorResponseBody
}

func (m *PublicSetPartyLimitV1Response) Unpack() *lobbyclientmodels.ApiError {
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

// PublicSetPartyLimitV1Reader is a Reader for the PublicSetPartyLimitV1 structure.
type PublicSetPartyLimitV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicSetPartyLimitV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicSetPartyLimitV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicSetPartyLimitV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicSetPartyLimitV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicSetPartyLimitV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicSetPartyLimitV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicSetPartyLimitV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}/limit returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicSetPartyLimitV1OK creates a PublicSetPartyLimitV1OK with default headers values
func NewPublicSetPartyLimitV1OK() *PublicSetPartyLimitV1OK {
	return &PublicSetPartyLimitV1OK{}
}

/*PublicSetPartyLimitV1OK handles this case with default header values.

  OK
*/
type PublicSetPartyLimitV1OK struct {
}

func (o *PublicSetPartyLimitV1OK) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}/limit][%d] publicSetPartyLimitV1OK ", 200)
}

func (o *PublicSetPartyLimitV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicSetPartyLimitV1BadRequest creates a PublicSetPartyLimitV1BadRequest with default headers values
func NewPublicSetPartyLimitV1BadRequest() *PublicSetPartyLimitV1BadRequest {
	return &PublicSetPartyLimitV1BadRequest{}
}

/*PublicSetPartyLimitV1BadRequest handles this case with default header values.

  Bad Request
*/
type PublicSetPartyLimitV1BadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicSetPartyLimitV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}/limit][%d] publicSetPartyLimitV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicSetPartyLimitV1BadRequest) ToJSONString() string {
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

func (o *PublicSetPartyLimitV1BadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicSetPartyLimitV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSetPartyLimitV1Unauthorized creates a PublicSetPartyLimitV1Unauthorized with default headers values
func NewPublicSetPartyLimitV1Unauthorized() *PublicSetPartyLimitV1Unauthorized {
	return &PublicSetPartyLimitV1Unauthorized{}
}

/*PublicSetPartyLimitV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type PublicSetPartyLimitV1Unauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicSetPartyLimitV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}/limit][%d] publicSetPartyLimitV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicSetPartyLimitV1Unauthorized) ToJSONString() string {
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

func (o *PublicSetPartyLimitV1Unauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicSetPartyLimitV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSetPartyLimitV1Forbidden creates a PublicSetPartyLimitV1Forbidden with default headers values
func NewPublicSetPartyLimitV1Forbidden() *PublicSetPartyLimitV1Forbidden {
	return &PublicSetPartyLimitV1Forbidden{}
}

/*PublicSetPartyLimitV1Forbidden handles this case with default header values.

  Forbidden
*/
type PublicSetPartyLimitV1Forbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicSetPartyLimitV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}/limit][%d] publicSetPartyLimitV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicSetPartyLimitV1Forbidden) ToJSONString() string {
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

func (o *PublicSetPartyLimitV1Forbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicSetPartyLimitV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSetPartyLimitV1NotFound creates a PublicSetPartyLimitV1NotFound with default headers values
func NewPublicSetPartyLimitV1NotFound() *PublicSetPartyLimitV1NotFound {
	return &PublicSetPartyLimitV1NotFound{}
}

/*PublicSetPartyLimitV1NotFound handles this case with default header values.

  Not Found
*/
type PublicSetPartyLimitV1NotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicSetPartyLimitV1NotFound) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}/limit][%d] publicSetPartyLimitV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicSetPartyLimitV1NotFound) ToJSONString() string {
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

func (o *PublicSetPartyLimitV1NotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicSetPartyLimitV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSetPartyLimitV1InternalServerError creates a PublicSetPartyLimitV1InternalServerError with default headers values
func NewPublicSetPartyLimitV1InternalServerError() *PublicSetPartyLimitV1InternalServerError {
	return &PublicSetPartyLimitV1InternalServerError{}
}

/*PublicSetPartyLimitV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicSetPartyLimitV1InternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublicSetPartyLimitV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}/limit][%d] publicSetPartyLimitV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicSetPartyLimitV1InternalServerError) ToJSONString() string {
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

func (o *PublicSetPartyLimitV1InternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublicSetPartyLimitV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
