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

type GetCurrentMonthLeaderboardRankingPublicV1Response struct {
	leaderboardclientmodels.ApiResponse
	Data *leaderboardclientmodels.ModelsGetLeaderboardRankingResp

	Error400 *leaderboardclientmodels.ResponseErrorResponse
	Error404 *leaderboardclientmodels.ResponseErrorResponse
	Error500 *leaderboardclientmodels.ResponseErrorResponse
}

func (m *GetCurrentMonthLeaderboardRankingPublicV1Response) Unpack() (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, *leaderboardclientmodels.ApiError) {
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

// GetCurrentMonthLeaderboardRankingPublicV1Reader is a Reader for the GetCurrentMonthLeaderboardRankingPublicV1 structure.
type GetCurrentMonthLeaderboardRankingPublicV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetCurrentMonthLeaderboardRankingPublicV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetCurrentMonthLeaderboardRankingPublicV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetCurrentMonthLeaderboardRankingPublicV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetCurrentMonthLeaderboardRankingPublicV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetCurrentMonthLeaderboardRankingPublicV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/month returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetCurrentMonthLeaderboardRankingPublicV1OK creates a GetCurrentMonthLeaderboardRankingPublicV1OK with default headers values
func NewGetCurrentMonthLeaderboardRankingPublicV1OK() *GetCurrentMonthLeaderboardRankingPublicV1OK {
	return &GetCurrentMonthLeaderboardRankingPublicV1OK{}
}

/*GetCurrentMonthLeaderboardRankingPublicV1OK handles this case with default header values.

  Current month leaderboard retrieved
*/
type GetCurrentMonthLeaderboardRankingPublicV1OK struct {
	Payload *leaderboardclientmodels.ModelsGetLeaderboardRankingResp
}

func (o *GetCurrentMonthLeaderboardRankingPublicV1OK) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/month][%d] getCurrentMonthLeaderboardRankingPublicV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetCurrentMonthLeaderboardRankingPublicV1OK) ToJSONString() string {
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

func (o *GetCurrentMonthLeaderboardRankingPublicV1OK) GetPayload() *leaderboardclientmodels.ModelsGetLeaderboardRankingResp {
	return o.Payload
}

func (o *GetCurrentMonthLeaderboardRankingPublicV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetCurrentMonthLeaderboardRankingPublicV1BadRequest creates a GetCurrentMonthLeaderboardRankingPublicV1BadRequest with default headers values
func NewGetCurrentMonthLeaderboardRankingPublicV1BadRequest() *GetCurrentMonthLeaderboardRankingPublicV1BadRequest {
	return &GetCurrentMonthLeaderboardRankingPublicV1BadRequest{}
}

/*GetCurrentMonthLeaderboardRankingPublicV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetCurrentMonthLeaderboardRankingPublicV1BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetCurrentMonthLeaderboardRankingPublicV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/month][%d] getCurrentMonthLeaderboardRankingPublicV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetCurrentMonthLeaderboardRankingPublicV1BadRequest) ToJSONString() string {
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

func (o *GetCurrentMonthLeaderboardRankingPublicV1BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetCurrentMonthLeaderboardRankingPublicV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetCurrentMonthLeaderboardRankingPublicV1NotFound creates a GetCurrentMonthLeaderboardRankingPublicV1NotFound with default headers values
func NewGetCurrentMonthLeaderboardRankingPublicV1NotFound() *GetCurrentMonthLeaderboardRankingPublicV1NotFound {
	return &GetCurrentMonthLeaderboardRankingPublicV1NotFound{}
}

/*GetCurrentMonthLeaderboardRankingPublicV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>71230</td><td>leaderboard configuration not found</td></tr><tr><td>71235</td><td>leaderboard ranking not found</td></tr></table>
*/
type GetCurrentMonthLeaderboardRankingPublicV1NotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetCurrentMonthLeaderboardRankingPublicV1NotFound) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/month][%d] getCurrentMonthLeaderboardRankingPublicV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetCurrentMonthLeaderboardRankingPublicV1NotFound) ToJSONString() string {
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

func (o *GetCurrentMonthLeaderboardRankingPublicV1NotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetCurrentMonthLeaderboardRankingPublicV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetCurrentMonthLeaderboardRankingPublicV1InternalServerError creates a GetCurrentMonthLeaderboardRankingPublicV1InternalServerError with default headers values
func NewGetCurrentMonthLeaderboardRankingPublicV1InternalServerError() *GetCurrentMonthLeaderboardRankingPublicV1InternalServerError {
	return &GetCurrentMonthLeaderboardRankingPublicV1InternalServerError{}
}

/*GetCurrentMonthLeaderboardRankingPublicV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr><tr><td>71236</td><td>leaderboard ranking count failed</td></tr></table>
*/
type GetCurrentMonthLeaderboardRankingPublicV1InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetCurrentMonthLeaderboardRankingPublicV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/month][%d] getCurrentMonthLeaderboardRankingPublicV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetCurrentMonthLeaderboardRankingPublicV1InternalServerError) ToJSONString() string {
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

func (o *GetCurrentMonthLeaderboardRankingPublicV1InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetCurrentMonthLeaderboardRankingPublicV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
