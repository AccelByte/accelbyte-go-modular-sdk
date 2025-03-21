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

type SearchSessionsV2Response struct {
	matchmakingclientmodels.ApiResponse
	Data *matchmakingclientmodels.ServiceGetSessionHistorySearchResponseV2

	Error400 *matchmakingclientmodels.ResponseErrorV1
	Error401 *matchmakingclientmodels.ResponseErrorV1
	Error403 *matchmakingclientmodels.ResponseErrorV1
	Error404 *matchmakingclientmodels.ResponseErrorV1
	Error500 *matchmakingclientmodels.ResponseError
}

func (m *SearchSessionsV2Response) Unpack() (*matchmakingclientmodels.ServiceGetSessionHistorySearchResponseV2, *matchmakingclientmodels.ApiError) {
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

// SearchSessionsV2Reader is a Reader for the SearchSessionsV2 structure.
type SearchSessionsV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SearchSessionsV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSearchSessionsV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSearchSessionsV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSearchSessionsV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewSearchSessionsV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSearchSessionsV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSearchSessionsV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /matchmaking/v2/admin/namespaces/{namespace}/sessions/history/search returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSearchSessionsV2OK creates a SearchSessionsV2OK with default headers values
func NewSearchSessionsV2OK() *SearchSessionsV2OK {
	return &SearchSessionsV2OK{}
}

/*SearchSessionsV2OK handles this case with default header values.

  Operation succeeded
*/
type SearchSessionsV2OK struct {
	Payload *matchmakingclientmodels.ServiceGetSessionHistorySearchResponseV2
}

func (o *SearchSessionsV2OK) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v2/admin/namespaces/{namespace}/sessions/history/search][%d] searchSessionsV2OK  %+v", 200, o.ToJSONString())
}

func (o *SearchSessionsV2OK) ToJSONString() string {
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

func (o *SearchSessionsV2OK) GetPayload() *matchmakingclientmodels.ServiceGetSessionHistorySearchResponseV2 {
	return o.Payload
}

func (o *SearchSessionsV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ServiceGetSessionHistorySearchResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSearchSessionsV2BadRequest creates a SearchSessionsV2BadRequest with default headers values
func NewSearchSessionsV2BadRequest() *SearchSessionsV2BadRequest {
	return &SearchSessionsV2BadRequest{}
}

/*SearchSessionsV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type SearchSessionsV2BadRequest struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *SearchSessionsV2BadRequest) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v2/admin/namespaces/{namespace}/sessions/history/search][%d] searchSessionsV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *SearchSessionsV2BadRequest) ToJSONString() string {
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

func (o *SearchSessionsV2BadRequest) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *SearchSessionsV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSearchSessionsV2Unauthorized creates a SearchSessionsV2Unauthorized with default headers values
func NewSearchSessionsV2Unauthorized() *SearchSessionsV2Unauthorized {
	return &SearchSessionsV2Unauthorized{}
}

/*SearchSessionsV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type SearchSessionsV2Unauthorized struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *SearchSessionsV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v2/admin/namespaces/{namespace}/sessions/history/search][%d] searchSessionsV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *SearchSessionsV2Unauthorized) ToJSONString() string {
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

func (o *SearchSessionsV2Unauthorized) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *SearchSessionsV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSearchSessionsV2Forbidden creates a SearchSessionsV2Forbidden with default headers values
func NewSearchSessionsV2Forbidden() *SearchSessionsV2Forbidden {
	return &SearchSessionsV2Forbidden{}
}

/*SearchSessionsV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20014</td><td>invalid audience</td></tr><tr><td>20015</td><td>insufficient scope</td></tr></table>
*/
type SearchSessionsV2Forbidden struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *SearchSessionsV2Forbidden) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v2/admin/namespaces/{namespace}/sessions/history/search][%d] searchSessionsV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *SearchSessionsV2Forbidden) ToJSONString() string {
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

func (o *SearchSessionsV2Forbidden) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *SearchSessionsV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSearchSessionsV2NotFound creates a SearchSessionsV2NotFound with default headers values
func NewSearchSessionsV2NotFound() *SearchSessionsV2NotFound {
	return &SearchSessionsV2NotFound{}
}

/*SearchSessionsV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>510110</td><td>channel not found</td></tr></table>
*/
type SearchSessionsV2NotFound struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *SearchSessionsV2NotFound) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v2/admin/namespaces/{namespace}/sessions/history/search][%d] searchSessionsV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *SearchSessionsV2NotFound) ToJSONString() string {
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

func (o *SearchSessionsV2NotFound) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *SearchSessionsV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSearchSessionsV2InternalServerError creates a SearchSessionsV2InternalServerError with default headers values
func NewSearchSessionsV2InternalServerError() *SearchSessionsV2InternalServerError {
	return &SearchSessionsV2InternalServerError{}
}

/*SearchSessionsV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type SearchSessionsV2InternalServerError struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *SearchSessionsV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v2/admin/namespaces/{namespace}/sessions/history/search][%d] searchSessionsV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SearchSessionsV2InternalServerError) ToJSONString() string {
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

func (o *SearchSessionsV2InternalServerError) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *SearchSessionsV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
