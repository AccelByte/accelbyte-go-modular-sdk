// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package social_matchmaking

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

type UpdatePlayTimeWeightResponse struct {
	matchmakingclientmodels.ApiResponse
	Data *matchmakingclientmodels.ModelsUpdatePlayerPlaytimeWeightResponse

	Error400 *matchmakingclientmodels.ResponseErrorV1
	Error401 *matchmakingclientmodels.ResponseErrorV1
	Error403 *matchmakingclientmodels.ResponseErrorV1
	Error404 *matchmakingclientmodels.ResponseErrorV1
	Error500 *matchmakingclientmodels.ResponseError
}

func (m *UpdatePlayTimeWeightResponse) Unpack() (*matchmakingclientmodels.ModelsUpdatePlayerPlaytimeWeightResponse, *matchmakingclientmodels.ApiError) {
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
			return nil, &matchmakingclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// UpdatePlayTimeWeightReader is a Reader for the UpdatePlayTimeWeight structure.
type UpdatePlayTimeWeightReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdatePlayTimeWeightReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdatePlayTimeWeightOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdatePlayTimeWeightBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdatePlayTimeWeightUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdatePlayTimeWeightForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdatePlayTimeWeightNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdatePlayTimeWeightInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /matchmaking/social/playtime/namespaces/{namespace}/weight returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdatePlayTimeWeightOK creates a UpdatePlayTimeWeightOK with default headers values
func NewUpdatePlayTimeWeightOK() *UpdatePlayTimeWeightOK {
	return &UpdatePlayTimeWeightOK{}
}

/*UpdatePlayTimeWeightOK handles this case with default header values.

  Operation succeeded
*/
type UpdatePlayTimeWeightOK struct {
	Payload *matchmakingclientmodels.ModelsUpdatePlayerPlaytimeWeightResponse
}

func (o *UpdatePlayTimeWeightOK) Error() string {
	return fmt.Sprintf("[PATCH /matchmaking/social/playtime/namespaces/{namespace}/weight][%d] updatePlayTimeWeightOK  %+v", 200, o.ToJSONString())
}

func (o *UpdatePlayTimeWeightOK) ToJSONString() string {
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

func (o *UpdatePlayTimeWeightOK) GetPayload() *matchmakingclientmodels.ModelsUpdatePlayerPlaytimeWeightResponse {
	return o.Payload
}

func (o *UpdatePlayTimeWeightOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ModelsUpdatePlayerPlaytimeWeightResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdatePlayTimeWeightBadRequest creates a UpdatePlayTimeWeightBadRequest with default headers values
func NewUpdatePlayTimeWeightBadRequest() *UpdatePlayTimeWeightBadRequest {
	return &UpdatePlayTimeWeightBadRequest{}
}

/*UpdatePlayTimeWeightBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type UpdatePlayTimeWeightBadRequest struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *UpdatePlayTimeWeightBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /matchmaking/social/playtime/namespaces/{namespace}/weight][%d] updatePlayTimeWeightBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdatePlayTimeWeightBadRequest) ToJSONString() string {
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

func (o *UpdatePlayTimeWeightBadRequest) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *UpdatePlayTimeWeightBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdatePlayTimeWeightUnauthorized creates a UpdatePlayTimeWeightUnauthorized with default headers values
func NewUpdatePlayTimeWeightUnauthorized() *UpdatePlayTimeWeightUnauthorized {
	return &UpdatePlayTimeWeightUnauthorized{}
}

/*UpdatePlayTimeWeightUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdatePlayTimeWeightUnauthorized struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *UpdatePlayTimeWeightUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /matchmaking/social/playtime/namespaces/{namespace}/weight][%d] updatePlayTimeWeightUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdatePlayTimeWeightUnauthorized) ToJSONString() string {
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

func (o *UpdatePlayTimeWeightUnauthorized) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *UpdatePlayTimeWeightUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdatePlayTimeWeightForbidden creates a UpdatePlayTimeWeightForbidden with default headers values
func NewUpdatePlayTimeWeightForbidden() *UpdatePlayTimeWeightForbidden {
	return &UpdatePlayTimeWeightForbidden{}
}

/*UpdatePlayTimeWeightForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20014</td><td>invalid audience</td></tr><tr><td>20015</td><td>insufficient scope</td></tr></table>
*/
type UpdatePlayTimeWeightForbidden struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *UpdatePlayTimeWeightForbidden) Error() string {
	return fmt.Sprintf("[PATCH /matchmaking/social/playtime/namespaces/{namespace}/weight][%d] updatePlayTimeWeightForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdatePlayTimeWeightForbidden) ToJSONString() string {
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

func (o *UpdatePlayTimeWeightForbidden) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *UpdatePlayTimeWeightForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdatePlayTimeWeightNotFound creates a UpdatePlayTimeWeightNotFound with default headers values
func NewUpdatePlayTimeWeightNotFound() *UpdatePlayTimeWeightNotFound {
	return &UpdatePlayTimeWeightNotFound{}
}

/*UpdatePlayTimeWeightNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>510301</td><td>user playtime not found</td></tr></table>
*/
type UpdatePlayTimeWeightNotFound struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *UpdatePlayTimeWeightNotFound) Error() string {
	return fmt.Sprintf("[PATCH /matchmaking/social/playtime/namespaces/{namespace}/weight][%d] updatePlayTimeWeightNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdatePlayTimeWeightNotFound) ToJSONString() string {
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

func (o *UpdatePlayTimeWeightNotFound) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *UpdatePlayTimeWeightNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdatePlayTimeWeightInternalServerError creates a UpdatePlayTimeWeightInternalServerError with default headers values
func NewUpdatePlayTimeWeightInternalServerError() *UpdatePlayTimeWeightInternalServerError {
	return &UpdatePlayTimeWeightInternalServerError{}
}

/*UpdatePlayTimeWeightInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type UpdatePlayTimeWeightInternalServerError struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *UpdatePlayTimeWeightInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /matchmaking/social/playtime/namespaces/{namespace}/weight][%d] updatePlayTimeWeightInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdatePlayTimeWeightInternalServerError) ToJSONString() string {
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

func (o *UpdatePlayTimeWeightInternalServerError) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdatePlayTimeWeightInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
