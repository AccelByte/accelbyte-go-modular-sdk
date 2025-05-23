// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package misc

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

type UpdateCountryGroupResponse struct {
	basicclientmodels.ApiResponse
	Data *basicclientmodels.CountryGroupObject

	Error400 *basicclientmodels.ValidationErrorEntity
	Error401 *basicclientmodels.ErrorEntity
	Error403 *basicclientmodels.ErrorEntity
	Error404 *basicclientmodels.ErrorEntity
}

func (m *UpdateCountryGroupResponse) Unpack() (*basicclientmodels.CountryGroupObject, *basicclientmodels.ApiError) {
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

// UpdateCountryGroupReader is a Reader for the UpdateCountryGroup structure.
type UpdateCountryGroupReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateCountryGroupReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateCountryGroupOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateCountryGroupBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateCountryGroupUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateCountryGroupForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateCountryGroupNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /basic/v1/admin/namespaces/{namespace}/misc/countrygroups/{countryGroupCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateCountryGroupOK creates a UpdateCountryGroupOK with default headers values
func NewUpdateCountryGroupOK() *UpdateCountryGroupOK {
	return &UpdateCountryGroupOK{}
}

/*UpdateCountryGroupOK handles this case with default header values.

  successful operation
*/
type UpdateCountryGroupOK struct {
	Payload *basicclientmodels.CountryGroupObject
}

func (o *UpdateCountryGroupOK) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/admin/namespaces/{namespace}/misc/countrygroups/{countryGroupCode}][%d] updateCountryGroupOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateCountryGroupOK) ToJSONString() string {
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

func (o *UpdateCountryGroupOK) GetPayload() *basicclientmodels.CountryGroupObject {
	return o.Payload
}

func (o *UpdateCountryGroupOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.CountryGroupObject)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateCountryGroupBadRequest creates a UpdateCountryGroupBadRequest with default headers values
func NewUpdateCountryGroupBadRequest() *UpdateCountryGroupBadRequest {
	return &UpdateCountryGroupBadRequest{}
}

/*UpdateCountryGroupBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>11234</td><td>Unable to {action}: A country can't be assigned to more than one country group</td></tr></table>
*/
type UpdateCountryGroupBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *UpdateCountryGroupBadRequest) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/admin/namespaces/{namespace}/misc/countrygroups/{countryGroupCode}][%d] updateCountryGroupBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateCountryGroupBadRequest) ToJSONString() string {
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

func (o *UpdateCountryGroupBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdateCountryGroupBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateCountryGroupUnauthorized creates a UpdateCountryGroupUnauthorized with default headers values
func NewUpdateCountryGroupUnauthorized() *UpdateCountryGroupUnauthorized {
	return &UpdateCountryGroupUnauthorized{}
}

/*UpdateCountryGroupUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type UpdateCountryGroupUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UpdateCountryGroupUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/admin/namespaces/{namespace}/misc/countrygroups/{countryGroupCode}][%d] updateCountryGroupUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateCountryGroupUnauthorized) ToJSONString() string {
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

func (o *UpdateCountryGroupUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateCountryGroupUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateCountryGroupForbidden creates a UpdateCountryGroupForbidden with default headers values
func NewUpdateCountryGroupForbidden() *UpdateCountryGroupForbidden {
	return &UpdateCountryGroupForbidden{}
}

/*UpdateCountryGroupForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type UpdateCountryGroupForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UpdateCountryGroupForbidden) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/admin/namespaces/{namespace}/misc/countrygroups/{countryGroupCode}][%d] updateCountryGroupForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateCountryGroupForbidden) ToJSONString() string {
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

func (o *UpdateCountryGroupForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateCountryGroupForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateCountryGroupNotFound creates a UpdateCountryGroupNotFound with default headers values
func NewUpdateCountryGroupNotFound() *UpdateCountryGroupNotFound {
	return &UpdateCountryGroupNotFound{}
}

/*UpdateCountryGroupNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11233</td><td>Unable to {action}: Country group with code [{countryGroupCode}] is not found</td></tr></table>
*/
type UpdateCountryGroupNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UpdateCountryGroupNotFound) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/admin/namespaces/{namespace}/misc/countrygroups/{countryGroupCode}][%d] updateCountryGroupNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateCountryGroupNotFound) ToJSONString() string {
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

func (o *UpdateCountryGroupNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateCountryGroupNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
