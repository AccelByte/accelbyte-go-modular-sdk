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

type AdminUpdateCountryAgeRestrictionV3Response struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.ModelCountryV3Response

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error404 *iamclientmodels.RestErrorResponse
	Error500 *iamclientmodels.RestErrorResponse
}

func (m *AdminUpdateCountryAgeRestrictionV3Response) Unpack() (*iamclientmodels.ModelCountryV3Response, *iamclientmodels.ApiError) {
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

// AdminUpdateCountryAgeRestrictionV3Reader is a Reader for the AdminUpdateCountryAgeRestrictionV3 structure.
type AdminUpdateCountryAgeRestrictionV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateCountryAgeRestrictionV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateCountryAgeRestrictionV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateCountryAgeRestrictionV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateCountryAgeRestrictionV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateCountryAgeRestrictionV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateCountryAgeRestrictionV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateCountryAgeRestrictionV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /iam/v3/admin/namespaces/{namespace}/agerestrictions/countries/{countryCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateCountryAgeRestrictionV3OK creates a AdminUpdateCountryAgeRestrictionV3OK with default headers values
func NewAdminUpdateCountryAgeRestrictionV3OK() *AdminUpdateCountryAgeRestrictionV3OK {
	return &AdminUpdateCountryAgeRestrictionV3OK{}
}

/*AdminUpdateCountryAgeRestrictionV3OK handles this case with default header values.

  OK
*/
type AdminUpdateCountryAgeRestrictionV3OK struct {
	Payload *iamclientmodels.ModelCountryV3Response
}

func (o *AdminUpdateCountryAgeRestrictionV3OK) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/agerestrictions/countries/{countryCode}][%d] adminUpdateCountryAgeRestrictionV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateCountryAgeRestrictionV3OK) ToJSONString() string {
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

func (o *AdminUpdateCountryAgeRestrictionV3OK) GetPayload() *iamclientmodels.ModelCountryV3Response {
	return o.Payload
}

func (o *AdminUpdateCountryAgeRestrictionV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelCountryV3Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateCountryAgeRestrictionV3BadRequest creates a AdminUpdateCountryAgeRestrictionV3BadRequest with default headers values
func NewAdminUpdateCountryAgeRestrictionV3BadRequest() *AdminUpdateCountryAgeRestrictionV3BadRequest {
	return &AdminUpdateCountryAgeRestrictionV3BadRequest{}
}

/*AdminUpdateCountryAgeRestrictionV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type AdminUpdateCountryAgeRestrictionV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateCountryAgeRestrictionV3BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/agerestrictions/countries/{countryCode}][%d] adminUpdateCountryAgeRestrictionV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateCountryAgeRestrictionV3BadRequest) ToJSONString() string {
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

func (o *AdminUpdateCountryAgeRestrictionV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateCountryAgeRestrictionV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateCountryAgeRestrictionV3Unauthorized creates a AdminUpdateCountryAgeRestrictionV3Unauthorized with default headers values
func NewAdminUpdateCountryAgeRestrictionV3Unauthorized() *AdminUpdateCountryAgeRestrictionV3Unauthorized {
	return &AdminUpdateCountryAgeRestrictionV3Unauthorized{}
}

/*AdminUpdateCountryAgeRestrictionV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUpdateCountryAgeRestrictionV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateCountryAgeRestrictionV3Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/agerestrictions/countries/{countryCode}][%d] adminUpdateCountryAgeRestrictionV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateCountryAgeRestrictionV3Unauthorized) ToJSONString() string {
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

func (o *AdminUpdateCountryAgeRestrictionV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateCountryAgeRestrictionV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateCountryAgeRestrictionV3Forbidden creates a AdminUpdateCountryAgeRestrictionV3Forbidden with default headers values
func NewAdminUpdateCountryAgeRestrictionV3Forbidden() *AdminUpdateCountryAgeRestrictionV3Forbidden {
	return &AdminUpdateCountryAgeRestrictionV3Forbidden{}
}

/*AdminUpdateCountryAgeRestrictionV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminUpdateCountryAgeRestrictionV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateCountryAgeRestrictionV3Forbidden) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/agerestrictions/countries/{countryCode}][%d] adminUpdateCountryAgeRestrictionV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateCountryAgeRestrictionV3Forbidden) ToJSONString() string {
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

func (o *AdminUpdateCountryAgeRestrictionV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateCountryAgeRestrictionV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateCountryAgeRestrictionV3NotFound creates a AdminUpdateCountryAgeRestrictionV3NotFound with default headers values
func NewAdminUpdateCountryAgeRestrictionV3NotFound() *AdminUpdateCountryAgeRestrictionV3NotFound {
	return &AdminUpdateCountryAgeRestrictionV3NotFound{}
}

/*AdminUpdateCountryAgeRestrictionV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10154</td><td>country not found</td></tr></table>
*/
type AdminUpdateCountryAgeRestrictionV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateCountryAgeRestrictionV3NotFound) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/agerestrictions/countries/{countryCode}][%d] adminUpdateCountryAgeRestrictionV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateCountryAgeRestrictionV3NotFound) ToJSONString() string {
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

func (o *AdminUpdateCountryAgeRestrictionV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateCountryAgeRestrictionV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateCountryAgeRestrictionV3InternalServerError creates a AdminUpdateCountryAgeRestrictionV3InternalServerError with default headers values
func NewAdminUpdateCountryAgeRestrictionV3InternalServerError() *AdminUpdateCountryAgeRestrictionV3InternalServerError {
	return &AdminUpdateCountryAgeRestrictionV3InternalServerError{}
}

/*AdminUpdateCountryAgeRestrictionV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminUpdateCountryAgeRestrictionV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateCountryAgeRestrictionV3InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/agerestrictions/countries/{countryCode}][%d] adminUpdateCountryAgeRestrictionV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateCountryAgeRestrictionV3InternalServerError) ToJSONString() string {
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

func (o *AdminUpdateCountryAgeRestrictionV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateCountryAgeRestrictionV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
