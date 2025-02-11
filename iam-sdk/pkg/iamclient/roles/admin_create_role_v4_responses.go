// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package roles

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
)

type AdminCreateRoleV4Response struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.ModelRoleV4Response

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error500 *iamclientmodels.RestErrorResponse
}

func (m *AdminCreateRoleV4Response) Unpack() (*iamclientmodels.ModelRoleV4Response, *iamclientmodels.ApiError) {
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

		case 500:
			e, err := m.Error500.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		default:
			return nil, &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// AdminCreateRoleV4Reader is a Reader for the AdminCreateRoleV4 structure.
type AdminCreateRoleV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCreateRoleV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminCreateRoleV4Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminCreateRoleV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminCreateRoleV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminCreateRoleV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminCreateRoleV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/admin/roles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCreateRoleV4Created creates a AdminCreateRoleV4Created with default headers values
func NewAdminCreateRoleV4Created() *AdminCreateRoleV4Created {
	return &AdminCreateRoleV4Created{}
}

/*AdminCreateRoleV4Created handles this case with default header values.

  Created
*/
type AdminCreateRoleV4Created struct {
	Payload *iamclientmodels.ModelRoleV4Response
}

func (o *AdminCreateRoleV4Created) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/roles][%d] adminCreateRoleV4Created  %+v", 201, o.ToJSONString())
}

func (o *AdminCreateRoleV4Created) ToJSONString() string {
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

func (o *AdminCreateRoleV4Created) GetPayload() *iamclientmodels.ModelRoleV4Response {
	return o.Payload
}

func (o *AdminCreateRoleV4Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelRoleV4Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateRoleV4BadRequest creates a AdminCreateRoleV4BadRequest with default headers values
func NewAdminCreateRoleV4BadRequest() *AdminCreateRoleV4BadRequest {
	return &AdminCreateRoleV4BadRequest{}
}

/*AdminCreateRoleV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>10466</td><td>invalid role members</td></tr></table>
*/
type AdminCreateRoleV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCreateRoleV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/roles][%d] adminCreateRoleV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminCreateRoleV4BadRequest) ToJSONString() string {
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

func (o *AdminCreateRoleV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCreateRoleV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateRoleV4Unauthorized creates a AdminCreateRoleV4Unauthorized with default headers values
func NewAdminCreateRoleV4Unauthorized() *AdminCreateRoleV4Unauthorized {
	return &AdminCreateRoleV4Unauthorized{}
}

/*AdminCreateRoleV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminCreateRoleV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCreateRoleV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/roles][%d] adminCreateRoleV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminCreateRoleV4Unauthorized) ToJSONString() string {
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

func (o *AdminCreateRoleV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCreateRoleV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateRoleV4Forbidden creates a AdminCreateRoleV4Forbidden with default headers values
func NewAdminCreateRoleV4Forbidden() *AdminCreateRoleV4Forbidden {
	return &AdminCreateRoleV4Forbidden{}
}

/*AdminCreateRoleV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminCreateRoleV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCreateRoleV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/roles][%d] adminCreateRoleV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminCreateRoleV4Forbidden) ToJSONString() string {
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

func (o *AdminCreateRoleV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCreateRoleV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateRoleV4InternalServerError creates a AdminCreateRoleV4InternalServerError with default headers values
func NewAdminCreateRoleV4InternalServerError() *AdminCreateRoleV4InternalServerError {
	return &AdminCreateRoleV4InternalServerError{}
}

/*AdminCreateRoleV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminCreateRoleV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCreateRoleV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/admin/roles][%d] adminCreateRoleV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminCreateRoleV4InternalServerError) ToJSONString() string {
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

func (o *AdminCreateRoleV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCreateRoleV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
