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

type UpdatePrivateCustomAttributesPartiallyResponse struct {
	basicclientmodels.ApiResponse
	Data map[string]interface{}

	Error400 *basicclientmodels.ValidationErrorEntity
	Error401 *basicclientmodels.ErrorEntity
	Error403 *basicclientmodels.ErrorEntity
	Error404 *basicclientmodels.ErrorEntity
}

func (m *UpdatePrivateCustomAttributesPartiallyResponse) Unpack() (map[string]interface{}, *basicclientmodels.ApiError) {
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

// UpdatePrivateCustomAttributesPartiallyReader is a Reader for the UpdatePrivateCustomAttributesPartially structure.
type UpdatePrivateCustomAttributesPartiallyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdatePrivateCustomAttributesPartiallyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdatePrivateCustomAttributesPartiallyOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdatePrivateCustomAttributesPartiallyBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdatePrivateCustomAttributesPartiallyUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdatePrivateCustomAttributesPartiallyForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdatePrivateCustomAttributesPartiallyNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/privateCustomAttributes returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdatePrivateCustomAttributesPartiallyOK creates a UpdatePrivateCustomAttributesPartiallyOK with default headers values
func NewUpdatePrivateCustomAttributesPartiallyOK() *UpdatePrivateCustomAttributesPartiallyOK {
	return &UpdatePrivateCustomAttributesPartiallyOK{}
}

/*UpdatePrivateCustomAttributesPartiallyOK handles this case with default header values.

  successful operation
*/
type UpdatePrivateCustomAttributesPartiallyOK struct {
	Payload map[string]interface{}
}

func (o *UpdatePrivateCustomAttributesPartiallyOK) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/privateCustomAttributes][%d] updatePrivateCustomAttributesPartiallyOK  %+v", 200, o.ToJSONString())
}

func (o *UpdatePrivateCustomAttributesPartiallyOK) ToJSONString() string {
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

func (o *UpdatePrivateCustomAttributesPartiallyOK) GetPayload() map[string]interface{} {
	return o.Payload
}

func (o *UpdatePrivateCustomAttributesPartiallyOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdatePrivateCustomAttributesPartiallyBadRequest creates a UpdatePrivateCustomAttributesPartiallyBadRequest with default headers values
func NewUpdatePrivateCustomAttributesPartiallyBadRequest() *UpdatePrivateCustomAttributesPartiallyBadRequest {
	return &UpdatePrivateCustomAttributesPartiallyBadRequest{}
}

/*UpdatePrivateCustomAttributesPartiallyBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type UpdatePrivateCustomAttributesPartiallyBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *UpdatePrivateCustomAttributesPartiallyBadRequest) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/privateCustomAttributes][%d] updatePrivateCustomAttributesPartiallyBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdatePrivateCustomAttributesPartiallyBadRequest) ToJSONString() string {
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

func (o *UpdatePrivateCustomAttributesPartiallyBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdatePrivateCustomAttributesPartiallyBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdatePrivateCustomAttributesPartiallyUnauthorized creates a UpdatePrivateCustomAttributesPartiallyUnauthorized with default headers values
func NewUpdatePrivateCustomAttributesPartiallyUnauthorized() *UpdatePrivateCustomAttributesPartiallyUnauthorized {
	return &UpdatePrivateCustomAttributesPartiallyUnauthorized{}
}

/*UpdatePrivateCustomAttributesPartiallyUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type UpdatePrivateCustomAttributesPartiallyUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UpdatePrivateCustomAttributesPartiallyUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/privateCustomAttributes][%d] updatePrivateCustomAttributesPartiallyUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdatePrivateCustomAttributesPartiallyUnauthorized) ToJSONString() string {
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

func (o *UpdatePrivateCustomAttributesPartiallyUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdatePrivateCustomAttributesPartiallyUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdatePrivateCustomAttributesPartiallyForbidden creates a UpdatePrivateCustomAttributesPartiallyForbidden with default headers values
func NewUpdatePrivateCustomAttributesPartiallyForbidden() *UpdatePrivateCustomAttributesPartiallyForbidden {
	return &UpdatePrivateCustomAttributesPartiallyForbidden{}
}

/*UpdatePrivateCustomAttributesPartiallyForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type UpdatePrivateCustomAttributesPartiallyForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UpdatePrivateCustomAttributesPartiallyForbidden) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/privateCustomAttributes][%d] updatePrivateCustomAttributesPartiallyForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdatePrivateCustomAttributesPartiallyForbidden) ToJSONString() string {
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

func (o *UpdatePrivateCustomAttributesPartiallyForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdatePrivateCustomAttributesPartiallyForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdatePrivateCustomAttributesPartiallyNotFound creates a UpdatePrivateCustomAttributesPartiallyNotFound with default headers values
func NewUpdatePrivateCustomAttributesPartiallyNotFound() *UpdatePrivateCustomAttributesPartiallyNotFound {
	return &UpdatePrivateCustomAttributesPartiallyNotFound{}
}

/*UpdatePrivateCustomAttributesPartiallyNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11440</td><td>Unable to {action}: User profile not found in namespace [{namespace}]</td></tr></table>
*/
type UpdatePrivateCustomAttributesPartiallyNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UpdatePrivateCustomAttributesPartiallyNotFound) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/privateCustomAttributes][%d] updatePrivateCustomAttributesPartiallyNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdatePrivateCustomAttributesPartiallyNotFound) ToJSONString() string {
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

func (o *UpdatePrivateCustomAttributesPartiallyNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdatePrivateCustomAttributesPartiallyNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
