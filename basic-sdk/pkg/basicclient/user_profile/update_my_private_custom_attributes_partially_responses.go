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

type UpdateMyPrivateCustomAttributesPartiallyResponse struct {
	basicclientmodels.ApiResponse
	Data map[string]interface{}

	Error400 *basicclientmodels.ValidationErrorEntity
	Error401 *basicclientmodels.ErrorEntity
	Error403 *basicclientmodels.ErrorEntity
	Error404 *basicclientmodels.ErrorEntity
}

func (m *UpdateMyPrivateCustomAttributesPartiallyResponse) Unpack() (map[string]interface{}, *basicclientmodels.ApiError) {
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

// UpdateMyPrivateCustomAttributesPartiallyReader is a Reader for the UpdateMyPrivateCustomAttributesPartially structure.
type UpdateMyPrivateCustomAttributesPartiallyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateMyPrivateCustomAttributesPartiallyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateMyPrivateCustomAttributesPartiallyOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateMyPrivateCustomAttributesPartiallyBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateMyPrivateCustomAttributesPartiallyUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateMyPrivateCustomAttributesPartiallyForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateMyPrivateCustomAttributesPartiallyNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /basic/v1/public/namespaces/{namespace}/users/me/profiles/privateCustomAttributes returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateMyPrivateCustomAttributesPartiallyOK creates a UpdateMyPrivateCustomAttributesPartiallyOK with default headers values
func NewUpdateMyPrivateCustomAttributesPartiallyOK() *UpdateMyPrivateCustomAttributesPartiallyOK {
	return &UpdateMyPrivateCustomAttributesPartiallyOK{}
}

/*UpdateMyPrivateCustomAttributesPartiallyOK handles this case with default header values.

  successful operation
*/
type UpdateMyPrivateCustomAttributesPartiallyOK struct {
	Payload map[string]interface{}
}

func (o *UpdateMyPrivateCustomAttributesPartiallyOK) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/public/namespaces/{namespace}/users/me/profiles/privateCustomAttributes][%d] updateMyPrivateCustomAttributesPartiallyOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateMyPrivateCustomAttributesPartiallyOK) ToJSONString() string {
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

func (o *UpdateMyPrivateCustomAttributesPartiallyOK) GetPayload() map[string]interface{} {
	return o.Payload
}

func (o *UpdateMyPrivateCustomAttributesPartiallyOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateMyPrivateCustomAttributesPartiallyBadRequest creates a UpdateMyPrivateCustomAttributesPartiallyBadRequest with default headers values
func NewUpdateMyPrivateCustomAttributesPartiallyBadRequest() *UpdateMyPrivateCustomAttributesPartiallyBadRequest {
	return &UpdateMyPrivateCustomAttributesPartiallyBadRequest{}
}

/*UpdateMyPrivateCustomAttributesPartiallyBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type UpdateMyPrivateCustomAttributesPartiallyBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *UpdateMyPrivateCustomAttributesPartiallyBadRequest) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/public/namespaces/{namespace}/users/me/profiles/privateCustomAttributes][%d] updateMyPrivateCustomAttributesPartiallyBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateMyPrivateCustomAttributesPartiallyBadRequest) ToJSONString() string {
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

func (o *UpdateMyPrivateCustomAttributesPartiallyBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdateMyPrivateCustomAttributesPartiallyBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateMyPrivateCustomAttributesPartiallyUnauthorized creates a UpdateMyPrivateCustomAttributesPartiallyUnauthorized with default headers values
func NewUpdateMyPrivateCustomAttributesPartiallyUnauthorized() *UpdateMyPrivateCustomAttributesPartiallyUnauthorized {
	return &UpdateMyPrivateCustomAttributesPartiallyUnauthorized{}
}

/*UpdateMyPrivateCustomAttributesPartiallyUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type UpdateMyPrivateCustomAttributesPartiallyUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UpdateMyPrivateCustomAttributesPartiallyUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/public/namespaces/{namespace}/users/me/profiles/privateCustomAttributes][%d] updateMyPrivateCustomAttributesPartiallyUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateMyPrivateCustomAttributesPartiallyUnauthorized) ToJSONString() string {
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

func (o *UpdateMyPrivateCustomAttributesPartiallyUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateMyPrivateCustomAttributesPartiallyUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateMyPrivateCustomAttributesPartiallyForbidden creates a UpdateMyPrivateCustomAttributesPartiallyForbidden with default headers values
func NewUpdateMyPrivateCustomAttributesPartiallyForbidden() *UpdateMyPrivateCustomAttributesPartiallyForbidden {
	return &UpdateMyPrivateCustomAttributesPartiallyForbidden{}
}

/*UpdateMyPrivateCustomAttributesPartiallyForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type UpdateMyPrivateCustomAttributesPartiallyForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UpdateMyPrivateCustomAttributesPartiallyForbidden) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/public/namespaces/{namespace}/users/me/profiles/privateCustomAttributes][%d] updateMyPrivateCustomAttributesPartiallyForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateMyPrivateCustomAttributesPartiallyForbidden) ToJSONString() string {
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

func (o *UpdateMyPrivateCustomAttributesPartiallyForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateMyPrivateCustomAttributesPartiallyForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateMyPrivateCustomAttributesPartiallyNotFound creates a UpdateMyPrivateCustomAttributesPartiallyNotFound with default headers values
func NewUpdateMyPrivateCustomAttributesPartiallyNotFound() *UpdateMyPrivateCustomAttributesPartiallyNotFound {
	return &UpdateMyPrivateCustomAttributesPartiallyNotFound{}
}

/*UpdateMyPrivateCustomAttributesPartiallyNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11440</td><td>Unable to {action}: User profile not found in namespace [{namespace}]</td></tr></table>
*/
type UpdateMyPrivateCustomAttributesPartiallyNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UpdateMyPrivateCustomAttributesPartiallyNotFound) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/public/namespaces/{namespace}/users/me/profiles/privateCustomAttributes][%d] updateMyPrivateCustomAttributesPartiallyNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateMyPrivateCustomAttributesPartiallyNotFound) ToJSONString() string {
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

func (o *UpdateMyPrivateCustomAttributesPartiallyNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateMyPrivateCustomAttributesPartiallyNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
