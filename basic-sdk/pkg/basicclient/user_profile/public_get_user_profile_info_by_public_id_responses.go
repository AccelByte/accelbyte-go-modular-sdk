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

type PublicGetUserProfileInfoByPublicIDResponse struct {
	basicclientmodels.ApiResponse
	Data *basicclientmodels.UserProfilePublicInfo

	Error400 *basicclientmodels.ValidationErrorEntity
	Error404 *basicclientmodels.ErrorEntity
}

func (m *PublicGetUserProfileInfoByPublicIDResponse) Unpack() (*basicclientmodels.UserProfilePublicInfo, *basicclientmodels.ApiError) {
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

// PublicGetUserProfileInfoByPublicIDReader is a Reader for the PublicGetUserProfileInfoByPublicID structure.
type PublicGetUserProfileInfoByPublicIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetUserProfileInfoByPublicIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetUserProfileInfoByPublicIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetUserProfileInfoByPublicIDBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetUserProfileInfoByPublicIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /basic/v1/public/namespaces/{namespace}/profiles/public/byPublicId returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetUserProfileInfoByPublicIDOK creates a PublicGetUserProfileInfoByPublicIDOK with default headers values
func NewPublicGetUserProfileInfoByPublicIDOK() *PublicGetUserProfileInfoByPublicIDOK {
	return &PublicGetUserProfileInfoByPublicIDOK{}
}

/*PublicGetUserProfileInfoByPublicIDOK handles this case with default header values.

  Successful operation
*/
type PublicGetUserProfileInfoByPublicIDOK struct {
	Payload *basicclientmodels.UserProfilePublicInfo
}

func (o *PublicGetUserProfileInfoByPublicIDOK) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/profiles/public/byPublicId][%d] publicGetUserProfileInfoByPublicIdOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetUserProfileInfoByPublicIDOK) ToJSONString() string {
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

func (o *PublicGetUserProfileInfoByPublicIDOK) GetPayload() *basicclientmodels.UserProfilePublicInfo {
	return o.Payload
}

func (o *PublicGetUserProfileInfoByPublicIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetUserProfileInfoByPublicIDBadRequest creates a PublicGetUserProfileInfoByPublicIDBadRequest with default headers values
func NewPublicGetUserProfileInfoByPublicIDBadRequest() *PublicGetUserProfileInfoByPublicIDBadRequest {
	return &PublicGetUserProfileInfoByPublicIDBadRequest{}
}

/*PublicGetUserProfileInfoByPublicIDBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicGetUserProfileInfoByPublicIDBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *PublicGetUserProfileInfoByPublicIDBadRequest) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/profiles/public/byPublicId][%d] publicGetUserProfileInfoByPublicIdBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetUserProfileInfoByPublicIDBadRequest) ToJSONString() string {
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

func (o *PublicGetUserProfileInfoByPublicIDBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicGetUserProfileInfoByPublicIDBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetUserProfileInfoByPublicIDNotFound creates a PublicGetUserProfileInfoByPublicIDNotFound with default headers values
func NewPublicGetUserProfileInfoByPublicIDNotFound() *PublicGetUserProfileInfoByPublicIDNotFound {
	return &PublicGetUserProfileInfoByPublicIDNotFound{}
}

/*PublicGetUserProfileInfoByPublicIDNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11469</td><td>User profile with publicId [{publicId}] not found in namespace [{namespace}]</td></tr></table>
*/
type PublicGetUserProfileInfoByPublicIDNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicGetUserProfileInfoByPublicIDNotFound) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/profiles/public/byPublicId][%d] publicGetUserProfileInfoByPublicIdNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetUserProfileInfoByPublicIDNotFound) ToJSONString() string {
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

func (o *PublicGetUserProfileInfoByPublicIDNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetUserProfileInfoByPublicIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
