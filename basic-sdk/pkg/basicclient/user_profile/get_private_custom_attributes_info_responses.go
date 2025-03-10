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

type GetPrivateCustomAttributesInfoResponse struct {
	basicclientmodels.ApiResponse
	Data map[string]interface{}

	Error401 *basicclientmodels.ErrorEntity
	Error403 *basicclientmodels.ErrorEntity
	Error404 *basicclientmodels.ErrorEntity
}

func (m *GetPrivateCustomAttributesInfoResponse) Unpack() (map[string]interface{}, *basicclientmodels.ApiError) {
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

		default:
			return nil, &basicclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// GetPrivateCustomAttributesInfoReader is a Reader for the GetPrivateCustomAttributesInfo structure.
type GetPrivateCustomAttributesInfoReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetPrivateCustomAttributesInfoReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetPrivateCustomAttributesInfoOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetPrivateCustomAttributesInfoUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetPrivateCustomAttributesInfoForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetPrivateCustomAttributesInfoNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/privateCustomAttributes returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetPrivateCustomAttributesInfoOK creates a GetPrivateCustomAttributesInfoOK with default headers values
func NewGetPrivateCustomAttributesInfoOK() *GetPrivateCustomAttributesInfoOK {
	return &GetPrivateCustomAttributesInfoOK{}
}

/*GetPrivateCustomAttributesInfoOK handles this case with default header values.

  successful operation
*/
type GetPrivateCustomAttributesInfoOK struct {
	Payload map[string]interface{}
}

func (o *GetPrivateCustomAttributesInfoOK) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/privateCustomAttributes][%d] getPrivateCustomAttributesInfoOK  %+v", 200, o.ToJSONString())
}

func (o *GetPrivateCustomAttributesInfoOK) ToJSONString() string {
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

func (o *GetPrivateCustomAttributesInfoOK) GetPayload() map[string]interface{} {
	return o.Payload
}

func (o *GetPrivateCustomAttributesInfoOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetPrivateCustomAttributesInfoUnauthorized creates a GetPrivateCustomAttributesInfoUnauthorized with default headers values
func NewGetPrivateCustomAttributesInfoUnauthorized() *GetPrivateCustomAttributesInfoUnauthorized {
	return &GetPrivateCustomAttributesInfoUnauthorized{}
}

/*GetPrivateCustomAttributesInfoUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type GetPrivateCustomAttributesInfoUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetPrivateCustomAttributesInfoUnauthorized) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/privateCustomAttributes][%d] getPrivateCustomAttributesInfoUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetPrivateCustomAttributesInfoUnauthorized) ToJSONString() string {
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

func (o *GetPrivateCustomAttributesInfoUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetPrivateCustomAttributesInfoUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetPrivateCustomAttributesInfoForbidden creates a GetPrivateCustomAttributesInfoForbidden with default headers values
func NewGetPrivateCustomAttributesInfoForbidden() *GetPrivateCustomAttributesInfoForbidden {
	return &GetPrivateCustomAttributesInfoForbidden{}
}

/*GetPrivateCustomAttributesInfoForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type GetPrivateCustomAttributesInfoForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetPrivateCustomAttributesInfoForbidden) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/privateCustomAttributes][%d] getPrivateCustomAttributesInfoForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetPrivateCustomAttributesInfoForbidden) ToJSONString() string {
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

func (o *GetPrivateCustomAttributesInfoForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetPrivateCustomAttributesInfoForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetPrivateCustomAttributesInfoNotFound creates a GetPrivateCustomAttributesInfoNotFound with default headers values
func NewGetPrivateCustomAttributesInfoNotFound() *GetPrivateCustomAttributesInfoNotFound {
	return &GetPrivateCustomAttributesInfoNotFound{}
}

/*GetPrivateCustomAttributesInfoNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11440</td><td>Unable to {action}: User profile not found in namespace [{namespace}]</td></tr></table>
*/
type GetPrivateCustomAttributesInfoNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetPrivateCustomAttributesInfoNotFound) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/privateCustomAttributes][%d] getPrivateCustomAttributesInfoNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetPrivateCustomAttributesInfoNotFound) ToJSONString() string {
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

func (o *GetPrivateCustomAttributesInfoNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetPrivateCustomAttributesInfoNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
