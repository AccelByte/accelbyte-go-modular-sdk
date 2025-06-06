// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package namespace

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

type ChangeNamespaceStatusResponse struct {
	basicclientmodels.ApiResponse
	Data *basicclientmodels.NamespaceInfo

	Error400 *basicclientmodels.ValidationErrorEntity
	Error401 *basicclientmodels.ErrorEntity
	Error403 *basicclientmodels.ErrorEntity
	Error404 *basicclientmodels.ErrorEntity
	Error409 *basicclientmodels.ErrorEntity
}

func (m *ChangeNamespaceStatusResponse) Unpack() (*basicclientmodels.NamespaceInfo, *basicclientmodels.ApiError) {
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

// ChangeNamespaceStatusReader is a Reader for the ChangeNamespaceStatus structure.
type ChangeNamespaceStatusReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ChangeNamespaceStatusReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewChangeNamespaceStatusOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewChangeNamespaceStatusBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewChangeNamespaceStatusUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewChangeNamespaceStatusForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewChangeNamespaceStatusNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewChangeNamespaceStatusConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /basic/v1/admin/namespaces/{namespace}/status returns an error %d: %s", response.Code(), string(data))
	}
}

// NewChangeNamespaceStatusOK creates a ChangeNamespaceStatusOK with default headers values
func NewChangeNamespaceStatusOK() *ChangeNamespaceStatusOK {
	return &ChangeNamespaceStatusOK{}
}

/*ChangeNamespaceStatusOK handles this case with default header values.

  Successful operation
*/
type ChangeNamespaceStatusOK struct {
	Payload *basicclientmodels.NamespaceInfo
}

func (o *ChangeNamespaceStatusOK) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/admin/namespaces/{namespace}/status][%d] changeNamespaceStatusOK  %+v", 200, o.ToJSONString())
}

func (o *ChangeNamespaceStatusOK) ToJSONString() string {
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

func (o *ChangeNamespaceStatusOK) GetPayload() *basicclientmodels.NamespaceInfo {
	return o.Payload
}

func (o *ChangeNamespaceStatusOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.NamespaceInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewChangeNamespaceStatusBadRequest creates a ChangeNamespaceStatusBadRequest with default headers values
func NewChangeNamespaceStatusBadRequest() *ChangeNamespaceStatusBadRequest {
	return &ChangeNamespaceStatusBadRequest{}
}

/*ChangeNamespaceStatusBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type ChangeNamespaceStatusBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *ChangeNamespaceStatusBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/admin/namespaces/{namespace}/status][%d] changeNamespaceStatusBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ChangeNamespaceStatusBadRequest) ToJSONString() string {
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

func (o *ChangeNamespaceStatusBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *ChangeNamespaceStatusBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewChangeNamespaceStatusUnauthorized creates a ChangeNamespaceStatusUnauthorized with default headers values
func NewChangeNamespaceStatusUnauthorized() *ChangeNamespaceStatusUnauthorized {
	return &ChangeNamespaceStatusUnauthorized{}
}

/*ChangeNamespaceStatusUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type ChangeNamespaceStatusUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *ChangeNamespaceStatusUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/admin/namespaces/{namespace}/status][%d] changeNamespaceStatusUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ChangeNamespaceStatusUnauthorized) ToJSONString() string {
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

func (o *ChangeNamespaceStatusUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ChangeNamespaceStatusUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewChangeNamespaceStatusForbidden creates a ChangeNamespaceStatusForbidden with default headers values
func NewChangeNamespaceStatusForbidden() *ChangeNamespaceStatusForbidden {
	return &ChangeNamespaceStatusForbidden{}
}

/*ChangeNamespaceStatusForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type ChangeNamespaceStatusForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *ChangeNamespaceStatusForbidden) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/admin/namespaces/{namespace}/status][%d] changeNamespaceStatusForbidden  %+v", 403, o.ToJSONString())
}

func (o *ChangeNamespaceStatusForbidden) ToJSONString() string {
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

func (o *ChangeNamespaceStatusForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ChangeNamespaceStatusForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewChangeNamespaceStatusNotFound creates a ChangeNamespaceStatusNotFound with default headers values
func NewChangeNamespaceStatusNotFound() *ChangeNamespaceStatusNotFound {
	return &ChangeNamespaceStatusNotFound{}
}

/*ChangeNamespaceStatusNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11337</td><td>Unable to {action}: Namespace not found</td></tr></table>
*/
type ChangeNamespaceStatusNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *ChangeNamespaceStatusNotFound) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/admin/namespaces/{namespace}/status][%d] changeNamespaceStatusNotFound  %+v", 404, o.ToJSONString())
}

func (o *ChangeNamespaceStatusNotFound) ToJSONString() string {
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

func (o *ChangeNamespaceStatusNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ChangeNamespaceStatusNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewChangeNamespaceStatusConflict creates a ChangeNamespaceStatusConflict with default headers values
func NewChangeNamespaceStatusConflict() *ChangeNamespaceStatusConflict {
	return &ChangeNamespaceStatusConflict{}
}

/*ChangeNamespaceStatusConflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20006</td><td>optimistic lock</td></tr></table>
*/
type ChangeNamespaceStatusConflict struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *ChangeNamespaceStatusConflict) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/admin/namespaces/{namespace}/status][%d] changeNamespaceStatusConflict  %+v", 409, o.ToJSONString())
}

func (o *ChangeNamespaceStatusConflict) ToJSONString() string {
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

func (o *ChangeNamespaceStatusConflict) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ChangeNamespaceStatusConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
