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

type GetUserEntitlementByItemIDResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.EntitlementInfo

	Error404 *platformclientmodels.ErrorEntity
}

func (m *GetUserEntitlementByItemIDResponse) Unpack() (*platformclientmodels.EntitlementInfo, *platformclientmodels.ApiError) {
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

// GetUserEntitlementByItemIDReader is a Reader for the GetUserEntitlementByItemID structure.
type GetUserEntitlementByItemIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserEntitlementByItemIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserEntitlementByItemIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserEntitlementByItemIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byItemId returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserEntitlementByItemIDOK creates a GetUserEntitlementByItemIDOK with default headers values
func NewGetUserEntitlementByItemIDOK() *GetUserEntitlementByItemIDOK {
	return &GetUserEntitlementByItemIDOK{}
}

/*GetUserEntitlementByItemIDOK handles this case with default header values.

  successful operation
*/
type GetUserEntitlementByItemIDOK struct {
	Payload *platformclientmodels.EntitlementInfo
}

func (o *GetUserEntitlementByItemIDOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byItemId][%d] getUserEntitlementByItemIdOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserEntitlementByItemIDOK) ToJSONString() string {
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

func (o *GetUserEntitlementByItemIDOK) GetPayload() *platformclientmodels.EntitlementInfo {
	return o.Payload
}

func (o *GetUserEntitlementByItemIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserEntitlementByItemIDNotFound creates a GetUserEntitlementByItemIDNotFound with default headers values
func NewGetUserEntitlementByItemIDNotFound() *GetUserEntitlementByItemIDNotFound {
	return &GetUserEntitlementByItemIDNotFound{}
}

/*GetUserEntitlementByItemIDNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31144</td><td>Entitlement with itemId [{itemId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type GetUserEntitlementByItemIDNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetUserEntitlementByItemIDNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byItemId][%d] getUserEntitlementByItemIdNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetUserEntitlementByItemIDNotFound) ToJSONString() string {
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

func (o *GetUserEntitlementByItemIDNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetUserEntitlementByItemIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
