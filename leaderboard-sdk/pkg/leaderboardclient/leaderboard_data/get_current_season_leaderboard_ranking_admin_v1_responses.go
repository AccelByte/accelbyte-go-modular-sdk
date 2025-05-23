// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboard_data

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

type GetCurrentSeasonLeaderboardRankingAdminV1Response struct {
	leaderboardclientmodels.ApiResponse
	Data *leaderboardclientmodels.ModelsGetLeaderboardRankingResp

	Error400 *leaderboardclientmodels.ResponseErrorResponse
	Error401 *leaderboardclientmodels.ResponseErrorResponse
	Error403 *leaderboardclientmodels.ResponseErrorResponse
	Error404 *leaderboardclientmodels.ResponseErrorResponse
	Error500 *leaderboardclientmodels.ResponseErrorResponse
}

func (m *GetCurrentSeasonLeaderboardRankingAdminV1Response) Unpack() (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, *leaderboardclientmodels.ApiError) {
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
			return nil, &leaderboardclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// GetCurrentSeasonLeaderboardRankingAdminV1Reader is a Reader for the GetCurrentSeasonLeaderboardRankingAdminV1 structure.
type GetCurrentSeasonLeaderboardRankingAdminV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetCurrentSeasonLeaderboardRankingAdminV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetCurrentSeasonLeaderboardRankingAdminV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetCurrentSeasonLeaderboardRankingAdminV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetCurrentSeasonLeaderboardRankingAdminV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetCurrentSeasonLeaderboardRankingAdminV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetCurrentSeasonLeaderboardRankingAdminV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetCurrentSeasonLeaderboardRankingAdminV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/season returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetCurrentSeasonLeaderboardRankingAdminV1OK creates a GetCurrentSeasonLeaderboardRankingAdminV1OK with default headers values
func NewGetCurrentSeasonLeaderboardRankingAdminV1OK() *GetCurrentSeasonLeaderboardRankingAdminV1OK {
	return &GetCurrentSeasonLeaderboardRankingAdminV1OK{}
}

/*GetCurrentSeasonLeaderboardRankingAdminV1OK handles this case with default header values.

  Current season leaderboard ranking retrieved
*/
type GetCurrentSeasonLeaderboardRankingAdminV1OK struct {
	Payload *leaderboardclientmodels.ModelsGetLeaderboardRankingResp
}

func (o *GetCurrentSeasonLeaderboardRankingAdminV1OK) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/season][%d] getCurrentSeasonLeaderboardRankingAdminV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetCurrentSeasonLeaderboardRankingAdminV1OK) ToJSONString() string {
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

func (o *GetCurrentSeasonLeaderboardRankingAdminV1OK) GetPayload() *leaderboardclientmodels.ModelsGetLeaderboardRankingResp {
	return o.Payload
}

func (o *GetCurrentSeasonLeaderboardRankingAdminV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ModelsGetLeaderboardRankingResp)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetCurrentSeasonLeaderboardRankingAdminV1BadRequest creates a GetCurrentSeasonLeaderboardRankingAdminV1BadRequest with default headers values
func NewGetCurrentSeasonLeaderboardRankingAdminV1BadRequest() *GetCurrentSeasonLeaderboardRankingAdminV1BadRequest {
	return &GetCurrentSeasonLeaderboardRankingAdminV1BadRequest{}
}

/*GetCurrentSeasonLeaderboardRankingAdminV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetCurrentSeasonLeaderboardRankingAdminV1BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetCurrentSeasonLeaderboardRankingAdminV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/season][%d] getCurrentSeasonLeaderboardRankingAdminV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetCurrentSeasonLeaderboardRankingAdminV1BadRequest) ToJSONString() string {
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

func (o *GetCurrentSeasonLeaderboardRankingAdminV1BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetCurrentSeasonLeaderboardRankingAdminV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetCurrentSeasonLeaderboardRankingAdminV1Unauthorized creates a GetCurrentSeasonLeaderboardRankingAdminV1Unauthorized with default headers values
func NewGetCurrentSeasonLeaderboardRankingAdminV1Unauthorized() *GetCurrentSeasonLeaderboardRankingAdminV1Unauthorized {
	return &GetCurrentSeasonLeaderboardRankingAdminV1Unauthorized{}
}

/*GetCurrentSeasonLeaderboardRankingAdminV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetCurrentSeasonLeaderboardRankingAdminV1Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetCurrentSeasonLeaderboardRankingAdminV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/season][%d] getCurrentSeasonLeaderboardRankingAdminV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetCurrentSeasonLeaderboardRankingAdminV1Unauthorized) ToJSONString() string {
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

func (o *GetCurrentSeasonLeaderboardRankingAdminV1Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetCurrentSeasonLeaderboardRankingAdminV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetCurrentSeasonLeaderboardRankingAdminV1Forbidden creates a GetCurrentSeasonLeaderboardRankingAdminV1Forbidden with default headers values
func NewGetCurrentSeasonLeaderboardRankingAdminV1Forbidden() *GetCurrentSeasonLeaderboardRankingAdminV1Forbidden {
	return &GetCurrentSeasonLeaderboardRankingAdminV1Forbidden{}
}

/*GetCurrentSeasonLeaderboardRankingAdminV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetCurrentSeasonLeaderboardRankingAdminV1Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetCurrentSeasonLeaderboardRankingAdminV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/season][%d] getCurrentSeasonLeaderboardRankingAdminV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetCurrentSeasonLeaderboardRankingAdminV1Forbidden) ToJSONString() string {
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

func (o *GetCurrentSeasonLeaderboardRankingAdminV1Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetCurrentSeasonLeaderboardRankingAdminV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetCurrentSeasonLeaderboardRankingAdminV1NotFound creates a GetCurrentSeasonLeaderboardRankingAdminV1NotFound with default headers values
func NewGetCurrentSeasonLeaderboardRankingAdminV1NotFound() *GetCurrentSeasonLeaderboardRankingAdminV1NotFound {
	return &GetCurrentSeasonLeaderboardRankingAdminV1NotFound{}
}

/*GetCurrentSeasonLeaderboardRankingAdminV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>71130</td><td>leaderboard config not found</td></tr><tr><td>71235</td><td>leaderboard ranking not found</td></tr></table>
*/
type GetCurrentSeasonLeaderboardRankingAdminV1NotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetCurrentSeasonLeaderboardRankingAdminV1NotFound) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/season][%d] getCurrentSeasonLeaderboardRankingAdminV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetCurrentSeasonLeaderboardRankingAdminV1NotFound) ToJSONString() string {
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

func (o *GetCurrentSeasonLeaderboardRankingAdminV1NotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetCurrentSeasonLeaderboardRankingAdminV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetCurrentSeasonLeaderboardRankingAdminV1InternalServerError creates a GetCurrentSeasonLeaderboardRankingAdminV1InternalServerError with default headers values
func NewGetCurrentSeasonLeaderboardRankingAdminV1InternalServerError() *GetCurrentSeasonLeaderboardRankingAdminV1InternalServerError {
	return &GetCurrentSeasonLeaderboardRankingAdminV1InternalServerError{}
}

/*GetCurrentSeasonLeaderboardRankingAdminV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr><tr><td>71236</td><td>leaderboard ranking count failed</td></tr></table>
*/
type GetCurrentSeasonLeaderboardRankingAdminV1InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetCurrentSeasonLeaderboardRankingAdminV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/season][%d] getCurrentSeasonLeaderboardRankingAdminV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetCurrentSeasonLeaderboardRankingAdminV1InternalServerError) ToJSONString() string {
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

func (o *GetCurrentSeasonLeaderboardRankingAdminV1InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetCurrentSeasonLeaderboardRankingAdminV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
