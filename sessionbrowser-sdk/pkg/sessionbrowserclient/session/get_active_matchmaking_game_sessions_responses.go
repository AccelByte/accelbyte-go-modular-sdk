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

type GetActiveMatchmakingGameSessionsResponse struct {
	sessionbrowserclientmodels.ApiResponse
	Data *sessionbrowserclientmodels.ModelsActiveMatchmakingGameResponse

	Error400 *sessionbrowserclientmodels.RestapiErrorResponseV2
	Error500 *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (m *GetActiveMatchmakingGameSessionsResponse) Unpack() (*sessionbrowserclientmodels.ModelsActiveMatchmakingGameResponse, *sessionbrowserclientmodels.ApiError) {
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

// GetActiveMatchmakingGameSessionsReader is a Reader for the GetActiveMatchmakingGameSessions structure.
type GetActiveMatchmakingGameSessionsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetActiveMatchmakingGameSessionsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetActiveMatchmakingGameSessionsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetActiveMatchmakingGameSessionsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetActiveMatchmakingGameSessionsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionbrowser/admin/namespaces/{namespace}/gamesession/active/matchmaking-game returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetActiveMatchmakingGameSessionsOK creates a GetActiveMatchmakingGameSessionsOK with default headers values
func NewGetActiveMatchmakingGameSessionsOK() *GetActiveMatchmakingGameSessionsOK {
	return &GetActiveMatchmakingGameSessionsOK{}
}

/*GetActiveMatchmakingGameSessionsOK handles this case with default header values.

  matchmaking game session list
*/
type GetActiveMatchmakingGameSessionsOK struct {
	Payload *sessionbrowserclientmodels.ModelsActiveMatchmakingGameResponse
}

func (o *GetActiveMatchmakingGameSessionsOK) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/admin/namespaces/{namespace}/gamesession/active/matchmaking-game][%d] getActiveMatchmakingGameSessionsOK  %+v", 200, o.ToJSONString())
}

func (o *GetActiveMatchmakingGameSessionsOK) ToJSONString() string {
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

func (o *GetActiveMatchmakingGameSessionsOK) GetPayload() *sessionbrowserclientmodels.ModelsActiveMatchmakingGameResponse {
	return o.Payload
}

func (o *GetActiveMatchmakingGameSessionsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.ModelsActiveMatchmakingGameResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetActiveMatchmakingGameSessionsBadRequest creates a GetActiveMatchmakingGameSessionsBadRequest with default headers values
func NewGetActiveMatchmakingGameSessionsBadRequest() *GetActiveMatchmakingGameSessionsBadRequest {
	return &GetActiveMatchmakingGameSessionsBadRequest{}
}

/*GetActiveMatchmakingGameSessionsBadRequest handles this case with default header values.

  malformed request
*/
type GetActiveMatchmakingGameSessionsBadRequest struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *GetActiveMatchmakingGameSessionsBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/admin/namespaces/{namespace}/gamesession/active/matchmaking-game][%d] getActiveMatchmakingGameSessionsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetActiveMatchmakingGameSessionsBadRequest) ToJSONString() string {
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

func (o *GetActiveMatchmakingGameSessionsBadRequest) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *GetActiveMatchmakingGameSessionsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetActiveMatchmakingGameSessionsInternalServerError creates a GetActiveMatchmakingGameSessionsInternalServerError with default headers values
func NewGetActiveMatchmakingGameSessionsInternalServerError() *GetActiveMatchmakingGameSessionsInternalServerError {
	return &GetActiveMatchmakingGameSessionsInternalServerError{}
}

/*GetActiveMatchmakingGameSessionsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetActiveMatchmakingGameSessionsInternalServerError struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *GetActiveMatchmakingGameSessionsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionbrowser/admin/namespaces/{namespace}/gamesession/active/matchmaking-game][%d] getActiveMatchmakingGameSessionsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetActiveMatchmakingGameSessionsInternalServerError) ToJSONString() string {
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

func (o *GetActiveMatchmakingGameSessionsInternalServerError) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *GetActiveMatchmakingGameSessionsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
