// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package match_pools

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2clientmodels"
)

type MatchPoolMetricResponse struct {
	match2clientmodels.ApiResponse
	Data *match2clientmodels.APITicketMetricResultRecord

	Error401 *match2clientmodels.ResponseError
	Error403 *match2clientmodels.ResponseError
	Error404 *match2clientmodels.ResponseError
	Error500 *match2clientmodels.ResponseError
}

func (m *MatchPoolMetricResponse) Unpack() (*match2clientmodels.APITicketMetricResultRecord, *match2clientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

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
			return nil, &match2clientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// MatchPoolMetricReader is a Reader for the MatchPoolMetric structure.
type MatchPoolMetricReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *MatchPoolMetricReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewMatchPoolMetricOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewMatchPoolMetricUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewMatchPoolMetricForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewMatchPoolMetricNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewMatchPoolMetricInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics returns an error %d: %s", response.Code(), string(data))
	}
}

// NewMatchPoolMetricOK creates a MatchPoolMetricOK with default headers values
func NewMatchPoolMetricOK() *MatchPoolMetricOK {
	return &MatchPoolMetricOK{}
}

/*MatchPoolMetricOK handles this case with default header values.

  Created
*/
type MatchPoolMetricOK struct {
	Payload *match2clientmodels.APITicketMetricResultRecord
}

func (o *MatchPoolMetricOK) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics][%d] matchPoolMetricOK  %+v", 200, o.ToJSONString())
}

func (o *MatchPoolMetricOK) ToJSONString() string {
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

func (o *MatchPoolMetricOK) GetPayload() *match2clientmodels.APITicketMetricResultRecord {
	return o.Payload
}

func (o *MatchPoolMetricOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.APITicketMetricResultRecord)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewMatchPoolMetricUnauthorized creates a MatchPoolMetricUnauthorized with default headers values
func NewMatchPoolMetricUnauthorized() *MatchPoolMetricUnauthorized {
	return &MatchPoolMetricUnauthorized{}
}

/*MatchPoolMetricUnauthorized handles this case with default header values.

  Unauthorized
*/
type MatchPoolMetricUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *MatchPoolMetricUnauthorized) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics][%d] matchPoolMetricUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *MatchPoolMetricUnauthorized) ToJSONString() string {
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

func (o *MatchPoolMetricUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *MatchPoolMetricUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewMatchPoolMetricForbidden creates a MatchPoolMetricForbidden with default headers values
func NewMatchPoolMetricForbidden() *MatchPoolMetricForbidden {
	return &MatchPoolMetricForbidden{}
}

/*MatchPoolMetricForbidden handles this case with default header values.

  Forbidden
*/
type MatchPoolMetricForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *MatchPoolMetricForbidden) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics][%d] matchPoolMetricForbidden  %+v", 403, o.ToJSONString())
}

func (o *MatchPoolMetricForbidden) ToJSONString() string {
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

func (o *MatchPoolMetricForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *MatchPoolMetricForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewMatchPoolMetricNotFound creates a MatchPoolMetricNotFound with default headers values
func NewMatchPoolMetricNotFound() *MatchPoolMetricNotFound {
	return &MatchPoolMetricNotFound{}
}

/*MatchPoolMetricNotFound handles this case with default header values.

  Not Found
*/
type MatchPoolMetricNotFound struct {
	Payload *match2clientmodels.ResponseError
}

func (o *MatchPoolMetricNotFound) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics][%d] matchPoolMetricNotFound  %+v", 404, o.ToJSONString())
}

func (o *MatchPoolMetricNotFound) ToJSONString() string {
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

func (o *MatchPoolMetricNotFound) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *MatchPoolMetricNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewMatchPoolMetricInternalServerError creates a MatchPoolMetricInternalServerError with default headers values
func NewMatchPoolMetricInternalServerError() *MatchPoolMetricInternalServerError {
	return &MatchPoolMetricInternalServerError{}
}

/*MatchPoolMetricInternalServerError handles this case with default header values.

  Internal Server Error
*/
type MatchPoolMetricInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *MatchPoolMetricInternalServerError) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics][%d] matchPoolMetricInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *MatchPoolMetricInternalServerError) ToJSONString() string {
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

func (o *MatchPoolMetricInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *MatchPoolMetricInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
