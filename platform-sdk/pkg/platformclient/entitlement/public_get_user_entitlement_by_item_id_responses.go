// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package entitlement

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
)

type PublicGetUserEntitlementByItemIDResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.EntitlementInfo

	Error404 *platformclientmodels.ErrorEntity
}

func (m *PublicGetUserEntitlementByItemIDResponse) Unpack() (*platformclientmodels.EntitlementInfo, *platformclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 404:
			e, err := m.Error404.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		default:
			return nil, &platformclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// PublicGetUserEntitlementByItemIDReader is a Reader for the PublicGetUserEntitlementByItemID structure.
type PublicGetUserEntitlementByItemIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetUserEntitlementByItemIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetUserEntitlementByItemIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetUserEntitlementByItemIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/users/{userId}/entitlements/byItemId returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetUserEntitlementByItemIDOK creates a PublicGetUserEntitlementByItemIDOK with default headers values
func NewPublicGetUserEntitlementByItemIDOK() *PublicGetUserEntitlementByItemIDOK {
	return &PublicGetUserEntitlementByItemIDOK{}
}

/*PublicGetUserEntitlementByItemIDOK handles this case with default header values.

  successful operation
*/
type PublicGetUserEntitlementByItemIDOK struct {
	Payload *platformclientmodels.EntitlementInfo
}

func (o *PublicGetUserEntitlementByItemIDOK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/users/{userId}/entitlements/byItemId][%d] publicGetUserEntitlementByItemIdOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetUserEntitlementByItemIDOK) ToJSONString() string {
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

func (o *PublicGetUserEntitlementByItemIDOK) GetPayload() *platformclientmodels.EntitlementInfo {
	return o.Payload
}

func (o *PublicGetUserEntitlementByItemIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.EntitlementInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserEntitlementByItemIDNotFound creates a PublicGetUserEntitlementByItemIDNotFound with default headers values
func NewPublicGetUserEntitlementByItemIDNotFound() *PublicGetUserEntitlementByItemIDNotFound {
	return &PublicGetUserEntitlementByItemIDNotFound{}
}

/*PublicGetUserEntitlementByItemIDNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31144</td><td>Entitlement with itemId [{itemId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type PublicGetUserEntitlementByItemIDNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *PublicGetUserEntitlementByItemIDNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/users/{userId}/entitlements/byItemId][%d] publicGetUserEntitlementByItemIdNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetUserEntitlementByItemIDNotFound) ToJSONString() string {
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

func (o *PublicGetUserEntitlementByItemIDNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetUserEntitlementByItemIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
