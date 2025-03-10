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

type AdminGetSessionResponse struct {
	sessionbrowserclientmodels.ApiResponse
	Data *sessionbrowserclientmodels.ModelsAdminSessionResponse

	Error404 *sessionbrowserclientmodels.RestapiErrorResponseV2
	Error500 *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (m *AdminGetSessionResponse) Unpack() (*sessionbrowserclientmodels.ModelsAdminSessionResponse, *sessionbrowserclientmodels.ApiError) {
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

// AdminGetSessionReader is a Reader for the AdminGetSession structure.
type AdminGetSessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetSessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetSessionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetSessionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetSessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionbrowser/admin/namespaces/{namespace}/gamesession/{sessionID} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetSessionOK creates a AdminGetSessionOK with default headers values
func NewAdminGetSessionOK() *AdminGetSessionOK {
	return &AdminGetSessionOK{}
}

/*AdminGetSessionOK handles this case with default header values.

  session get
*/
type AdminGetSessionOK struct {
	Payload *sessionbrowserclientmodels.ModelsAdminSessionResponse
}

func (o *AdminGetSessionOK) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/admin/namespaces/{namespace}/gamesession/{sessionID}][%d] adminGetSessionOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetSessionOK) ToJSONString() string {
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

func (o *AdminGetSessionOK) GetPayload() *sessionbrowserclientmodels.ModelsAdminSessionResponse {
	return o.Payload
}

func (o *AdminGetSessionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.ModelsAdminSessionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetSessionNotFound creates a AdminGetSessionNotFound with default headers values
func NewAdminGetSessionNotFound() *AdminGetSessionNotFound {
	return &AdminGetSessionNotFound{}
}

/*AdminGetSessionNotFound handles this case with default header values.

  session not found
*/
type AdminGetSessionNotFound struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *AdminGetSessionNotFound) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/admin/namespaces/{namespace}/gamesession/{sessionID}][%d] adminGetSessionNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetSessionNotFound) ToJSONString() string {
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

func (o *AdminGetSessionNotFound) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *AdminGetSessionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.RestapiErrorResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetSessionInternalServerError creates a AdminGetSessionInternalServerError with default headers values
func NewAdminGetSessionInternalServerError() *AdminGetSessionInternalServerError {
	return &AdminGetSessionInternalServerError{}
}

/*AdminGetSessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetSessionInternalServerError struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *AdminGetSessionInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/admin/namespaces/{namespace}/gamesession/{sessionID}][%d] adminGetSessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetSessionInternalServerError) ToJSONString() string {
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

func (o *AdminGetSessionInternalServerError) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *AdminGetSessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.RestapiErrorResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
