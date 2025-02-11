// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package game_session

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclientmodels"
)

type AdminQueryGameSessionsResponse struct {
	sessionclientmodels.ApiResponse
	Data *sessionclientmodels.ApimodelsGameSessionQueryResponse

	Error400 *sessionclientmodels.ResponseError
	Error401 *sessionclientmodels.ResponseError
	Error403 *sessionclientmodels.ResponseError
	Error500 *sessionclientmodels.ResponseError
}

func (m *AdminQueryGameSessionsResponse) Unpack() (*sessionclientmodels.ApimodelsGameSessionQueryResponse, *sessionclientmodels.ApiError) {
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

		case 500:
			e, err := m.Error500.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		default:
			return nil, &sessionclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// AdminQueryGameSessionsReader is a Reader for the AdminQueryGameSessions structure.
type AdminQueryGameSessionsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminQueryGameSessionsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminQueryGameSessionsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminQueryGameSessionsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminQueryGameSessionsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminQueryGameSessionsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminQueryGameSessionsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/admin/namespaces/{namespace}/gamesessions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminQueryGameSessionsOK creates a AdminQueryGameSessionsOK with default headers values
func NewAdminQueryGameSessionsOK() *AdminQueryGameSessionsOK {
	return &AdminQueryGameSessionsOK{}
}

/*AdminQueryGameSessionsOK handles this case with default header values.

  OK
*/
type AdminQueryGameSessionsOK struct {
	Payload *sessionclientmodels.ApimodelsGameSessionQueryResponse
}

func (o *AdminQueryGameSessionsOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/gamesessions][%d] adminQueryGameSessionsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminQueryGameSessionsOK) ToJSONString() string {
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

func (o *AdminQueryGameSessionsOK) GetPayload() *sessionclientmodels.ApimodelsGameSessionQueryResponse {
	return o.Payload
}

func (o *AdminQueryGameSessionsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ApimodelsGameSessionQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminQueryGameSessionsBadRequest creates a AdminQueryGameSessionsBadRequest with default headers values
func NewAdminQueryGameSessionsBadRequest() *AdminQueryGameSessionsBadRequest {
	return &AdminQueryGameSessionsBadRequest{}
}

/*AdminQueryGameSessionsBadRequest handles this case with default header values.

  Bad Request
*/
type AdminQueryGameSessionsBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminQueryGameSessionsBadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/gamesessions][%d] adminQueryGameSessionsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminQueryGameSessionsBadRequest) ToJSONString() string {
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

func (o *AdminQueryGameSessionsBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryGameSessionsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminQueryGameSessionsUnauthorized creates a AdminQueryGameSessionsUnauthorized with default headers values
func NewAdminQueryGameSessionsUnauthorized() *AdminQueryGameSessionsUnauthorized {
	return &AdminQueryGameSessionsUnauthorized{}
}

/*AdminQueryGameSessionsUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminQueryGameSessionsUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminQueryGameSessionsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/gamesessions][%d] adminQueryGameSessionsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminQueryGameSessionsUnauthorized) ToJSONString() string {
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

func (o *AdminQueryGameSessionsUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryGameSessionsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminQueryGameSessionsForbidden creates a AdminQueryGameSessionsForbidden with default headers values
func NewAdminQueryGameSessionsForbidden() *AdminQueryGameSessionsForbidden {
	return &AdminQueryGameSessionsForbidden{}
}

/*AdminQueryGameSessionsForbidden handles this case with default header values.

  Forbidden
*/
type AdminQueryGameSessionsForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminQueryGameSessionsForbidden) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/gamesessions][%d] adminQueryGameSessionsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminQueryGameSessionsForbidden) ToJSONString() string {
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

func (o *AdminQueryGameSessionsForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryGameSessionsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminQueryGameSessionsInternalServerError creates a AdminQueryGameSessionsInternalServerError with default headers values
func NewAdminQueryGameSessionsInternalServerError() *AdminQueryGameSessionsInternalServerError {
	return &AdminQueryGameSessionsInternalServerError{}
}

/*AdminQueryGameSessionsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminQueryGameSessionsInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminQueryGameSessionsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/gamesessions][%d] adminQueryGameSessionsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminQueryGameSessionsInternalServerError) ToJSONString() string {
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

func (o *AdminQueryGameSessionsInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryGameSessionsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
