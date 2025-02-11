// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package data_retrieval

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclientmodels"
)

type PublicGetUserPersonalDataRequestsResponse struct {
	gdprclientmodels.ApiResponse
	Data *gdprclientmodels.ModelsUserPersonalDataResponse

	Error400 *gdprclientmodels.ResponseError
	Error401 *gdprclientmodels.ResponseError
	Error500 *gdprclientmodels.ResponseError
}

func (m *PublicGetUserPersonalDataRequestsResponse) Unpack() (*gdprclientmodels.ModelsUserPersonalDataResponse, *gdprclientmodels.ApiError) {
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

		case 500:
			e, err := m.Error500.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		default:
			return nil, &gdprclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// PublicGetUserPersonalDataRequestsReader is a Reader for the PublicGetUserPersonalDataRequests structure.
type PublicGetUserPersonalDataRequestsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetUserPersonalDataRequestsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetUserPersonalDataRequestsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetUserPersonalDataRequestsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetUserPersonalDataRequestsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetUserPersonalDataRequestsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /gdpr/public/namespaces/{namespace}/users/{userId}/requests returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetUserPersonalDataRequestsOK creates a PublicGetUserPersonalDataRequestsOK with default headers values
func NewPublicGetUserPersonalDataRequestsOK() *PublicGetUserPersonalDataRequestsOK {
	return &PublicGetUserPersonalDataRequestsOK{}
}

/*PublicGetUserPersonalDataRequestsOK handles this case with default header values.

  OK
*/
type PublicGetUserPersonalDataRequestsOK struct {
	Payload *gdprclientmodels.ModelsUserPersonalDataResponse
}

func (o *PublicGetUserPersonalDataRequestsOK) Error() string {
	return fmt.Sprintf("[GET /gdpr/public/namespaces/{namespace}/users/{userId}/requests][%d] publicGetUserPersonalDataRequestsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetUserPersonalDataRequestsOK) ToJSONString() string {
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

func (o *PublicGetUserPersonalDataRequestsOK) GetPayload() *gdprclientmodels.ModelsUserPersonalDataResponse {
	return o.Payload
}

func (o *PublicGetUserPersonalDataRequestsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ModelsUserPersonalDataResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserPersonalDataRequestsBadRequest creates a PublicGetUserPersonalDataRequestsBadRequest with default headers values
func NewPublicGetUserPersonalDataRequestsBadRequest() *PublicGetUserPersonalDataRequestsBadRequest {
	return &PublicGetUserPersonalDataRequestsBadRequest{}
}

/*PublicGetUserPersonalDataRequestsBadRequest handles this case with default header values.

  Bad Request
*/
type PublicGetUserPersonalDataRequestsBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicGetUserPersonalDataRequestsBadRequest) Error() string {
	return fmt.Sprintf("[GET /gdpr/public/namespaces/{namespace}/users/{userId}/requests][%d] publicGetUserPersonalDataRequestsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetUserPersonalDataRequestsBadRequest) ToJSONString() string {
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

func (o *PublicGetUserPersonalDataRequestsBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetUserPersonalDataRequestsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserPersonalDataRequestsUnauthorized creates a PublicGetUserPersonalDataRequestsUnauthorized with default headers values
func NewPublicGetUserPersonalDataRequestsUnauthorized() *PublicGetUserPersonalDataRequestsUnauthorized {
	return &PublicGetUserPersonalDataRequestsUnauthorized{}
}

/*PublicGetUserPersonalDataRequestsUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGetUserPersonalDataRequestsUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicGetUserPersonalDataRequestsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /gdpr/public/namespaces/{namespace}/users/{userId}/requests][%d] publicGetUserPersonalDataRequestsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetUserPersonalDataRequestsUnauthorized) ToJSONString() string {
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

func (o *PublicGetUserPersonalDataRequestsUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetUserPersonalDataRequestsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserPersonalDataRequestsInternalServerError creates a PublicGetUserPersonalDataRequestsInternalServerError with default headers values
func NewPublicGetUserPersonalDataRequestsInternalServerError() *PublicGetUserPersonalDataRequestsInternalServerError {
	return &PublicGetUserPersonalDataRequestsInternalServerError{}
}

/*PublicGetUserPersonalDataRequestsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGetUserPersonalDataRequestsInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicGetUserPersonalDataRequestsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /gdpr/public/namespaces/{namespace}/users/{userId}/requests][%d] publicGetUserPersonalDataRequestsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetUserPersonalDataRequestsInternalServerError) ToJSONString() string {
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

func (o *PublicGetUserPersonalDataRequestsInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetUserPersonalDataRequestsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
