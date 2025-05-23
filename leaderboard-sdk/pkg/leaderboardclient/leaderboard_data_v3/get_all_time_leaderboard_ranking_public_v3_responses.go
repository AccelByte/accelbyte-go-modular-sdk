// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboard_data_v3

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

type GetAllTimeLeaderboardRankingPublicV3Response struct {
	leaderboardclientmodels.ApiResponse
	Data *leaderboardclientmodels.ModelsGetLeaderboardRankingResp

	Error400 *leaderboardclientmodels.ResponseErrorResponse
	Error404 *leaderboardclientmodels.ResponseErrorResponse
	Error500 *leaderboardclientmodels.ResponseErrorResponse
}

func (m *GetAllTimeLeaderboardRankingPublicV3Response) Unpack() (*leaderboardclientmodels.ModelsGetLeaderboardRankingResp, *leaderboardclientmodels.ApiError) {
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

// GetAllTimeLeaderboardRankingPublicV3Reader is a Reader for the GetAllTimeLeaderboardRankingPublicV3 structure.
type GetAllTimeLeaderboardRankingPublicV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetAllTimeLeaderboardRankingPublicV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetAllTimeLeaderboardRankingPublicV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetAllTimeLeaderboardRankingPublicV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetAllTimeLeaderboardRankingPublicV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetAllTimeLeaderboardRankingPublicV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetAllTimeLeaderboardRankingPublicV3OK creates a GetAllTimeLeaderboardRankingPublicV3OK with default headers values
func NewGetAllTimeLeaderboardRankingPublicV3OK() *GetAllTimeLeaderboardRankingPublicV3OK {
	return &GetAllTimeLeaderboardRankingPublicV3OK{}
}

/*GetAllTimeLeaderboardRankingPublicV3OK handles this case with default header values.

  All time leaderboard ranking retrieved
*/
type GetAllTimeLeaderboardRankingPublicV3OK struct {
	Payload *leaderboardclientmodels.ModelsGetLeaderboardRankingResp
}

func (o *GetAllTimeLeaderboardRankingPublicV3OK) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime][%d] getAllTimeLeaderboardRankingPublicV3OK  %+v", 200, o.ToJSONString())
}

func (o *GetAllTimeLeaderboardRankingPublicV3OK) ToJSONString() string {
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

func (o *GetAllTimeLeaderboardRankingPublicV3OK) GetPayload() *leaderboardclientmodels.ModelsGetLeaderboardRankingResp {
	return o.Payload
}

func (o *GetAllTimeLeaderboardRankingPublicV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAllTimeLeaderboardRankingPublicV3BadRequest creates a GetAllTimeLeaderboardRankingPublicV3BadRequest with default headers values
func NewGetAllTimeLeaderboardRankingPublicV3BadRequest() *GetAllTimeLeaderboardRankingPublicV3BadRequest {
	return &GetAllTimeLeaderboardRankingPublicV3BadRequest{}
}

/*GetAllTimeLeaderboardRankingPublicV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetAllTimeLeaderboardRankingPublicV3BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetAllTimeLeaderboardRankingPublicV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime][%d] getAllTimeLeaderboardRankingPublicV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetAllTimeLeaderboardRankingPublicV3BadRequest) ToJSONString() string {
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

func (o *GetAllTimeLeaderboardRankingPublicV3BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAllTimeLeaderboardRankingPublicV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAllTimeLeaderboardRankingPublicV3NotFound creates a GetAllTimeLeaderboardRankingPublicV3NotFound with default headers values
func NewGetAllTimeLeaderboardRankingPublicV3NotFound() *GetAllTimeLeaderboardRankingPublicV3NotFound {
	return &GetAllTimeLeaderboardRankingPublicV3NotFound{}
}

/*GetAllTimeLeaderboardRankingPublicV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>71230</td><td>leaderboard configuration not found</td></tr><tr><td>71235</td><td>leaderboard ranking not found</td></tr></table>
*/
type GetAllTimeLeaderboardRankingPublicV3NotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetAllTimeLeaderboardRankingPublicV3NotFound) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime][%d] getAllTimeLeaderboardRankingPublicV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetAllTimeLeaderboardRankingPublicV3NotFound) ToJSONString() string {
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

func (o *GetAllTimeLeaderboardRankingPublicV3NotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAllTimeLeaderboardRankingPublicV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAllTimeLeaderboardRankingPublicV3InternalServerError creates a GetAllTimeLeaderboardRankingPublicV3InternalServerError with default headers values
func NewGetAllTimeLeaderboardRankingPublicV3InternalServerError() *GetAllTimeLeaderboardRankingPublicV3InternalServerError {
	return &GetAllTimeLeaderboardRankingPublicV3InternalServerError{}
}

/*GetAllTimeLeaderboardRankingPublicV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr><tr><td>71236</td><td>leaderboard ranking count failed</td></tr></table>
*/
type GetAllTimeLeaderboardRankingPublicV3InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetAllTimeLeaderboardRankingPublicV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime][%d] getAllTimeLeaderboardRankingPublicV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetAllTimeLeaderboardRankingPublicV3InternalServerError) ToJSONString() string {
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

func (o *GetAllTimeLeaderboardRankingPublicV3InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetAllTimeLeaderboardRankingPublicV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
