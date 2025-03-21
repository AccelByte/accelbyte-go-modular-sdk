// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

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

type AdminGetAgeRestrictionStatusV3Response struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.ModelAgeRestrictionResponseV3

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 *iamclientmodels.RestErrorResponse
	Error500 *iamclientmodels.RestErrorResponse
}

func (m *AdminGetAgeRestrictionStatusV3Response) Unpack() (*iamclientmodels.ModelAgeRestrictionResponseV3, *iamclientmodels.ApiError) {
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

// AdminGetAgeRestrictionStatusV3Reader is a Reader for the AdminGetAgeRestrictionStatusV3 structure.
type AdminGetAgeRestrictionStatusV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetAgeRestrictionStatusV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetAgeRestrictionStatusV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetAgeRestrictionStatusV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetAgeRestrictionStatusV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetAgeRestrictionStatusV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetAgeRestrictionStatusV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetAgeRestrictionStatusV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/agerestrictions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetAgeRestrictionStatusV3OK creates a AdminGetAgeRestrictionStatusV3OK with default headers values
func NewAdminGetAgeRestrictionStatusV3OK() *AdminGetAgeRestrictionStatusV3OK {
	return &AdminGetAgeRestrictionStatusV3OK{}
}

/*AdminGetAgeRestrictionStatusV3OK handles this case with default header values.

  OK
*/
type AdminGetAgeRestrictionStatusV3OK struct {
	Payload *iamclientmodels.ModelAgeRestrictionResponseV3
}

func (o *AdminGetAgeRestrictionStatusV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/agerestrictions][%d] adminGetAgeRestrictionStatusV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetAgeRestrictionStatusV3OK) ToJSONString() string {
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

func (o *AdminGetAgeRestrictionStatusV3OK) GetPayload() *iamclientmodels.ModelAgeRestrictionResponseV3 {
	return o.Payload
}

func (o *AdminGetAgeRestrictionStatusV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelAgeRestrictionResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetAgeRestrictionStatusV3BadRequest creates a AdminGetAgeRestrictionStatusV3BadRequest with default headers values
func NewAdminGetAgeRestrictionStatusV3BadRequest() *AdminGetAgeRestrictionStatusV3BadRequest {
	return &AdminGetAgeRestrictionStatusV3BadRequest{}
}

/*AdminGetAgeRestrictionStatusV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminGetAgeRestrictionStatusV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetAgeRestrictionStatusV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/agerestrictions][%d] adminGetAgeRestrictionStatusV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetAgeRestrictionStatusV3BadRequest) ToJSONString() string {
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

func (o *AdminGetAgeRestrictionStatusV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetAgeRestrictionStatusV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetAgeRestrictionStatusV3Unauthorized creates a AdminGetAgeRestrictionStatusV3Unauthorized with default headers values
func NewAdminGetAgeRestrictionStatusV3Unauthorized() *AdminGetAgeRestrictionStatusV3Unauthorized {
	return &AdminGetAgeRestrictionStatusV3Unauthorized{}
}

/*AdminGetAgeRestrictionStatusV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetAgeRestrictionStatusV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetAgeRestrictionStatusV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/agerestrictions][%d] adminGetAgeRestrictionStatusV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetAgeRestrictionStatusV3Unauthorized) ToJSONString() string {
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

func (o *AdminGetAgeRestrictionStatusV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetAgeRestrictionStatusV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetAgeRestrictionStatusV3Forbidden creates a AdminGetAgeRestrictionStatusV3Forbidden with default headers values
func NewAdminGetAgeRestrictionStatusV3Forbidden() *AdminGetAgeRestrictionStatusV3Forbidden {
	return &AdminGetAgeRestrictionStatusV3Forbidden{}
}

/*AdminGetAgeRestrictionStatusV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetAgeRestrictionStatusV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetAgeRestrictionStatusV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/agerestrictions][%d] adminGetAgeRestrictionStatusV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetAgeRestrictionStatusV3Forbidden) ToJSONString() string {
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

func (o *AdminGetAgeRestrictionStatusV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetAgeRestrictionStatusV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetAgeRestrictionStatusV3NotFound creates a AdminGetAgeRestrictionStatusV3NotFound with default headers values
func NewAdminGetAgeRestrictionStatusV3NotFound() *AdminGetAgeRestrictionStatusV3NotFound {
	return &AdminGetAgeRestrictionStatusV3NotFound{}
}

/*AdminGetAgeRestrictionStatusV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10169</td><td>age restriction not found</td></tr></table>
*/
type AdminGetAgeRestrictionStatusV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetAgeRestrictionStatusV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/agerestrictions][%d] adminGetAgeRestrictionStatusV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetAgeRestrictionStatusV3NotFound) ToJSONString() string {
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

func (o *AdminGetAgeRestrictionStatusV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetAgeRestrictionStatusV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetAgeRestrictionStatusV3InternalServerError creates a AdminGetAgeRestrictionStatusV3InternalServerError with default headers values
func NewAdminGetAgeRestrictionStatusV3InternalServerError() *AdminGetAgeRestrictionStatusV3InternalServerError {
	return &AdminGetAgeRestrictionStatusV3InternalServerError{}
}

/*AdminGetAgeRestrictionStatusV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetAgeRestrictionStatusV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetAgeRestrictionStatusV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/agerestrictions][%d] adminGetAgeRestrictionStatusV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetAgeRestrictionStatusV3InternalServerError) ToJSONString() string {
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

func (o *AdminGetAgeRestrictionStatusV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetAgeRestrictionStatusV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
