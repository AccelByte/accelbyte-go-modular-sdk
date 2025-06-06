// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_profile

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclientmodels"
)

type PublicGetUserProfilePublicInfoResponse struct {
	basicclientmodels.ApiResponse
	Data *basicclientmodels.UserProfilePublicInfo

	Error400 *basicclientmodels.ValidationErrorEntity
	Error404 *basicclientmodels.ErrorEntity
}

func (m *PublicGetUserProfilePublicInfoResponse) Unpack() (*basicclientmodels.UserProfilePublicInfo, *basicclientmodels.ApiError) {
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

		default:
			return nil, &basicclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// PublicGetUserProfilePublicInfoReader is a Reader for the PublicGetUserProfilePublicInfo structure.
type PublicGetUserProfilePublicInfoReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetUserProfilePublicInfoReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetUserProfilePublicInfoOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetUserProfilePublicInfoBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetUserProfilePublicInfoNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/public returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetUserProfilePublicInfoOK creates a PublicGetUserProfilePublicInfoOK with default headers values
func NewPublicGetUserProfilePublicInfoOK() *PublicGetUserProfilePublicInfoOK {
	return &PublicGetUserProfilePublicInfoOK{}
}

/*PublicGetUserProfilePublicInfoOK handles this case with default header values.

  Successful operation
*/
type PublicGetUserProfilePublicInfoOK struct {
	Payload *basicclientmodels.UserProfilePublicInfo
}

func (o *PublicGetUserProfilePublicInfoOK) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/public][%d] publicGetUserProfilePublicInfoOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetUserProfilePublicInfoOK) ToJSONString() string {
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

func (o *PublicGetUserProfilePublicInfoOK) GetPayload() *basicclientmodels.UserProfilePublicInfo {
	return o.Payload
}

func (o *PublicGetUserProfilePublicInfoOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.UserProfilePublicInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserProfilePublicInfoBadRequest creates a PublicGetUserProfilePublicInfoBadRequest with default headers values
func NewPublicGetUserProfilePublicInfoBadRequest() *PublicGetUserProfilePublicInfoBadRequest {
	return &PublicGetUserProfilePublicInfoBadRequest{}
}

/*PublicGetUserProfilePublicInfoBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicGetUserProfilePublicInfoBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *PublicGetUserProfilePublicInfoBadRequest) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/public][%d] publicGetUserProfilePublicInfoBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetUserProfilePublicInfoBadRequest) ToJSONString() string {
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

func (o *PublicGetUserProfilePublicInfoBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicGetUserProfilePublicInfoBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserProfilePublicInfoNotFound creates a PublicGetUserProfilePublicInfoNotFound with default headers values
func NewPublicGetUserProfilePublicInfoNotFound() *PublicGetUserProfilePublicInfoNotFound {
	return &PublicGetUserProfilePublicInfoNotFound{}
}

/*PublicGetUserProfilePublicInfoNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11440</td><td>Unable to {action}: User profile not found in namespace [{namespace}]</td></tr></table>
*/
type PublicGetUserProfilePublicInfoNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicGetUserProfilePublicInfoNotFound) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/public][%d] publicGetUserProfilePublicInfoNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetUserProfilePublicInfoNotFound) ToJSONString() string {
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

func (o *PublicGetUserProfilePublicInfoNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetUserProfilePublicInfoNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
