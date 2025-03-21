// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package data_deletion

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclientmodels"
)

type AdminGetListDeletionDataRequestResponse struct {
	gdprclientmodels.ApiResponse
	Data *gdprclientmodels.ModelsListDeletionDataResponse

	Error400 *gdprclientmodels.ResponseError
	Error401 *gdprclientmodels.ResponseError
	Error403 *gdprclientmodels.ResponseError
	Error404 *gdprclientmodels.ResponseError
	Error500 *gdprclientmodels.ResponseError
}

func (m *AdminGetListDeletionDataRequestResponse) Unpack() (*gdprclientmodels.ModelsListDeletionDataResponse, *gdprclientmodels.ApiError) {
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
			return nil, &gdprclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// AdminGetListDeletionDataRequestReader is a Reader for the AdminGetListDeletionDataRequest structure.
type AdminGetListDeletionDataRequestReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetListDeletionDataRequestReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetListDeletionDataRequestOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetListDeletionDataRequestBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetListDeletionDataRequestUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetListDeletionDataRequestForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetListDeletionDataRequestNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetListDeletionDataRequestInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /gdpr/admin/namespaces/{namespace}/deletions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetListDeletionDataRequestOK creates a AdminGetListDeletionDataRequestOK with default headers values
func NewAdminGetListDeletionDataRequestOK() *AdminGetListDeletionDataRequestOK {
	return &AdminGetListDeletionDataRequestOK{}
}

/*AdminGetListDeletionDataRequestOK handles this case with default header values.

  OK
*/
type AdminGetListDeletionDataRequestOK struct {
	Payload *gdprclientmodels.ModelsListDeletionDataResponse
}

func (o *AdminGetListDeletionDataRequestOK) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/deletions][%d] adminGetListDeletionDataRequestOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetListDeletionDataRequestOK) ToJSONString() string {
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

func (o *AdminGetListDeletionDataRequestOK) GetPayload() *gdprclientmodels.ModelsListDeletionDataResponse {
	return o.Payload
}

func (o *AdminGetListDeletionDataRequestOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ModelsListDeletionDataResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetListDeletionDataRequestBadRequest creates a AdminGetListDeletionDataRequestBadRequest with default headers values
func NewAdminGetListDeletionDataRequestBadRequest() *AdminGetListDeletionDataRequestBadRequest {
	return &AdminGetListDeletionDataRequestBadRequest{}
}

/*AdminGetListDeletionDataRequestBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetListDeletionDataRequestBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetListDeletionDataRequestBadRequest) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/deletions][%d] adminGetListDeletionDataRequestBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetListDeletionDataRequestBadRequest) ToJSONString() string {
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

func (o *AdminGetListDeletionDataRequestBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetListDeletionDataRequestBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetListDeletionDataRequestUnauthorized creates a AdminGetListDeletionDataRequestUnauthorized with default headers values
func NewAdminGetListDeletionDataRequestUnauthorized() *AdminGetListDeletionDataRequestUnauthorized {
	return &AdminGetListDeletionDataRequestUnauthorized{}
}

/*AdminGetListDeletionDataRequestUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetListDeletionDataRequestUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetListDeletionDataRequestUnauthorized) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/deletions][%d] adminGetListDeletionDataRequestUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetListDeletionDataRequestUnauthorized) ToJSONString() string {
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

func (o *AdminGetListDeletionDataRequestUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetListDeletionDataRequestUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetListDeletionDataRequestForbidden creates a AdminGetListDeletionDataRequestForbidden with default headers values
func NewAdminGetListDeletionDataRequestForbidden() *AdminGetListDeletionDataRequestForbidden {
	return &AdminGetListDeletionDataRequestForbidden{}
}

/*AdminGetListDeletionDataRequestForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetListDeletionDataRequestForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetListDeletionDataRequestForbidden) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/deletions][%d] adminGetListDeletionDataRequestForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetListDeletionDataRequestForbidden) ToJSONString() string {
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

func (o *AdminGetListDeletionDataRequestForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetListDeletionDataRequestForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetListDeletionDataRequestNotFound creates a AdminGetListDeletionDataRequestNotFound with default headers values
func NewAdminGetListDeletionDataRequestNotFound() *AdminGetListDeletionDataRequestNotFound {
	return &AdminGetListDeletionDataRequestNotFound{}
}

/*AdminGetListDeletionDataRequestNotFound handles this case with default header values.

  Not Found
*/
type AdminGetListDeletionDataRequestNotFound struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetListDeletionDataRequestNotFound) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/deletions][%d] adminGetListDeletionDataRequestNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetListDeletionDataRequestNotFound) ToJSONString() string {
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

func (o *AdminGetListDeletionDataRequestNotFound) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetListDeletionDataRequestNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetListDeletionDataRequestInternalServerError creates a AdminGetListDeletionDataRequestInternalServerError with default headers values
func NewAdminGetListDeletionDataRequestInternalServerError() *AdminGetListDeletionDataRequestInternalServerError {
	return &AdminGetListDeletionDataRequestInternalServerError{}
}

/*AdminGetListDeletionDataRequestInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetListDeletionDataRequestInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetListDeletionDataRequestInternalServerError) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/deletions][%d] adminGetListDeletionDataRequestInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetListDeletionDataRequestInternalServerError) ToJSONString() string {
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

func (o *AdminGetListDeletionDataRequestInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetListDeletionDataRequestInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
