// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package profanity

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

type AdminDeleteProfanityListResponse struct {
	lobbyclientmodels.ApiResponse

	Error400 *lobbyclientmodels.RestapiErrorResponseBody
	Error401 *lobbyclientmodels.RestapiErrorResponseBody
	Error403 *lobbyclientmodels.RestapiErrorResponseBody
	Error404 *lobbyclientmodels.RestapiErrorResponseBody
	Error500 *lobbyclientmodels.RestapiErrorResponseBody
}

func (m *AdminDeleteProfanityListResponse) Unpack() *lobbyclientmodels.ApiError {
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

// AdminDeleteProfanityListReader is a Reader for the AdminDeleteProfanityList structure.
type AdminDeleteProfanityListReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteProfanityListReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminDeleteProfanityListOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteProfanityListBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteProfanityListUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteProfanityListForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteProfanityListNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteProfanityListInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteProfanityListOK creates a AdminDeleteProfanityListOK with default headers values
func NewAdminDeleteProfanityListOK() *AdminDeleteProfanityListOK {
	return &AdminDeleteProfanityListOK{}
}

/*AdminDeleteProfanityListOK handles this case with default header values.

  OK
*/
type AdminDeleteProfanityListOK struct {
}

func (o *AdminDeleteProfanityListOK) Error() string {
	return fmt.Sprintf("[DELETE /lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list}][%d] adminDeleteProfanityListOK ", 200)
}

func (o *AdminDeleteProfanityListOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteProfanityListBadRequest creates a AdminDeleteProfanityListBadRequest with default headers values
func NewAdminDeleteProfanityListBadRequest() *AdminDeleteProfanityListBadRequest {
	return &AdminDeleteProfanityListBadRequest{}
}

/*AdminDeleteProfanityListBadRequest handles this case with default header values.

  Bad Request
*/
type AdminDeleteProfanityListBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteProfanityListBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list}][%d] adminDeleteProfanityListBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeleteProfanityListBadRequest) ToJSONString() string {
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

func (o *AdminDeleteProfanityListBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteProfanityListBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteProfanityListUnauthorized creates a AdminDeleteProfanityListUnauthorized with default headers values
func NewAdminDeleteProfanityListUnauthorized() *AdminDeleteProfanityListUnauthorized {
	return &AdminDeleteProfanityListUnauthorized{}
}

/*AdminDeleteProfanityListUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminDeleteProfanityListUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteProfanityListUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list}][%d] adminDeleteProfanityListUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteProfanityListUnauthorized) ToJSONString() string {
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

func (o *AdminDeleteProfanityListUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteProfanityListUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteProfanityListForbidden creates a AdminDeleteProfanityListForbidden with default headers values
func NewAdminDeleteProfanityListForbidden() *AdminDeleteProfanityListForbidden {
	return &AdminDeleteProfanityListForbidden{}
}

/*AdminDeleteProfanityListForbidden handles this case with default header values.

  Forbidden
*/
type AdminDeleteProfanityListForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteProfanityListForbidden) Error() string {
	return fmt.Sprintf("[DELETE /lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list}][%d] adminDeleteProfanityListForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteProfanityListForbidden) ToJSONString() string {
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

func (o *AdminDeleteProfanityListForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteProfanityListForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteProfanityListNotFound creates a AdminDeleteProfanityListNotFound with default headers values
func NewAdminDeleteProfanityListNotFound() *AdminDeleteProfanityListNotFound {
	return &AdminDeleteProfanityListNotFound{}
}

/*AdminDeleteProfanityListNotFound handles this case with default header values.

  Not Found
*/
type AdminDeleteProfanityListNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteProfanityListNotFound) Error() string {
	return fmt.Sprintf("[DELETE /lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list}][%d] adminDeleteProfanityListNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeleteProfanityListNotFound) ToJSONString() string {
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

func (o *AdminDeleteProfanityListNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteProfanityListNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteProfanityListInternalServerError creates a AdminDeleteProfanityListInternalServerError with default headers values
func NewAdminDeleteProfanityListInternalServerError() *AdminDeleteProfanityListInternalServerError {
	return &AdminDeleteProfanityListInternalServerError{}
}

/*AdminDeleteProfanityListInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminDeleteProfanityListInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteProfanityListInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list}][%d] adminDeleteProfanityListInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteProfanityListInternalServerError) ToJSONString() string {
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

func (o *AdminDeleteProfanityListInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteProfanityListInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
