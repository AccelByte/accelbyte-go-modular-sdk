// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package lobby_operations

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

type AdminJoinPartyV1Response struct {
	lobbyclientmodels.ApiResponse

	Error400 *lobbyclientmodels.RestapiErrorResponseBody
	Error401 *lobbyclientmodels.RestapiErrorResponseBody
	Error403 *lobbyclientmodels.RestapiErrorResponseBody
	Error404 *lobbyclientmodels.RestapiErrorResponseBody
	Error412 *lobbyclientmodels.RestapiErrorResponseBody
	Error500 *lobbyclientmodels.RestapiErrorResponseBody
}

func (m *AdminJoinPartyV1Response) Unpack() *lobbyclientmodels.ApiError {
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

		case 412:
			e, err := m.Error412.TranslateToApiError()
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

// AdminJoinPartyV1Reader is a Reader for the AdminJoinPartyV1 structure.
type AdminJoinPartyV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminJoinPartyV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 202:
		result := NewAdminJoinPartyV1Accepted()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminJoinPartyV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminJoinPartyV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminJoinPartyV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminJoinPartyV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 412:
		result := NewAdminJoinPartyV1PreconditionFailed()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminJoinPartyV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/join/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminJoinPartyV1Accepted creates a AdminJoinPartyV1Accepted with default headers values
func NewAdminJoinPartyV1Accepted() *AdminJoinPartyV1Accepted {
	return &AdminJoinPartyV1Accepted{}
}

/*AdminJoinPartyV1Accepted handles this case with default header values.

  Accepted
*/
type AdminJoinPartyV1Accepted struct {
}

func (o *AdminJoinPartyV1Accepted) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/join/{userId}][%d] adminJoinPartyV1Accepted ", 202)
}

func (o *AdminJoinPartyV1Accepted) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminJoinPartyV1BadRequest creates a AdminJoinPartyV1BadRequest with default headers values
func NewAdminJoinPartyV1BadRequest() *AdminJoinPartyV1BadRequest {
	return &AdminJoinPartyV1BadRequest{}
}

/*AdminJoinPartyV1BadRequest handles this case with default header values.

  Bad Request
*/
type AdminJoinPartyV1BadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminJoinPartyV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/join/{userId}][%d] adminJoinPartyV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminJoinPartyV1BadRequest) ToJSONString() string {
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

func (o *AdminJoinPartyV1BadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminJoinPartyV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminJoinPartyV1Unauthorized creates a AdminJoinPartyV1Unauthorized with default headers values
func NewAdminJoinPartyV1Unauthorized() *AdminJoinPartyV1Unauthorized {
	return &AdminJoinPartyV1Unauthorized{}
}

/*AdminJoinPartyV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminJoinPartyV1Unauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminJoinPartyV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/join/{userId}][%d] adminJoinPartyV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminJoinPartyV1Unauthorized) ToJSONString() string {
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

func (o *AdminJoinPartyV1Unauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminJoinPartyV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminJoinPartyV1Forbidden creates a AdminJoinPartyV1Forbidden with default headers values
func NewAdminJoinPartyV1Forbidden() *AdminJoinPartyV1Forbidden {
	return &AdminJoinPartyV1Forbidden{}
}

/*AdminJoinPartyV1Forbidden handles this case with default header values.

  Forbidden
*/
type AdminJoinPartyV1Forbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminJoinPartyV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/join/{userId}][%d] adminJoinPartyV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminJoinPartyV1Forbidden) ToJSONString() string {
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

func (o *AdminJoinPartyV1Forbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminJoinPartyV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminJoinPartyV1NotFound creates a AdminJoinPartyV1NotFound with default headers values
func NewAdminJoinPartyV1NotFound() *AdminJoinPartyV1NotFound {
	return &AdminJoinPartyV1NotFound{}
}

/*AdminJoinPartyV1NotFound handles this case with default header values.

  Not Found
*/
type AdminJoinPartyV1NotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminJoinPartyV1NotFound) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/join/{userId}][%d] adminJoinPartyV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminJoinPartyV1NotFound) ToJSONString() string {
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

func (o *AdminJoinPartyV1NotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminJoinPartyV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminJoinPartyV1PreconditionFailed creates a AdminJoinPartyV1PreconditionFailed with default headers values
func NewAdminJoinPartyV1PreconditionFailed() *AdminJoinPartyV1PreconditionFailed {
	return &AdminJoinPartyV1PreconditionFailed{}
}

/*AdminJoinPartyV1PreconditionFailed handles this case with default header values.

  Precondition Failed
*/
type AdminJoinPartyV1PreconditionFailed struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminJoinPartyV1PreconditionFailed) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/join/{userId}][%d] adminJoinPartyV1PreconditionFailed  %+v", 412, o.ToJSONString())
}

func (o *AdminJoinPartyV1PreconditionFailed) ToJSONString() string {
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

func (o *AdminJoinPartyV1PreconditionFailed) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminJoinPartyV1PreconditionFailed) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminJoinPartyV1InternalServerError creates a AdminJoinPartyV1InternalServerError with default headers values
func NewAdminJoinPartyV1InternalServerError() *AdminJoinPartyV1InternalServerError {
	return &AdminJoinPartyV1InternalServerError{}
}

/*AdminJoinPartyV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminJoinPartyV1InternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminJoinPartyV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/join/{userId}][%d] adminJoinPartyV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminJoinPartyV1InternalServerError) ToJSONString() string {
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

func (o *AdminJoinPartyV1InternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminJoinPartyV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
