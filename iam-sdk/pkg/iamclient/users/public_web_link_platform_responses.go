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

type PublicWebLinkPlatformResponse struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.ModelWebLinkingResponse

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error404 *iamclientmodels.RestErrorResponse
}

func (m *PublicWebLinkPlatformResponse) Unpack() (*iamclientmodels.ModelWebLinkingResponse, *iamclientmodels.ApiError) {
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

		case 404:
			e, err := m.Error404.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		default:
			return nil, &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// PublicWebLinkPlatformReader is a Reader for the PublicWebLinkPlatform structure.
type PublicWebLinkPlatformReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicWebLinkPlatformReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicWebLinkPlatformOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicWebLinkPlatformBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicWebLinkPlatformUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicWebLinkPlatformNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/link returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicWebLinkPlatformOK creates a PublicWebLinkPlatformOK with default headers values
func NewPublicWebLinkPlatformOK() *PublicWebLinkPlatformOK {
	return &PublicWebLinkPlatformOK{}
}

/*PublicWebLinkPlatformOK handles this case with default header values.

  OK
*/
type PublicWebLinkPlatformOK struct {
	Payload *iamclientmodels.ModelWebLinkingResponse
}

func (o *PublicWebLinkPlatformOK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/link][%d] publicWebLinkPlatformOK  %+v", 200, o.ToJSONString())
}

func (o *PublicWebLinkPlatformOK) ToJSONString() string {
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

func (o *PublicWebLinkPlatformOK) GetPayload() *iamclientmodels.ModelWebLinkingResponse {
	return o.Payload
}

func (o *PublicWebLinkPlatformOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelWebLinkingResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicWebLinkPlatformBadRequest creates a PublicWebLinkPlatformBadRequest with default headers values
func NewPublicWebLinkPlatformBadRequest() *PublicWebLinkPlatformBadRequest {
	return &PublicWebLinkPlatformBadRequest{}
}

/*PublicWebLinkPlatformBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicWebLinkPlatformBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicWebLinkPlatformBadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/link][%d] publicWebLinkPlatformBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicWebLinkPlatformBadRequest) ToJSONString() string {
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

func (o *PublicWebLinkPlatformBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicWebLinkPlatformBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicWebLinkPlatformUnauthorized creates a PublicWebLinkPlatformUnauthorized with default headers values
func NewPublicWebLinkPlatformUnauthorized() *PublicWebLinkPlatformUnauthorized {
	return &PublicWebLinkPlatformUnauthorized{}
}

/*PublicWebLinkPlatformUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type PublicWebLinkPlatformUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicWebLinkPlatformUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/link][%d] publicWebLinkPlatformUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicWebLinkPlatformUnauthorized) ToJSONString() string {
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

func (o *PublicWebLinkPlatformUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicWebLinkPlatformUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicWebLinkPlatformNotFound creates a PublicWebLinkPlatformNotFound with default headers values
func NewPublicWebLinkPlatformNotFound() *PublicWebLinkPlatformNotFound {
	return &PublicWebLinkPlatformNotFound{}
}

/*PublicWebLinkPlatformNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10365</td><td>client not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicWebLinkPlatformNotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicWebLinkPlatformNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/link][%d] publicWebLinkPlatformNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicWebLinkPlatformNotFound) ToJSONString() string {
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

func (o *PublicWebLinkPlatformNotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicWebLinkPlatformNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
