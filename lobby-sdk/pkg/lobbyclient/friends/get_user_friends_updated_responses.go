// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package friends

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

type GetUserFriendsUpdatedResponse struct {
	lobbyclientmodels.ApiResponse
	Data []*lobbyclientmodels.ModelGetUserFriendsResponse

	Error400 *lobbyclientmodels.RestapiErrorResponseV1
	Error401 *lobbyclientmodels.RestapiErrorResponseV1
	Error403 *lobbyclientmodels.RestapiErrorResponseV1
	Error404 *lobbyclientmodels.RestapiErrorResponseV1
	Error500 *lobbyclientmodels.RestapiErrorResponseV1
}

func (m *GetUserFriendsUpdatedResponse) Unpack() ([]*lobbyclientmodels.ModelGetUserFriendsResponse, *lobbyclientmodels.ApiError) {
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

// GetUserFriendsUpdatedReader is a Reader for the GetUserFriendsUpdated structure.
type GetUserFriendsUpdatedReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserFriendsUpdatedReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserFriendsUpdatedOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetUserFriendsUpdatedBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserFriendsUpdatedUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserFriendsUpdatedForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserFriendsUpdatedNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetUserFriendsUpdatedInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /friends/namespaces/{namespace}/me returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserFriendsUpdatedOK creates a GetUserFriendsUpdatedOK with default headers values
func NewGetUserFriendsUpdatedOK() *GetUserFriendsUpdatedOK {
	return &GetUserFriendsUpdatedOK{}
}

/*GetUserFriendsUpdatedOK handles this case with default header values.

  OK
*/
type GetUserFriendsUpdatedOK struct {
	Payload []*lobbyclientmodels.ModelGetUserFriendsResponse
}

func (o *GetUserFriendsUpdatedOK) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me][%d] getUserFriendsUpdatedOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserFriendsUpdatedOK) ToJSONString() string {
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

func (o *GetUserFriendsUpdatedOK) GetPayload() []*lobbyclientmodels.ModelGetUserFriendsResponse {
	return o.Payload
}

func (o *GetUserFriendsUpdatedOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserFriendsUpdatedBadRequest creates a GetUserFriendsUpdatedBadRequest with default headers values
func NewGetUserFriendsUpdatedBadRequest() *GetUserFriendsUpdatedBadRequest {
	return &GetUserFriendsUpdatedBadRequest{}
}

/*GetUserFriendsUpdatedBadRequest handles this case with default header values.

  Bad Request
*/
type GetUserFriendsUpdatedBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserFriendsUpdatedBadRequest) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me][%d] getUserFriendsUpdatedBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetUserFriendsUpdatedBadRequest) ToJSONString() string {
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

func (o *GetUserFriendsUpdatedBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserFriendsUpdatedBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserFriendsUpdatedUnauthorized creates a GetUserFriendsUpdatedUnauthorized with default headers values
func NewGetUserFriendsUpdatedUnauthorized() *GetUserFriendsUpdatedUnauthorized {
	return &GetUserFriendsUpdatedUnauthorized{}
}

/*GetUserFriendsUpdatedUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetUserFriendsUpdatedUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserFriendsUpdatedUnauthorized) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me][%d] getUserFriendsUpdatedUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUserFriendsUpdatedUnauthorized) ToJSONString() string {
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

func (o *GetUserFriendsUpdatedUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserFriendsUpdatedUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserFriendsUpdatedForbidden creates a GetUserFriendsUpdatedForbidden with default headers values
func NewGetUserFriendsUpdatedForbidden() *GetUserFriendsUpdatedForbidden {
	return &GetUserFriendsUpdatedForbidden{}
}

/*GetUserFriendsUpdatedForbidden handles this case with default header values.

  Forbidden
*/
type GetUserFriendsUpdatedForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserFriendsUpdatedForbidden) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me][%d] getUserFriendsUpdatedForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUserFriendsUpdatedForbidden) ToJSONString() string {
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

func (o *GetUserFriendsUpdatedForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserFriendsUpdatedForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserFriendsUpdatedNotFound creates a GetUserFriendsUpdatedNotFound with default headers values
func NewGetUserFriendsUpdatedNotFound() *GetUserFriendsUpdatedNotFound {
	return &GetUserFriendsUpdatedNotFound{}
}

/*GetUserFriendsUpdatedNotFound handles this case with default header values.

  Not Found
*/
type GetUserFriendsUpdatedNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserFriendsUpdatedNotFound) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me][%d] getUserFriendsUpdatedNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetUserFriendsUpdatedNotFound) ToJSONString() string {
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

func (o *GetUserFriendsUpdatedNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserFriendsUpdatedNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserFriendsUpdatedInternalServerError creates a GetUserFriendsUpdatedInternalServerError with default headers values
func NewGetUserFriendsUpdatedInternalServerError() *GetUserFriendsUpdatedInternalServerError {
	return &GetUserFriendsUpdatedInternalServerError{}
}

/*GetUserFriendsUpdatedInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetUserFriendsUpdatedInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserFriendsUpdatedInternalServerError) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me][%d] getUserFriendsUpdatedInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetUserFriendsUpdatedInternalServerError) ToJSONString() string {
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

func (o *GetUserFriendsUpdatedInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserFriendsUpdatedInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
