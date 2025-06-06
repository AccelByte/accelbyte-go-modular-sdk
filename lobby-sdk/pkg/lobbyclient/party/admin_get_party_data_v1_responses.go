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

type AdminGetPartyDataV1Response struct {
	lobbyclientmodels.ApiResponse
	Data *lobbyclientmodels.ModelsPartyData

	Error400 *lobbyclientmodels.RestapiErrorResponseBody
	Error401 *lobbyclientmodels.RestapiErrorResponseBody
	Error403 *lobbyclientmodels.RestapiErrorResponseBody
	Error404 *lobbyclientmodels.RestapiErrorResponseBody
	Error500 *lobbyclientmodels.RestapiErrorResponseBody
}

func (m *AdminGetPartyDataV1Response) Unpack() (*lobbyclientmodels.ModelsPartyData, *lobbyclientmodels.ApiError) {
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

// AdminGetPartyDataV1Reader is a Reader for the AdminGetPartyDataV1 structure.
type AdminGetPartyDataV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetPartyDataV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetPartyDataV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetPartyDataV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetPartyDataV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetPartyDataV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetPartyDataV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetPartyDataV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetPartyDataV1OK creates a AdminGetPartyDataV1OK with default headers values
func NewAdminGetPartyDataV1OK() *AdminGetPartyDataV1OK {
	return &AdminGetPartyDataV1OK{}
}

/*AdminGetPartyDataV1OK handles this case with default header values.

  OK
*/
type AdminGetPartyDataV1OK struct {
	Payload *lobbyclientmodels.ModelsPartyData
}

func (o *AdminGetPartyDataV1OK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}][%d] adminGetPartyDataV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetPartyDataV1OK) ToJSONString() string {
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

func (o *AdminGetPartyDataV1OK) GetPayload() *lobbyclientmodels.ModelsPartyData {
	return o.Payload
}

func (o *AdminGetPartyDataV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetPartyDataV1BadRequest creates a AdminGetPartyDataV1BadRequest with default headers values
func NewAdminGetPartyDataV1BadRequest() *AdminGetPartyDataV1BadRequest {
	return &AdminGetPartyDataV1BadRequest{}
}

/*AdminGetPartyDataV1BadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetPartyDataV1BadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetPartyDataV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}][%d] adminGetPartyDataV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetPartyDataV1BadRequest) ToJSONString() string {
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

func (o *AdminGetPartyDataV1BadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetPartyDataV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetPartyDataV1Unauthorized creates a AdminGetPartyDataV1Unauthorized with default headers values
func NewAdminGetPartyDataV1Unauthorized() *AdminGetPartyDataV1Unauthorized {
	return &AdminGetPartyDataV1Unauthorized{}
}

/*AdminGetPartyDataV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetPartyDataV1Unauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetPartyDataV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}][%d] adminGetPartyDataV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetPartyDataV1Unauthorized) ToJSONString() string {
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

func (o *AdminGetPartyDataV1Unauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetPartyDataV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetPartyDataV1Forbidden creates a AdminGetPartyDataV1Forbidden with default headers values
func NewAdminGetPartyDataV1Forbidden() *AdminGetPartyDataV1Forbidden {
	return &AdminGetPartyDataV1Forbidden{}
}

/*AdminGetPartyDataV1Forbidden handles this case with default header values.

  Forbidden
*/
type AdminGetPartyDataV1Forbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetPartyDataV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}][%d] adminGetPartyDataV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetPartyDataV1Forbidden) ToJSONString() string {
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

func (o *AdminGetPartyDataV1Forbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetPartyDataV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetPartyDataV1NotFound creates a AdminGetPartyDataV1NotFound with default headers values
func NewAdminGetPartyDataV1NotFound() *AdminGetPartyDataV1NotFound {
	return &AdminGetPartyDataV1NotFound{}
}

/*AdminGetPartyDataV1NotFound handles this case with default header values.

  Not Found
*/
type AdminGetPartyDataV1NotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetPartyDataV1NotFound) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}][%d] adminGetPartyDataV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetPartyDataV1NotFound) ToJSONString() string {
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

func (o *AdminGetPartyDataV1NotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetPartyDataV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetPartyDataV1InternalServerError creates a AdminGetPartyDataV1InternalServerError with default headers values
func NewAdminGetPartyDataV1InternalServerError() *AdminGetPartyDataV1InternalServerError {
	return &AdminGetPartyDataV1InternalServerError{}
}

/*AdminGetPartyDataV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetPartyDataV1InternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetPartyDataV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}][%d] adminGetPartyDataV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetPartyDataV1InternalServerError) ToJSONString() string {
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

func (o *AdminGetPartyDataV1InternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetPartyDataV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
