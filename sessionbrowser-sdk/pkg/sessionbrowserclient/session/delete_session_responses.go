// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package session

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/sessionbrowser-sdk/pkg/sessionbrowserclientmodels"
)

type DeleteSessionResponse struct {
	sessionbrowserclientmodels.ApiResponse
	Data *sessionbrowserclientmodels.ModelsSessionResponse

	Error400 *sessionbrowserclientmodels.ResponseError
	Error404 *sessionbrowserclientmodels.ResponseError
	Error500 *sessionbrowserclientmodels.ResponseError
}

func (m *DeleteSessionResponse) Unpack() (*sessionbrowserclientmodels.ModelsSessionResponse, *sessionbrowserclientmodels.ApiError) {
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

		case 500:
			e, err := m.Error500.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		default:
			return nil, &sessionbrowserclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// DeleteSessionReader is a Reader for the DeleteSession structure.
type DeleteSessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteSessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDeleteSessionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteSessionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteSessionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteSessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteSessionOK creates a DeleteSessionOK with default headers values
func NewDeleteSessionOK() *DeleteSessionOK {
	return &DeleteSessionOK{}
}

/*DeleteSessionOK handles this case with default header values.

  session get
*/
type DeleteSessionOK struct {
	Payload *sessionbrowserclientmodels.ModelsSessionResponse
}

func (o *DeleteSessionOK) Error() string {
	return fmt.Sprintf("[DELETE /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}][%d] deleteSessionOK  %+v", 200, o.ToJSONString())
}

func (o *DeleteSessionOK) ToJSONString() string {
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

func (o *DeleteSessionOK) GetPayload() *sessionbrowserclientmodels.ModelsSessionResponse {
	return o.Payload
}

func (o *DeleteSessionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.ModelsSessionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteSessionBadRequest creates a DeleteSessionBadRequest with default headers values
func NewDeleteSessionBadRequest() *DeleteSessionBadRequest {
	return &DeleteSessionBadRequest{}
}

/*DeleteSessionBadRequest handles this case with default header values.

  malformed request
*/
type DeleteSessionBadRequest struct {
	Payload *sessionbrowserclientmodels.ResponseError
}

func (o *DeleteSessionBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}][%d] deleteSessionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteSessionBadRequest) ToJSONString() string {
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

func (o *DeleteSessionBadRequest) GetPayload() *sessionbrowserclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteSessionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteSessionNotFound creates a DeleteSessionNotFound with default headers values
func NewDeleteSessionNotFound() *DeleteSessionNotFound {
	return &DeleteSessionNotFound{}
}

/*DeleteSessionNotFound handles this case with default header values.

  session not found
*/
type DeleteSessionNotFound struct {
	Payload *sessionbrowserclientmodels.ResponseError
}

func (o *DeleteSessionNotFound) Error() string {
	return fmt.Sprintf("[DELETE /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}][%d] deleteSessionNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteSessionNotFound) ToJSONString() string {
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

func (o *DeleteSessionNotFound) GetPayload() *sessionbrowserclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteSessionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteSessionInternalServerError creates a DeleteSessionInternalServerError with default headers values
func NewDeleteSessionInternalServerError() *DeleteSessionInternalServerError {
	return &DeleteSessionInternalServerError{}
}

/*DeleteSessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteSessionInternalServerError struct {
	Payload *sessionbrowserclientmodels.ResponseError
}

func (o *DeleteSessionInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}][%d] deleteSessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteSessionInternalServerError) ToJSONString() string {
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

func (o *DeleteSessionInternalServerError) GetPayload() *sessionbrowserclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteSessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
