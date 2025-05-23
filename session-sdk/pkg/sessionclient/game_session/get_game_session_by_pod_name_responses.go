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

type GetGameSessionByPodNameResponse struct {
	sessionclientmodels.ApiResponse
	Data *sessionclientmodels.ApimodelsGameSessionResponse

	Error400 *sessionclientmodels.ResponseError
	Error401 *sessionclientmodels.ResponseError
	Error403 *sessionclientmodels.ResponseError
	Error404 *sessionclientmodels.ResponseError
	Error500 *sessionclientmodels.ResponseError
}

func (m *GetGameSessionByPodNameResponse) Unpack() (*sessionclientmodels.ApimodelsGameSessionResponse, *sessionclientmodels.ApiError) {
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
			return nil, &sessionclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// GetGameSessionByPodNameReader is a Reader for the GetGameSessionByPodName structure.
type GetGameSessionByPodNameReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetGameSessionByPodNameReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetGameSessionByPodNameOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetGameSessionByPodNameBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetGameSessionByPodNameUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetGameSessionByPodNameForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetGameSessionByPodNameNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetGameSessionByPodNameInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/public/namespaces/{namespace}/gamesessions/servers/{podName} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetGameSessionByPodNameOK creates a GetGameSessionByPodNameOK with default headers values
func NewGetGameSessionByPodNameOK() *GetGameSessionByPodNameOK {
	return &GetGameSessionByPodNameOK{}
}

/*GetGameSessionByPodNameOK handles this case with default header values.

  OK
*/
type GetGameSessionByPodNameOK struct {
	Payload *sessionclientmodels.ApimodelsGameSessionResponse
}

func (o *GetGameSessionByPodNameOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/gamesessions/servers/{podName}][%d] getGameSessionByPodNameOK  %+v", 200, o.ToJSONString())
}

func (o *GetGameSessionByPodNameOK) ToJSONString() string {
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

func (o *GetGameSessionByPodNameOK) GetPayload() *sessionclientmodels.ApimodelsGameSessionResponse {
	return o.Payload
}

func (o *GetGameSessionByPodNameOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ApimodelsGameSessionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetGameSessionByPodNameBadRequest creates a GetGameSessionByPodNameBadRequest with default headers values
func NewGetGameSessionByPodNameBadRequest() *GetGameSessionByPodNameBadRequest {
	return &GetGameSessionByPodNameBadRequest{}
}

/*GetGameSessionByPodNameBadRequest handles this case with default header values.

  Bad Request
*/
type GetGameSessionByPodNameBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *GetGameSessionByPodNameBadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/gamesessions/servers/{podName}][%d] getGameSessionByPodNameBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetGameSessionByPodNameBadRequest) ToJSONString() string {
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

func (o *GetGameSessionByPodNameBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *GetGameSessionByPodNameBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetGameSessionByPodNameUnauthorized creates a GetGameSessionByPodNameUnauthorized with default headers values
func NewGetGameSessionByPodNameUnauthorized() *GetGameSessionByPodNameUnauthorized {
	return &GetGameSessionByPodNameUnauthorized{}
}

/*GetGameSessionByPodNameUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetGameSessionByPodNameUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *GetGameSessionByPodNameUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/gamesessions/servers/{podName}][%d] getGameSessionByPodNameUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetGameSessionByPodNameUnauthorized) ToJSONString() string {
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

func (o *GetGameSessionByPodNameUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *GetGameSessionByPodNameUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetGameSessionByPodNameForbidden creates a GetGameSessionByPodNameForbidden with default headers values
func NewGetGameSessionByPodNameForbidden() *GetGameSessionByPodNameForbidden {
	return &GetGameSessionByPodNameForbidden{}
}

/*GetGameSessionByPodNameForbidden handles this case with default header values.

  Forbidden
*/
type GetGameSessionByPodNameForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *GetGameSessionByPodNameForbidden) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/gamesessions/servers/{podName}][%d] getGameSessionByPodNameForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetGameSessionByPodNameForbidden) ToJSONString() string {
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

func (o *GetGameSessionByPodNameForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *GetGameSessionByPodNameForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetGameSessionByPodNameNotFound creates a GetGameSessionByPodNameNotFound with default headers values
func NewGetGameSessionByPodNameNotFound() *GetGameSessionByPodNameNotFound {
	return &GetGameSessionByPodNameNotFound{}
}

/*GetGameSessionByPodNameNotFound handles this case with default header values.

  Not Found
*/
type GetGameSessionByPodNameNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *GetGameSessionByPodNameNotFound) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/gamesessions/servers/{podName}][%d] getGameSessionByPodNameNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetGameSessionByPodNameNotFound) ToJSONString() string {
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

func (o *GetGameSessionByPodNameNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *GetGameSessionByPodNameNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetGameSessionByPodNameInternalServerError creates a GetGameSessionByPodNameInternalServerError with default headers values
func NewGetGameSessionByPodNameInternalServerError() *GetGameSessionByPodNameInternalServerError {
	return &GetGameSessionByPodNameInternalServerError{}
}

/*GetGameSessionByPodNameInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetGameSessionByPodNameInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *GetGameSessionByPodNameInternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/public/namespaces/{namespace}/gamesessions/servers/{podName}][%d] getGameSessionByPodNameInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetGameSessionByPodNameInternalServerError) ToJSONString() string {
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

func (o *GetGameSessionByPodNameInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *GetGameSessionByPodNameInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
