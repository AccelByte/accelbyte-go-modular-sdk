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

type GetUserProfileInfoResponse struct {
	basicclientmodels.ApiResponse
	Data *basicclientmodels.UserProfilePrivateInfo

	Error400 *basicclientmodels.ValidationErrorEntity
	Error401 *basicclientmodels.ErrorEntity
	Error403 *basicclientmodels.ErrorEntity
	Error404 *basicclientmodels.ErrorEntity
}

func (m *GetUserProfileInfoResponse) Unpack() (*basicclientmodels.UserProfilePrivateInfo, *basicclientmodels.ApiError) {
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

// GetUserProfileInfoReader is a Reader for the GetUserProfileInfo structure.
type GetUserProfileInfoReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserProfileInfoReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserProfileInfoOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetUserProfileInfoBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserProfileInfoUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserProfileInfoForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserProfileInfoNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserProfileInfoOK creates a GetUserProfileInfoOK with default headers values
func NewGetUserProfileInfoOK() *GetUserProfileInfoOK {
	return &GetUserProfileInfoOK{}
}

/*GetUserProfileInfoOK handles this case with default header values.

  successful operation
*/
type GetUserProfileInfoOK struct {
	Payload *basicclientmodels.UserProfilePrivateInfo
}

func (o *GetUserProfileInfoOK) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles][%d] getUserProfileInfoOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserProfileInfoOK) ToJSONString() string {
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

func (o *GetUserProfileInfoOK) GetPayload() *basicclientmodels.UserProfilePrivateInfo {
	return o.Payload
}

func (o *GetUserProfileInfoOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.UserProfilePrivateInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserProfileInfoBadRequest creates a GetUserProfileInfoBadRequest with default headers values
func NewGetUserProfileInfoBadRequest() *GetUserProfileInfoBadRequest {
	return &GetUserProfileInfoBadRequest{}
}

/*GetUserProfileInfoBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetUserProfileInfoBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *GetUserProfileInfoBadRequest) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles][%d] getUserProfileInfoBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetUserProfileInfoBadRequest) ToJSONString() string {
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

func (o *GetUserProfileInfoBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *GetUserProfileInfoBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserProfileInfoUnauthorized creates a GetUserProfileInfoUnauthorized with default headers values
func NewGetUserProfileInfoUnauthorized() *GetUserProfileInfoUnauthorized {
	return &GetUserProfileInfoUnauthorized{}
}

/*GetUserProfileInfoUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type GetUserProfileInfoUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetUserProfileInfoUnauthorized) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles][%d] getUserProfileInfoUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUserProfileInfoUnauthorized) ToJSONString() string {
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

func (o *GetUserProfileInfoUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetUserProfileInfoUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserProfileInfoForbidden creates a GetUserProfileInfoForbidden with default headers values
func NewGetUserProfileInfoForbidden() *GetUserProfileInfoForbidden {
	return &GetUserProfileInfoForbidden{}
}

/*GetUserProfileInfoForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type GetUserProfileInfoForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetUserProfileInfoForbidden) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles][%d] getUserProfileInfoForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUserProfileInfoForbidden) ToJSONString() string {
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

func (o *GetUserProfileInfoForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetUserProfileInfoForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserProfileInfoNotFound creates a GetUserProfileInfoNotFound with default headers values
func NewGetUserProfileInfoNotFound() *GetUserProfileInfoNotFound {
	return &GetUserProfileInfoNotFound{}
}

/*GetUserProfileInfoNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11440</td><td>Unable to {action}: User profile not found in namespace [{namespace}]</td></tr></table>
*/
type GetUserProfileInfoNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetUserProfileInfoNotFound) Error() string {
	return fmt.Sprintf("[GET /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles][%d] getUserProfileInfoNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetUserProfileInfoNotFound) ToJSONString() string {
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

func (o *GetUserProfileInfoNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetUserProfileInfoNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
