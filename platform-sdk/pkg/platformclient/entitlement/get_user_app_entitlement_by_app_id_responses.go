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

type GetUserAppEntitlementByAppIDResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.AppEntitlementInfo

	Error404 *platformclientmodels.ErrorEntity
}

func (m *GetUserAppEntitlementByAppIDResponse) Unpack() (*platformclientmodels.AppEntitlementInfo, *platformclientmodels.ApiError) {
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

// GetUserAppEntitlementByAppIDReader is a Reader for the GetUserAppEntitlementByAppID structure.
type GetUserAppEntitlementByAppIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserAppEntitlementByAppIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserAppEntitlementByAppIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserAppEntitlementByAppIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byAppId returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserAppEntitlementByAppIDOK creates a GetUserAppEntitlementByAppIDOK with default headers values
func NewGetUserAppEntitlementByAppIDOK() *GetUserAppEntitlementByAppIDOK {
	return &GetUserAppEntitlementByAppIDOK{}
}

/*GetUserAppEntitlementByAppIDOK handles this case with default header values.

  successful operation
*/
type GetUserAppEntitlementByAppIDOK struct {
	Payload *platformclientmodels.AppEntitlementInfo
}

func (o *GetUserAppEntitlementByAppIDOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byAppId][%d] getUserAppEntitlementByAppIdOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserAppEntitlementByAppIDOK) ToJSONString() string {
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

func (o *GetUserAppEntitlementByAppIDOK) GetPayload() *platformclientmodels.AppEntitlementInfo {
	return o.Payload
}

func (o *GetUserAppEntitlementByAppIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.AppEntitlementInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserAppEntitlementByAppIDNotFound creates a GetUserAppEntitlementByAppIDNotFound with default headers values
func NewGetUserAppEntitlementByAppIDNotFound() *GetUserAppEntitlementByAppIDNotFound {
	return &GetUserAppEntitlementByAppIDNotFound{}
}

/*GetUserAppEntitlementByAppIDNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31142</td><td>Entitlement with appId [{appId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type GetUserAppEntitlementByAppIDNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetUserAppEntitlementByAppIDNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byAppId][%d] getUserAppEntitlementByAppIdNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetUserAppEntitlementByAppIDNotFound) ToJSONString() string {
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

func (o *GetUserAppEntitlementByAppIDNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetUserAppEntitlementByAppIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
