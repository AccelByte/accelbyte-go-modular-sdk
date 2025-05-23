// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboard_configuration

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
)

type GetLeaderboardConfigurationsPublicV1Response struct {
	leaderboardclientmodels.ApiResponse
	Data *leaderboardclientmodels.ModelsGetAllLeaderboardConfigsPublicResp

	Error400 *leaderboardclientmodels.ResponseErrorResponse
	Error401 *leaderboardclientmodels.ResponseErrorResponse
	Error403 *leaderboardclientmodels.ResponseErrorResponse
	Error500 *leaderboardclientmodels.ResponseErrorResponse
}

func (m *GetLeaderboardConfigurationsPublicV1Response) Unpack() (*leaderboardclientmodels.ModelsGetAllLeaderboardConfigsPublicResp, *leaderboardclientmodels.ApiError) {
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
			return nil, &leaderboardclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// GetLeaderboardConfigurationsPublicV1Reader is a Reader for the GetLeaderboardConfigurationsPublicV1 structure.
type GetLeaderboardConfigurationsPublicV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetLeaderboardConfigurationsPublicV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetLeaderboardConfigurationsPublicV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetLeaderboardConfigurationsPublicV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetLeaderboardConfigurationsPublicV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetLeaderboardConfigurationsPublicV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetLeaderboardConfigurationsPublicV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /leaderboard/v1/public/namespaces/{namespace}/leaderboards returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetLeaderboardConfigurationsPublicV1OK creates a GetLeaderboardConfigurationsPublicV1OK with default headers values
func NewGetLeaderboardConfigurationsPublicV1OK() *GetLeaderboardConfigurationsPublicV1OK {
	return &GetLeaderboardConfigurationsPublicV1OK{}
}

/*GetLeaderboardConfigurationsPublicV1OK handles this case with default header values.

  Leaderboards retrieved
*/
type GetLeaderboardConfigurationsPublicV1OK struct {
	Payload *leaderboardclientmodels.ModelsGetAllLeaderboardConfigsPublicResp
}

func (o *GetLeaderboardConfigurationsPublicV1OK) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/public/namespaces/{namespace}/leaderboards][%d] getLeaderboardConfigurationsPublicV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetLeaderboardConfigurationsPublicV1OK) ToJSONString() string {
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

func (o *GetLeaderboardConfigurationsPublicV1OK) GetPayload() *leaderboardclientmodels.ModelsGetAllLeaderboardConfigsPublicResp {
	return o.Payload
}

func (o *GetLeaderboardConfigurationsPublicV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ModelsGetAllLeaderboardConfigsPublicResp)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetLeaderboardConfigurationsPublicV1BadRequest creates a GetLeaderboardConfigurationsPublicV1BadRequest with default headers values
func NewGetLeaderboardConfigurationsPublicV1BadRequest() *GetLeaderboardConfigurationsPublicV1BadRequest {
	return &GetLeaderboardConfigurationsPublicV1BadRequest{}
}

/*GetLeaderboardConfigurationsPublicV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetLeaderboardConfigurationsPublicV1BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetLeaderboardConfigurationsPublicV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/public/namespaces/{namespace}/leaderboards][%d] getLeaderboardConfigurationsPublicV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetLeaderboardConfigurationsPublicV1BadRequest) ToJSONString() string {
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

func (o *GetLeaderboardConfigurationsPublicV1BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetLeaderboardConfigurationsPublicV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetLeaderboardConfigurationsPublicV1Unauthorized creates a GetLeaderboardConfigurationsPublicV1Unauthorized with default headers values
func NewGetLeaderboardConfigurationsPublicV1Unauthorized() *GetLeaderboardConfigurationsPublicV1Unauthorized {
	return &GetLeaderboardConfigurationsPublicV1Unauthorized{}
}

/*GetLeaderboardConfigurationsPublicV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetLeaderboardConfigurationsPublicV1Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetLeaderboardConfigurationsPublicV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/public/namespaces/{namespace}/leaderboards][%d] getLeaderboardConfigurationsPublicV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetLeaderboardConfigurationsPublicV1Unauthorized) ToJSONString() string {
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

func (o *GetLeaderboardConfigurationsPublicV1Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetLeaderboardConfigurationsPublicV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetLeaderboardConfigurationsPublicV1Forbidden creates a GetLeaderboardConfigurationsPublicV1Forbidden with default headers values
func NewGetLeaderboardConfigurationsPublicV1Forbidden() *GetLeaderboardConfigurationsPublicV1Forbidden {
	return &GetLeaderboardConfigurationsPublicV1Forbidden{}
}

/*GetLeaderboardConfigurationsPublicV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetLeaderboardConfigurationsPublicV1Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetLeaderboardConfigurationsPublicV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/public/namespaces/{namespace}/leaderboards][%d] getLeaderboardConfigurationsPublicV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetLeaderboardConfigurationsPublicV1Forbidden) ToJSONString() string {
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

func (o *GetLeaderboardConfigurationsPublicV1Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetLeaderboardConfigurationsPublicV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetLeaderboardConfigurationsPublicV1InternalServerError creates a GetLeaderboardConfigurationsPublicV1InternalServerError with default headers values
func NewGetLeaderboardConfigurationsPublicV1InternalServerError() *GetLeaderboardConfigurationsPublicV1InternalServerError {
	return &GetLeaderboardConfigurationsPublicV1InternalServerError{}
}

/*GetLeaderboardConfigurationsPublicV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type GetLeaderboardConfigurationsPublicV1InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetLeaderboardConfigurationsPublicV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/public/namespaces/{namespace}/leaderboards][%d] getLeaderboardConfigurationsPublicV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetLeaderboardConfigurationsPublicV1InternalServerError) ToJSONString() string {
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

func (o *GetLeaderboardConfigurationsPublicV1InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetLeaderboardConfigurationsPublicV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
