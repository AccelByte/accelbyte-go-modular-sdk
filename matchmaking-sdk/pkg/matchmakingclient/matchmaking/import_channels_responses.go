// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchmaking

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
)

type ImportChannelsResponse struct {
	matchmakingclientmodels.ApiResponse
	Data *matchmakingclientmodels.ModelsImportConfigResponse

	Error400 *matchmakingclientmodels.ResponseErrorV1
	Error401 *matchmakingclientmodels.ResponseErrorV1
	Error403 *matchmakingclientmodels.ResponseErrorV1
	Error500 *matchmakingclientmodels.ResponseErrorV1
}

func (m *ImportChannelsResponse) Unpack() (*matchmakingclientmodels.ModelsImportConfigResponse, *matchmakingclientmodels.ApiError) {
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
			return nil, &matchmakingclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// ImportChannelsReader is a Reader for the ImportChannels structure.
type ImportChannelsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ImportChannelsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewImportChannelsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewImportChannelsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewImportChannelsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewImportChannelsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewImportChannelsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /matchmaking/v1/admin/namespaces/{namespace}/channels/import returns an error %d: %s", response.Code(), string(data))
	}
}

// NewImportChannelsOK creates a ImportChannelsOK with default headers values
func NewImportChannelsOK() *ImportChannelsOK {
	return &ImportChannelsOK{}
}

/*ImportChannelsOK handles this case with default header values.

  OK
*/
type ImportChannelsOK struct {
	Payload *matchmakingclientmodels.ModelsImportConfigResponse
}

func (o *ImportChannelsOK) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/import][%d] importChannelsOK  %+v", 200, o.ToJSONString())
}

func (o *ImportChannelsOK) ToJSONString() string {
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

func (o *ImportChannelsOK) GetPayload() *matchmakingclientmodels.ModelsImportConfigResponse {
	return o.Payload
}

func (o *ImportChannelsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ModelsImportConfigResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewImportChannelsBadRequest creates a ImportChannelsBadRequest with default headers values
func NewImportChannelsBadRequest() *ImportChannelsBadRequest {
	return &ImportChannelsBadRequest{}
}

/*ImportChannelsBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>510109</td><td>failed to read file</td></tr></table>
*/
type ImportChannelsBadRequest struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *ImportChannelsBadRequest) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/import][%d] importChannelsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ImportChannelsBadRequest) ToJSONString() string {
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

func (o *ImportChannelsBadRequest) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *ImportChannelsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewImportChannelsUnauthorized creates a ImportChannelsUnauthorized with default headers values
func NewImportChannelsUnauthorized() *ImportChannelsUnauthorized {
	return &ImportChannelsUnauthorized{}
}

/*ImportChannelsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type ImportChannelsUnauthorized struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *ImportChannelsUnauthorized) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/import][%d] importChannelsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ImportChannelsUnauthorized) ToJSONString() string {
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

func (o *ImportChannelsUnauthorized) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *ImportChannelsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewImportChannelsForbidden creates a ImportChannelsForbidden with default headers values
func NewImportChannelsForbidden() *ImportChannelsForbidden {
	return &ImportChannelsForbidden{}
}

/*ImportChannelsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20014</td><td>invalid audience</td></tr><tr><td>20015</td><td>insufficient scope</td></tr></table>
*/
type ImportChannelsForbidden struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *ImportChannelsForbidden) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/import][%d] importChannelsForbidden  %+v", 403, o.ToJSONString())
}

func (o *ImportChannelsForbidden) ToJSONString() string {
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

func (o *ImportChannelsForbidden) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *ImportChannelsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewImportChannelsInternalServerError creates a ImportChannelsInternalServerError with default headers values
func NewImportChannelsInternalServerError() *ImportChannelsInternalServerError {
	return &ImportChannelsInternalServerError{}
}

/*ImportChannelsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type ImportChannelsInternalServerError struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *ImportChannelsInternalServerError) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/import][%d] importChannelsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ImportChannelsInternalServerError) ToJSONString() string {
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

func (o *ImportChannelsInternalServerError) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *ImportChannelsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
