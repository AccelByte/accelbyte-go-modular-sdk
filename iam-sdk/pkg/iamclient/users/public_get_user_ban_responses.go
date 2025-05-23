// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
)

type PublicGetUserBanResponse struct {
	iamclientmodels.ApiResponse
	Data []*iamclientmodels.ModelUserBanResponse

	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 string
}

func (m *PublicGetUserBanResponse) Unpack() ([]*iamclientmodels.ModelUserBanResponse, *iamclientmodels.ApiError) {
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
			return nil, &iamclientmodels.ApiError{Code: "404", Message: m.Error404}

		default:
			return nil, &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// PublicGetUserBanReader is a Reader for the PublicGetUserBan structure.
type PublicGetUserBanReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetUserBanReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetUserBanOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetUserBanUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetUserBanForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetUserBanNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v2/public/namespaces/{namespace}/users/{userId}/bans returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetUserBanOK creates a PublicGetUserBanOK with default headers values
func NewPublicGetUserBanOK() *PublicGetUserBanOK {
	return &PublicGetUserBanOK{}
}

/*PublicGetUserBanOK handles this case with default header values.

  OK
*/
type PublicGetUserBanOK struct {
	Payload []*iamclientmodels.ModelUserBanResponse
}

func (o *PublicGetUserBanOK) Error() string {
	return fmt.Sprintf("[GET /iam/v2/public/namespaces/{namespace}/users/{userId}/bans][%d] publicGetUserBanOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetUserBanOK) ToJSONString() string {
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

func (o *PublicGetUserBanOK) GetPayload() []*iamclientmodels.ModelUserBanResponse {
	return o.Payload
}

func (o *PublicGetUserBanOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserBanUnauthorized creates a PublicGetUserBanUnauthorized with default headers values
func NewPublicGetUserBanUnauthorized() *PublicGetUserBanUnauthorized {
	return &PublicGetUserBanUnauthorized{}
}

/*PublicGetUserBanUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicGetUserBanUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUserBanUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v2/public/namespaces/{namespace}/users/{userId}/bans][%d] publicGetUserBanUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetUserBanUnauthorized) ToJSONString() string {
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

func (o *PublicGetUserBanUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUserBanUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserBanForbidden creates a PublicGetUserBanForbidden with default headers values
func NewPublicGetUserBanForbidden() *PublicGetUserBanForbidden {
	return &PublicGetUserBanForbidden{}
}

/*PublicGetUserBanForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicGetUserBanForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUserBanForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v2/public/namespaces/{namespace}/users/{userId}/bans][%d] publicGetUserBanForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetUserBanForbidden) ToJSONString() string {
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

func (o *PublicGetUserBanForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUserBanForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserBanNotFound creates a PublicGetUserBanNotFound with default headers values
func NewPublicGetUserBanNotFound() *PublicGetUserBanNotFound {
	return &PublicGetUserBanNotFound{}
}

/*PublicGetUserBanNotFound handles this case with default header values.

  Data not found
*/
type PublicGetUserBanNotFound struct {
}

func (o *PublicGetUserBanNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v2/public/namespaces/{namespace}/users/{userId}/bans][%d] publicGetUserBanNotFound ", 404)
}

func (o *PublicGetUserBanNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
