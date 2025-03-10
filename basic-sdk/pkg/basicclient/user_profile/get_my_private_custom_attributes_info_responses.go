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

type GetMyPrivateCustomAttributesInfoResponse struct {
	basicclientmodels.ApiResponse
	Data map[string]interface{}

	Error401 *basicclientmodels.ErrorEntity
	Error403 *basicclientmodels.ErrorEntity
	Error404 *basicclientmodels.ErrorEntity
}

func (m *GetMyPrivateCustomAttributesInfoResponse) Unpack() (map[string]interface{}, *basicclientmodels.ApiError) {
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

// GetMyPrivateCustomAttributesInfoReader is a Reader for the GetMyPrivateCustomAttributesInfo structure.
type GetMyPrivateCustomAttributesInfoReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetMyPrivateCustomAttributesInfoReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetMyPrivateCustomAttributesInfoOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetMyPrivateCustomAttributesInfoUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetMyPrivateCustomAttributesInfoForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetMyPrivateCustomAttributesInfoNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /basic/v1/public/namespaces/{namespace}/users/me/profiles/privateCustomAttributes returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetMyPrivateCustomAttributesInfoOK creates a GetMyPrivateCustomAttributesInfoOK with default headers values
func NewGetMyPrivateCustomAttributesInfoOK() *GetMyPrivateCustomAttributesInfoOK {
	return &GetMyPrivateCustomAttributesInfoOK{}
}

/*GetMyPrivateCustomAttributesInfoOK handles this case with default header values.

  successful operation
*/
type GetMyPrivateCustomAttributesInfoOK struct {
	Payload map[string]interface{}
}

func (o *GetMyPrivateCustomAttributesInfoOK) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/users/me/profiles/privateCustomAttributes][%d] getMyPrivateCustomAttributesInfoOK  %+v", 200, o.ToJSONString())
}

func (o *GetMyPrivateCustomAttributesInfoOK) ToJSONString() string {
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

func (o *GetMyPrivateCustomAttributesInfoOK) GetPayload() map[string]interface{} {
	return o.Payload
}

func (o *GetMyPrivateCustomAttributesInfoOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetMyPrivateCustomAttributesInfoUnauthorized creates a GetMyPrivateCustomAttributesInfoUnauthorized with default headers values
func NewGetMyPrivateCustomAttributesInfoUnauthorized() *GetMyPrivateCustomAttributesInfoUnauthorized {
	return &GetMyPrivateCustomAttributesInfoUnauthorized{}
}

/*GetMyPrivateCustomAttributesInfoUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type GetMyPrivateCustomAttributesInfoUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetMyPrivateCustomAttributesInfoUnauthorized) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/users/me/profiles/privateCustomAttributes][%d] getMyPrivateCustomAttributesInfoUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetMyPrivateCustomAttributesInfoUnauthorized) ToJSONString() string {
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

func (o *GetMyPrivateCustomAttributesInfoUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetMyPrivateCustomAttributesInfoUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetMyPrivateCustomAttributesInfoForbidden creates a GetMyPrivateCustomAttributesInfoForbidden with default headers values
func NewGetMyPrivateCustomAttributesInfoForbidden() *GetMyPrivateCustomAttributesInfoForbidden {
	return &GetMyPrivateCustomAttributesInfoForbidden{}
}

/*GetMyPrivateCustomAttributesInfoForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type GetMyPrivateCustomAttributesInfoForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetMyPrivateCustomAttributesInfoForbidden) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/users/me/profiles/privateCustomAttributes][%d] getMyPrivateCustomAttributesInfoForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetMyPrivateCustomAttributesInfoForbidden) ToJSONString() string {
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

func (o *GetMyPrivateCustomAttributesInfoForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetMyPrivateCustomAttributesInfoForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetMyPrivateCustomAttributesInfoNotFound creates a GetMyPrivateCustomAttributesInfoNotFound with default headers values
func NewGetMyPrivateCustomAttributesInfoNotFound() *GetMyPrivateCustomAttributesInfoNotFound {
	return &GetMyPrivateCustomAttributesInfoNotFound{}
}

/*GetMyPrivateCustomAttributesInfoNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11440</td><td>Unable to {action}: User profile not found in namespace [{namespace}]</td></tr></table>
*/
type GetMyPrivateCustomAttributesInfoNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetMyPrivateCustomAttributesInfoNotFound) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/users/me/profiles/privateCustomAttributes][%d] getMyPrivateCustomAttributesInfoNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetMyPrivateCustomAttributesInfoNotFound) ToJSONString() string {
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

func (o *GetMyPrivateCustomAttributesInfoNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetMyPrivateCustomAttributesInfoNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
