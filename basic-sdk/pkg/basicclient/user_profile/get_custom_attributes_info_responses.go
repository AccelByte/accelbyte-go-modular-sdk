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

type GetCustomAttributesInfoResponse struct {
	basicclientmodels.ApiResponse
	Data map[string]interface{}

	Error401 *basicclientmodels.ErrorEntity
	Error403 *basicclientmodels.ErrorEntity
	Error404 *basicclientmodels.ErrorEntity
}

func (m *GetCustomAttributesInfoResponse) Unpack() (map[string]interface{}, *basicclientmodels.ApiError) {
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

// GetCustomAttributesInfoReader is a Reader for the GetCustomAttributesInfo structure.
type GetCustomAttributesInfoReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetCustomAttributesInfoReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetCustomAttributesInfoOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetCustomAttributesInfoUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetCustomAttributesInfoForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetCustomAttributesInfoNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/customAttributes returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetCustomAttributesInfoOK creates a GetCustomAttributesInfoOK with default headers values
func NewGetCustomAttributesInfoOK() *GetCustomAttributesInfoOK {
	return &GetCustomAttributesInfoOK{}
}

/*GetCustomAttributesInfoOK handles this case with default header values.

  successful operation
*/
type GetCustomAttributesInfoOK struct {
	Payload map[string]interface{}
}

func (o *GetCustomAttributesInfoOK) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/customAttributes][%d] getCustomAttributesInfoOK  %+v", 200, o.ToJSONString())
}

func (o *GetCustomAttributesInfoOK) ToJSONString() string {
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

func (o *GetCustomAttributesInfoOK) GetPayload() map[string]interface{} {
	return o.Payload
}

func (o *GetCustomAttributesInfoOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetCustomAttributesInfoUnauthorized creates a GetCustomAttributesInfoUnauthorized with default headers values
func NewGetCustomAttributesInfoUnauthorized() *GetCustomAttributesInfoUnauthorized {
	return &GetCustomAttributesInfoUnauthorized{}
}

/*GetCustomAttributesInfoUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type GetCustomAttributesInfoUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetCustomAttributesInfoUnauthorized) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/customAttributes][%d] getCustomAttributesInfoUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetCustomAttributesInfoUnauthorized) ToJSONString() string {
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

func (o *GetCustomAttributesInfoUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetCustomAttributesInfoUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetCustomAttributesInfoForbidden creates a GetCustomAttributesInfoForbidden with default headers values
func NewGetCustomAttributesInfoForbidden() *GetCustomAttributesInfoForbidden {
	return &GetCustomAttributesInfoForbidden{}
}

/*GetCustomAttributesInfoForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type GetCustomAttributesInfoForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetCustomAttributesInfoForbidden) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/customAttributes][%d] getCustomAttributesInfoForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetCustomAttributesInfoForbidden) ToJSONString() string {
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

func (o *GetCustomAttributesInfoForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetCustomAttributesInfoForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetCustomAttributesInfoNotFound creates a GetCustomAttributesInfoNotFound with default headers values
func NewGetCustomAttributesInfoNotFound() *GetCustomAttributesInfoNotFound {
	return &GetCustomAttributesInfoNotFound{}
}

/*GetCustomAttributesInfoNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11440</td><td>Unable to {action}: User profile not found in namespace [{namespace}]</td></tr></table>
*/
type GetCustomAttributesInfoNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetCustomAttributesInfoNotFound) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/customAttributes][%d] getCustomAttributesInfoNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetCustomAttributesInfoNotFound) ToJSONString() string {
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

func (o *GetCustomAttributesInfoNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetCustomAttributesInfoNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
