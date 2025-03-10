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

type GetCurrentWeekLeaderboardRankingPublicV1Response struct {
	leaderboardclientmodels.ApiResponse
	Data *leaderboardclientmodels.ModelsGetLeaderboardRankingResp

	Error400 *leaderboardclientmodels.ResponseErrorResponse
	Error404 *leaderboardclientmodels.ResponseErrorResponse
	Error500 *leaderboardclientmodels.ResponseErrorResponse
}

func (m *GetCurrentWeekLeaderboardRankingPublicV1Response) Unpack() (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, *leaderboardclientmodels.ApiError) {
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
			return nil, &leaderboardclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// GetCurrentWeekLeaderboardRankingPublicV1Reader is a Reader for the GetCurrentWeekLeaderboardRankingPublicV1 structure.
type GetCurrentWeekLeaderboardRankingPublicV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetCurrentWeekLeaderboardRankingPublicV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetCurrentWeekLeaderboardRankingPublicV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetCurrentWeekLeaderboardRankingPublicV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetCurrentWeekLeaderboardRankingPublicV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetCurrentWeekLeaderboardRankingPublicV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/week returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetCurrentWeekLeaderboardRankingPublicV1OK creates a GetCurrentWeekLeaderboardRankingPublicV1OK with default headers values
func NewGetCurrentWeekLeaderboardRankingPublicV1OK() *GetCurrentWeekLeaderboardRankingPublicV1OK {
	return &GetCurrentWeekLeaderboardRankingPublicV1OK{}
}

/*GetCurrentWeekLeaderboardRankingPublicV1OK handles this case with default header values.

  Current week leaderboard retrieved
*/
type GetCurrentWeekLeaderboardRankingPublicV1OK struct {
	Payload *leaderboardclientmodels.ModelsGetLeaderboardRankingResp
}

func (o *GetCurrentWeekLeaderboardRankingPublicV1OK) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/week][%d] getCurrentWeekLeaderboardRankingPublicV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetCurrentWeekLeaderboardRankingPublicV1OK) ToJSONString() string {
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

func (o *GetCurrentWeekLeaderboardRankingPublicV1OK) GetPayload() *leaderboardclientmodels.ModelsGetLeaderboardRankingResp {
	return o.Payload
}

func (o *GetCurrentWeekLeaderboardRankingPublicV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetCurrentWeekLeaderboardRankingPublicV1BadRequest creates a GetCurrentWeekLeaderboardRankingPublicV1BadRequest with default headers values
func NewGetCurrentWeekLeaderboardRankingPublicV1BadRequest() *GetCurrentWeekLeaderboardRankingPublicV1BadRequest {
	return &GetCurrentWeekLeaderboardRankingPublicV1BadRequest{}
}

/*GetCurrentWeekLeaderboardRankingPublicV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetCurrentWeekLeaderboardRankingPublicV1BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetCurrentWeekLeaderboardRankingPublicV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/week][%d] getCurrentWeekLeaderboardRankingPublicV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetCurrentWeekLeaderboardRankingPublicV1BadRequest) ToJSONString() string {
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

func (o *GetCurrentWeekLeaderboardRankingPublicV1BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetCurrentWeekLeaderboardRankingPublicV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetCurrentWeekLeaderboardRankingPublicV1NotFound creates a GetCurrentWeekLeaderboardRankingPublicV1NotFound with default headers values
func NewGetCurrentWeekLeaderboardRankingPublicV1NotFound() *GetCurrentWeekLeaderboardRankingPublicV1NotFound {
	return &GetCurrentWeekLeaderboardRankingPublicV1NotFound{}
}

/*GetCurrentWeekLeaderboardRankingPublicV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>71230</td><td>leaderboard configuration not found</td></tr><tr><td>71235</td><td>leaderboard ranking not found</td></tr></table>
*/
type GetCurrentWeekLeaderboardRankingPublicV1NotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetCurrentWeekLeaderboardRankingPublicV1NotFound) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/week][%d] getCurrentWeekLeaderboardRankingPublicV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetCurrentWeekLeaderboardRankingPublicV1NotFound) ToJSONString() string {
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

func (o *GetCurrentWeekLeaderboardRankingPublicV1NotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetCurrentWeekLeaderboardRankingPublicV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetCurrentWeekLeaderboardRankingPublicV1InternalServerError creates a GetCurrentWeekLeaderboardRankingPublicV1InternalServerError with default headers values
func NewGetCurrentWeekLeaderboardRankingPublicV1InternalServerError() *GetCurrentWeekLeaderboardRankingPublicV1InternalServerError {
	return &GetCurrentWeekLeaderboardRankingPublicV1InternalServerError{}
}

/*GetCurrentWeekLeaderboardRankingPublicV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr><tr><td>71236</td><td>leaderboard ranking count failed</td></tr></table>
*/
type GetCurrentWeekLeaderboardRankingPublicV1InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetCurrentWeekLeaderboardRankingPublicV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/week][%d] getCurrentWeekLeaderboardRankingPublicV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetCurrentWeekLeaderboardRankingPublicV1InternalServerError) ToJSONString() string {
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

func (o *GetCurrentWeekLeaderboardRankingPublicV1InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetCurrentWeekLeaderboardRankingPublicV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
