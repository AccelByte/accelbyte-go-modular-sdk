// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_content

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclientmodels"
)

type RollbackContentVersionResponse struct {
	ugcclientmodels.ApiResponse
	Data *ugcclientmodels.ModelsContentDownloadResponse

	Error401 *ugcclientmodels.ResponseError
	Error404 *ugcclientmodels.ResponseError
	Error422 *ugcclientmodels.ResponseError
	Error500 *ugcclientmodels.ResponseError
}

func (m *RollbackContentVersionResponse) Unpack() (*ugcclientmodels.ModelsContentDownloadResponse, *ugcclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 401:
			e, err := m.Error401.TranslateToApiError()
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

		case 422:
			e, err := m.Error422.TranslateToApiError()
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
			return nil, &ugcclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// RollbackContentVersionReader is a Reader for the RollbackContentVersion structure.
type RollbackContentVersionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RollbackContentVersionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRollbackContentVersionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRollbackContentVersionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRollbackContentVersionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewRollbackContentVersionUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewRollbackContentVersionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/rollback/{versionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRollbackContentVersionOK creates a RollbackContentVersionOK with default headers values
func NewRollbackContentVersionOK() *RollbackContentVersionOK {
	return &RollbackContentVersionOK{}
}

/*RollbackContentVersionOK handles this case with default header values.

  Rollback content's payload version
*/
type RollbackContentVersionOK struct {
	Payload *ugcclientmodels.ModelsContentDownloadResponse
}

func (o *RollbackContentVersionOK) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/rollback/{versionId}][%d] rollbackContentVersionOK  %+v", 200, o.ToJSONString())
}

func (o *RollbackContentVersionOK) ToJSONString() string {
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

func (o *RollbackContentVersionOK) GetPayload() *ugcclientmodels.ModelsContentDownloadResponse {
	return o.Payload
}

func (o *RollbackContentVersionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsContentDownloadResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRollbackContentVersionUnauthorized creates a RollbackContentVersionUnauthorized with default headers values
func NewRollbackContentVersionUnauthorized() *RollbackContentVersionUnauthorized {
	return &RollbackContentVersionUnauthorized{}
}

/*RollbackContentVersionUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type RollbackContentVersionUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *RollbackContentVersionUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/rollback/{versionId}][%d] rollbackContentVersionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *RollbackContentVersionUnauthorized) ToJSONString() string {
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

func (o *RollbackContentVersionUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *RollbackContentVersionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRollbackContentVersionNotFound creates a RollbackContentVersionNotFound with default headers values
func NewRollbackContentVersionNotFound() *RollbackContentVersionNotFound {
	return &RollbackContentVersionNotFound{}
}

/*RollbackContentVersionNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774101</td><td>ugc content not found</td></tr><tr><td>774102</td><td>version not found</td></tr></table>
*/
type RollbackContentVersionNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *RollbackContentVersionNotFound) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/rollback/{versionId}][%d] rollbackContentVersionNotFound  %+v", 404, o.ToJSONString())
}

func (o *RollbackContentVersionNotFound) ToJSONString() string {
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

func (o *RollbackContentVersionNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *RollbackContentVersionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRollbackContentVersionUnprocessableEntity creates a RollbackContentVersionUnprocessableEntity with default headers values
func NewRollbackContentVersionUnprocessableEntity() *RollbackContentVersionUnprocessableEntity {
	return &RollbackContentVersionUnprocessableEntity{}
}

/*RollbackContentVersionUnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774103</td><td>unable to get ugc content/content cannot be restored using the current content version</td></tr></table>
*/
type RollbackContentVersionUnprocessableEntity struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *RollbackContentVersionUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/rollback/{versionId}][%d] rollbackContentVersionUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *RollbackContentVersionUnprocessableEntity) ToJSONString() string {
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

func (o *RollbackContentVersionUnprocessableEntity) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *RollbackContentVersionUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRollbackContentVersionInternalServerError creates a RollbackContentVersionInternalServerError with default headers values
func NewRollbackContentVersionInternalServerError() *RollbackContentVersionInternalServerError {
	return &RollbackContentVersionInternalServerError{}
}

/*RollbackContentVersionInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774103</td><td>unable to get ugc content/content cannot be restored using the current content version</td></tr></table>
*/
type RollbackContentVersionInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *RollbackContentVersionInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/rollback/{versionId}][%d] rollbackContentVersionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *RollbackContentVersionInternalServerError) ToJSONString() string {
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

func (o *RollbackContentVersionInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *RollbackContentVersionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
