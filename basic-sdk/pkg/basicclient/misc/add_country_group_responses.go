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

type AddCountryGroupResponse struct {
	basicclientmodels.ApiResponse
	Data *basicclientmodels.AddCountryGroupResponse

	Error400 *basicclientmodels.ErrorEntity
	Error401 *basicclientmodels.ErrorEntity
	Error403 *basicclientmodels.ErrorEntity
	Error409 *basicclientmodels.ErrorEntity
}

func (m *AddCountryGroupResponse) Unpack() (*basicclientmodels.AddCountryGroupResponse, *basicclientmodels.ApiError) {
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

		case 409:
			e, err := m.Error409.TranslateToApiError()
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

// AddCountryGroupReader is a Reader for the AddCountryGroup structure.
type AddCountryGroupReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AddCountryGroupReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAddCountryGroupCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAddCountryGroupBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAddCountryGroupUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAddCountryGroupForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAddCountryGroupConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /basic/v1/admin/namespaces/{namespace}/misc/countrygroups returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAddCountryGroupCreated creates a AddCountryGroupCreated with default headers values
func NewAddCountryGroupCreated() *AddCountryGroupCreated {
	return &AddCountryGroupCreated{}
}

/*AddCountryGroupCreated handles this case with default header values.

  successful operation
*/
type AddCountryGroupCreated struct {
	Payload *basicclientmodels.AddCountryGroupResponse
}

func (o *AddCountryGroupCreated) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/misc/countrygroups][%d] addCountryGroupCreated  %+v", 201, o.ToJSONString())
}

func (o *AddCountryGroupCreated) ToJSONString() string {
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

func (o *AddCountryGroupCreated) GetPayload() *basicclientmodels.AddCountryGroupResponse {
	return o.Payload
}

func (o *AddCountryGroupCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.AddCountryGroupResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAddCountryGroupBadRequest creates a AddCountryGroupBadRequest with default headers values
func NewAddCountryGroupBadRequest() *AddCountryGroupBadRequest {
	return &AddCountryGroupBadRequest{}
}

/*AddCountryGroupBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>11234</td><td>Unable to {action}: A country can't be assigned to more than one country group</td></tr></table>
*/
type AddCountryGroupBadRequest struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *AddCountryGroupBadRequest) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/misc/countrygroups][%d] addCountryGroupBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AddCountryGroupBadRequest) ToJSONString() string {
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

func (o *AddCountryGroupBadRequest) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AddCountryGroupBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAddCountryGroupUnauthorized creates a AddCountryGroupUnauthorized with default headers values
func NewAddCountryGroupUnauthorized() *AddCountryGroupUnauthorized {
	return &AddCountryGroupUnauthorized{}
}

/*AddCountryGroupUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type AddCountryGroupUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *AddCountryGroupUnauthorized) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/misc/countrygroups][%d] addCountryGroupUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AddCountryGroupUnauthorized) ToJSONString() string {
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

func (o *AddCountryGroupUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AddCountryGroupUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAddCountryGroupForbidden creates a AddCountryGroupForbidden with default headers values
func NewAddCountryGroupForbidden() *AddCountryGroupForbidden {
	return &AddCountryGroupForbidden{}
}

/*AddCountryGroupForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AddCountryGroupForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *AddCountryGroupForbidden) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/misc/countrygroups][%d] addCountryGroupForbidden  %+v", 403, o.ToJSONString())
}

func (o *AddCountryGroupForbidden) ToJSONString() string {
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

func (o *AddCountryGroupForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AddCountryGroupForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAddCountryGroupConflict creates a AddCountryGroupConflict with default headers values
func NewAddCountryGroupConflict() *AddCountryGroupConflict {
	return &AddCountryGroupConflict{}
}

/*AddCountryGroupConflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11235</td><td>Unable to {action}: Country group with specified code is already exist</td></tr></table>
*/
type AddCountryGroupConflict struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *AddCountryGroupConflict) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/misc/countrygroups][%d] addCountryGroupConflict  %+v", 409, o.ToJSONString())
}

func (o *AddCountryGroupConflict) ToJSONString() string {
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

func (o *AddCountryGroupConflict) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AddCountryGroupConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
