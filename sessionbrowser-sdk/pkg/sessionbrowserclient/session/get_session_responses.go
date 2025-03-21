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

type GetSessionResponse struct {
	sessionbrowserclientmodels.ApiResponse
	Data *sessionbrowserclientmodels.ModelsSessionResponse

	Error404 *sessionbrowserclientmodels.ResponseError
	Error500 *sessionbrowserclientmodels.ResponseError
}

func (m *GetSessionResponse) Unpack() (*sessionbrowserclientmodels.ModelsSessionResponse, *sessionbrowserclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

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

// GetSessionReader is a Reader for the GetSession structure.
type GetSessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetSessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetSessionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetSessionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetSessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetSessionOK creates a GetSessionOK with default headers values
func NewGetSessionOK() *GetSessionOK {
	return &GetSessionOK{}
}

/*GetSessionOK handles this case with default header values.

  session get
*/
type GetSessionOK struct {
	Payload *sessionbrowserclientmodels.ModelsSessionResponse
}

func (o *GetSessionOK) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}][%d] getSessionOK  %+v", 200, o.ToJSONString())
}

func (o *GetSessionOK) ToJSONString() string {
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

func (o *GetSessionOK) GetPayload() *sessionbrowserclientmodels.ModelsSessionResponse {
	return o.Payload
}

func (o *GetSessionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetSessionNotFound creates a GetSessionNotFound with default headers values
func NewGetSessionNotFound() *GetSessionNotFound {
	return &GetSessionNotFound{}
}

/*GetSessionNotFound handles this case with default header values.

  session not found
*/
type GetSessionNotFound struct {
	Payload *sessionbrowserclientmodels.ResponseError
}

func (o *GetSessionNotFound) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}][%d] getSessionNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetSessionNotFound) ToJSONString() string {
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

func (o *GetSessionNotFound) GetPayload() *sessionbrowserclientmodels.ResponseError {
	return o.Payload
}

func (o *GetSessionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetSessionInternalServerError creates a GetSessionInternalServerError with default headers values
func NewGetSessionInternalServerError() *GetSessionInternalServerError {
	return &GetSessionInternalServerError{}
}

/*GetSessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetSessionInternalServerError struct {
	Payload *sessionbrowserclientmodels.ResponseError
}

func (o *GetSessionInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}][%d] getSessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetSessionInternalServerError) ToJSONString() string {
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

func (o *GetSessionInternalServerError) GetPayload() *sessionbrowserclientmodels.ResponseError {
	return o.Payload
}

func (o *GetSessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
