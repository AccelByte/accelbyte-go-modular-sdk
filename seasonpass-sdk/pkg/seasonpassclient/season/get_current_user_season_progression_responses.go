// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package season

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
)

type GetCurrentUserSeasonProgressionResponse struct {
	seasonpassclientmodels.ApiResponse
	Data *seasonpassclientmodels.UserSeasonSummary

	Error400 *seasonpassclientmodels.ErrorEntity
	Error404 *seasonpassclientmodels.ErrorEntity
}

func (m *GetCurrentUserSeasonProgressionResponse) Unpack() (*seasonpassclientmodels.UserSeasonSummary, *seasonpassclientmodels.ApiError) {
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

		default:
			return nil, &seasonpassclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// GetCurrentUserSeasonProgressionReader is a Reader for the GetCurrentUserSeasonProgression structure.
type GetCurrentUserSeasonProgressionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetCurrentUserSeasonProgressionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetCurrentUserSeasonProgressionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetCurrentUserSeasonProgressionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetCurrentUserSeasonProgressionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/progression returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetCurrentUserSeasonProgressionOK creates a GetCurrentUserSeasonProgressionOK with default headers values
func NewGetCurrentUserSeasonProgressionOK() *GetCurrentUserSeasonProgressionOK {
	return &GetCurrentUserSeasonProgressionOK{}
}

/*GetCurrentUserSeasonProgressionOK handles this case with default header values.

  successful operation
*/
type GetCurrentUserSeasonProgressionOK struct {
	Payload *seasonpassclientmodels.UserSeasonSummary
}

func (o *GetCurrentUserSeasonProgressionOK) Error() string {
	return fmt.Sprintf("[GET /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/progression][%d] getCurrentUserSeasonProgressionOK  %+v", 200, o.ToJSONString())
}

func (o *GetCurrentUserSeasonProgressionOK) ToJSONString() string {
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

func (o *GetCurrentUserSeasonProgressionOK) GetPayload() *seasonpassclientmodels.UserSeasonSummary {
	return o.Payload
}

func (o *GetCurrentUserSeasonProgressionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.UserSeasonSummary)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetCurrentUserSeasonProgressionBadRequest creates a GetCurrentUserSeasonProgressionBadRequest with default headers values
func NewGetCurrentUserSeasonProgressionBadRequest() *GetCurrentUserSeasonProgressionBadRequest {
	return &GetCurrentUserSeasonProgressionBadRequest{}
}

/*GetCurrentUserSeasonProgressionBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr></table>
*/
type GetCurrentUserSeasonProgressionBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *GetCurrentUserSeasonProgressionBadRequest) Error() string {
	return fmt.Sprintf("[GET /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/progression][%d] getCurrentUserSeasonProgressionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetCurrentUserSeasonProgressionBadRequest) ToJSONString() string {
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

func (o *GetCurrentUserSeasonProgressionBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetCurrentUserSeasonProgressionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetCurrentUserSeasonProgressionNotFound creates a GetCurrentUserSeasonProgressionNotFound with default headers values
func NewGetCurrentUserSeasonProgressionNotFound() *GetCurrentUserSeasonProgressionNotFound {
	return &GetCurrentUserSeasonProgressionNotFound{}
}

/*GetCurrentUserSeasonProgressionNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49147</td><td>Published season does not exist</td></tr><tr><td>49148</td><td>User season does not exist</td></tr></table>
*/
type GetCurrentUserSeasonProgressionNotFound struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *GetCurrentUserSeasonProgressionNotFound) Error() string {
	return fmt.Sprintf("[GET /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/progression][%d] getCurrentUserSeasonProgressionNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetCurrentUserSeasonProgressionNotFound) ToJSONString() string {
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

func (o *GetCurrentUserSeasonProgressionNotFound) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetCurrentUserSeasonProgressionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
