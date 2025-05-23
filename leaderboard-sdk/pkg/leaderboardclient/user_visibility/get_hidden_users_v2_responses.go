// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_visibility

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

type GetHiddenUsersV2Response struct {
	leaderboardclientmodels.ApiResponse
	Data *leaderboardclientmodels.ModelsGetHiddenUserResponse

	Error400 *leaderboardclientmodels.ResponseErrorResponse
	Error401 *leaderboardclientmodels.ResponseErrorResponse
	Error403 *leaderboardclientmodels.ResponseErrorResponse
	Error500 *leaderboardclientmodels.ResponseErrorResponse
}

func (m *GetHiddenUsersV2Response) Unpack() (*leaderboardclientmodels.ModelsGetHiddenUserResponse, *leaderboardclientmodels.ApiError) {
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

// GetHiddenUsersV2Reader is a Reader for the GetHiddenUsersV2 structure.
type GetHiddenUsersV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetHiddenUsersV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetHiddenUsersV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetHiddenUsersV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetHiddenUsersV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetHiddenUsersV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetHiddenUsersV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /leaderboard/v2/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/hidden returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetHiddenUsersV2OK creates a GetHiddenUsersV2OK with default headers values
func NewGetHiddenUsersV2OK() *GetHiddenUsersV2OK {
	return &GetHiddenUsersV2OK{}
}

/*GetHiddenUsersV2OK handles this case with default header values.

  Hidden user retrieved
*/
type GetHiddenUsersV2OK struct {
	Payload *leaderboardclientmodels.ModelsGetHiddenUserResponse
}

func (o *GetHiddenUsersV2OK) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v2/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/hidden][%d] getHiddenUsersV2OK  %+v", 200, o.ToJSONString())
}

func (o *GetHiddenUsersV2OK) ToJSONString() string {
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

func (o *GetHiddenUsersV2OK) GetPayload() *leaderboardclientmodels.ModelsGetHiddenUserResponse {
	return o.Payload
}

func (o *GetHiddenUsersV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ModelsGetHiddenUserResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetHiddenUsersV2BadRequest creates a GetHiddenUsersV2BadRequest with default headers values
func NewGetHiddenUsersV2BadRequest() *GetHiddenUsersV2BadRequest {
	return &GetHiddenUsersV2BadRequest{}
}

/*GetHiddenUsersV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>71130</td><td>leaderboard config not found</td></tr></table>
*/
type GetHiddenUsersV2BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetHiddenUsersV2BadRequest) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v2/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/hidden][%d] getHiddenUsersV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetHiddenUsersV2BadRequest) ToJSONString() string {
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

func (o *GetHiddenUsersV2BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetHiddenUsersV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetHiddenUsersV2Unauthorized creates a GetHiddenUsersV2Unauthorized with default headers values
func NewGetHiddenUsersV2Unauthorized() *GetHiddenUsersV2Unauthorized {
	return &GetHiddenUsersV2Unauthorized{}
}

/*GetHiddenUsersV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetHiddenUsersV2Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetHiddenUsersV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v2/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/hidden][%d] getHiddenUsersV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetHiddenUsersV2Unauthorized) ToJSONString() string {
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

func (o *GetHiddenUsersV2Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetHiddenUsersV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetHiddenUsersV2Forbidden creates a GetHiddenUsersV2Forbidden with default headers values
func NewGetHiddenUsersV2Forbidden() *GetHiddenUsersV2Forbidden {
	return &GetHiddenUsersV2Forbidden{}
}

/*GetHiddenUsersV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetHiddenUsersV2Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetHiddenUsersV2Forbidden) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v2/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/hidden][%d] getHiddenUsersV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetHiddenUsersV2Forbidden) ToJSONString() string {
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

func (o *GetHiddenUsersV2Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetHiddenUsersV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetHiddenUsersV2InternalServerError creates a GetHiddenUsersV2InternalServerError with default headers values
func NewGetHiddenUsersV2InternalServerError() *GetHiddenUsersV2InternalServerError {
	return &GetHiddenUsersV2InternalServerError{}
}

/*GetHiddenUsersV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type GetHiddenUsersV2InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetHiddenUsersV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v2/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/hidden][%d] getHiddenUsersV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetHiddenUsersV2InternalServerError) ToJSONString() string {
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

func (o *GetHiddenUsersV2InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetHiddenUsersV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
