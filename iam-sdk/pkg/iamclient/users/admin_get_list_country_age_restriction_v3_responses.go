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

type AdminGetListCountryAgeRestrictionV3Response struct {
	iamclientmodels.ApiResponse
	Data []*iamclientmodels.ModelCountryV3Response

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error500 *iamclientmodels.RestErrorResponse
}

func (m *AdminGetListCountryAgeRestrictionV3Response) Unpack() ([]*iamclientmodels.ModelCountryV3Response, *iamclientmodels.ApiError) {
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

// AdminGetListCountryAgeRestrictionV3Reader is a Reader for the AdminGetListCountryAgeRestrictionV3 structure.
type AdminGetListCountryAgeRestrictionV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetListCountryAgeRestrictionV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetListCountryAgeRestrictionV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetListCountryAgeRestrictionV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetListCountryAgeRestrictionV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetListCountryAgeRestrictionV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetListCountryAgeRestrictionV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/agerestrictions/countries returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetListCountryAgeRestrictionV3OK creates a AdminGetListCountryAgeRestrictionV3OK with default headers values
func NewAdminGetListCountryAgeRestrictionV3OK() *AdminGetListCountryAgeRestrictionV3OK {
	return &AdminGetListCountryAgeRestrictionV3OK{}
}

/*AdminGetListCountryAgeRestrictionV3OK handles this case with default header values.

  OK
*/
type AdminGetListCountryAgeRestrictionV3OK struct {
	Payload []*iamclientmodels.ModelCountryV3Response
}

func (o *AdminGetListCountryAgeRestrictionV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/agerestrictions/countries][%d] adminGetListCountryAgeRestrictionV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetListCountryAgeRestrictionV3OK) ToJSONString() string {
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

func (o *AdminGetListCountryAgeRestrictionV3OK) GetPayload() []*iamclientmodels.ModelCountryV3Response {
	return o.Payload
}

func (o *AdminGetListCountryAgeRestrictionV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetListCountryAgeRestrictionV3BadRequest creates a AdminGetListCountryAgeRestrictionV3BadRequest with default headers values
func NewAdminGetListCountryAgeRestrictionV3BadRequest() *AdminGetListCountryAgeRestrictionV3BadRequest {
	return &AdminGetListCountryAgeRestrictionV3BadRequest{}
}

/*AdminGetListCountryAgeRestrictionV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminGetListCountryAgeRestrictionV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetListCountryAgeRestrictionV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/agerestrictions/countries][%d] adminGetListCountryAgeRestrictionV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetListCountryAgeRestrictionV3BadRequest) ToJSONString() string {
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

func (o *AdminGetListCountryAgeRestrictionV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetListCountryAgeRestrictionV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetListCountryAgeRestrictionV3Unauthorized creates a AdminGetListCountryAgeRestrictionV3Unauthorized with default headers values
func NewAdminGetListCountryAgeRestrictionV3Unauthorized() *AdminGetListCountryAgeRestrictionV3Unauthorized {
	return &AdminGetListCountryAgeRestrictionV3Unauthorized{}
}

/*AdminGetListCountryAgeRestrictionV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetListCountryAgeRestrictionV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetListCountryAgeRestrictionV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/agerestrictions/countries][%d] adminGetListCountryAgeRestrictionV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetListCountryAgeRestrictionV3Unauthorized) ToJSONString() string {
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

func (o *AdminGetListCountryAgeRestrictionV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetListCountryAgeRestrictionV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetListCountryAgeRestrictionV3Forbidden creates a AdminGetListCountryAgeRestrictionV3Forbidden with default headers values
func NewAdminGetListCountryAgeRestrictionV3Forbidden() *AdminGetListCountryAgeRestrictionV3Forbidden {
	return &AdminGetListCountryAgeRestrictionV3Forbidden{}
}

/*AdminGetListCountryAgeRestrictionV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetListCountryAgeRestrictionV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetListCountryAgeRestrictionV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/agerestrictions/countries][%d] adminGetListCountryAgeRestrictionV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetListCountryAgeRestrictionV3Forbidden) ToJSONString() string {
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

func (o *AdminGetListCountryAgeRestrictionV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetListCountryAgeRestrictionV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetListCountryAgeRestrictionV3InternalServerError creates a AdminGetListCountryAgeRestrictionV3InternalServerError with default headers values
func NewAdminGetListCountryAgeRestrictionV3InternalServerError() *AdminGetListCountryAgeRestrictionV3InternalServerError {
	return &AdminGetListCountryAgeRestrictionV3InternalServerError{}
}

/*AdminGetListCountryAgeRestrictionV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetListCountryAgeRestrictionV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetListCountryAgeRestrictionV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/agerestrictions/countries][%d] adminGetListCountryAgeRestrictionV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetListCountryAgeRestrictionV3InternalServerError) ToJSONString() string {
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

func (o *AdminGetListCountryAgeRestrictionV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetListCountryAgeRestrictionV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
