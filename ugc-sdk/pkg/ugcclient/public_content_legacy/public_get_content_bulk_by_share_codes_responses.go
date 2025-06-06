// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_content_legacy

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

type PublicGetContentBulkByShareCodesResponse struct {
	ugcclientmodels.ApiResponse
	Data []*ugcclientmodels.ModelsContentDownloadResponse

	Error400 *ugcclientmodels.ResponseError
	Error401 *ugcclientmodels.ResponseError
	Error403 *ugcclientmodels.ResponseError
	Error500 *ugcclientmodels.ResponseError
}

func (m *PublicGetContentBulkByShareCodesResponse) Unpack() ([]*ugcclientmodels.ModelsContentDownloadResponse, *ugcclientmodels.ApiError) {
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
			return nil, &ugcclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// PublicGetContentBulkByShareCodesReader is a Reader for the PublicGetContentBulkByShareCodes structure.
type PublicGetContentBulkByShareCodesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetContentBulkByShareCodesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetContentBulkByShareCodesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetContentBulkByShareCodesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetContentBulkByShareCodesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetContentBulkByShareCodesForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetContentBulkByShareCodesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ugc/v1/public/namespaces/{namespace}/contents/sharecodes/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetContentBulkByShareCodesOK creates a PublicGetContentBulkByShareCodesOK with default headers values
func NewPublicGetContentBulkByShareCodesOK() *PublicGetContentBulkByShareCodesOK {
	return &PublicGetContentBulkByShareCodesOK{}
}

/*PublicGetContentBulkByShareCodesOK handles this case with default header values.

  Bulk get content by sharecodes
*/
type PublicGetContentBulkByShareCodesOK struct {
	Payload []*ugcclientmodels.ModelsContentDownloadResponse
}

func (o *PublicGetContentBulkByShareCodesOK) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/public/namespaces/{namespace}/contents/sharecodes/bulk][%d] publicGetContentBulkByShareCodesOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetContentBulkByShareCodesOK) ToJSONString() string {
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

func (o *PublicGetContentBulkByShareCodesOK) GetPayload() []*ugcclientmodels.ModelsContentDownloadResponse {
	return o.Payload
}

func (o *PublicGetContentBulkByShareCodesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetContentBulkByShareCodesBadRequest creates a PublicGetContentBulkByShareCodesBadRequest with default headers values
func NewPublicGetContentBulkByShareCodesBadRequest() *PublicGetContentBulkByShareCodesBadRequest {
	return &PublicGetContentBulkByShareCodesBadRequest{}
}

/*PublicGetContentBulkByShareCodesBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773900</td><td>Malformed request/Invalid request body</td></tr></table>
*/
type PublicGetContentBulkByShareCodesBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGetContentBulkByShareCodesBadRequest) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/public/namespaces/{namespace}/contents/sharecodes/bulk][%d] publicGetContentBulkByShareCodesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetContentBulkByShareCodesBadRequest) ToJSONString() string {
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

func (o *PublicGetContentBulkByShareCodesBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetContentBulkByShareCodesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetContentBulkByShareCodesUnauthorized creates a PublicGetContentBulkByShareCodesUnauthorized with default headers values
func NewPublicGetContentBulkByShareCodesUnauthorized() *PublicGetContentBulkByShareCodesUnauthorized {
	return &PublicGetContentBulkByShareCodesUnauthorized{}
}

/*PublicGetContentBulkByShareCodesUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicGetContentBulkByShareCodesUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGetContentBulkByShareCodesUnauthorized) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/public/namespaces/{namespace}/contents/sharecodes/bulk][%d] publicGetContentBulkByShareCodesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetContentBulkByShareCodesUnauthorized) ToJSONString() string {
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

func (o *PublicGetContentBulkByShareCodesUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetContentBulkByShareCodesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetContentBulkByShareCodesForbidden creates a PublicGetContentBulkByShareCodesForbidden with default headers values
func NewPublicGetContentBulkByShareCodesForbidden() *PublicGetContentBulkByShareCodesForbidden {
	return &PublicGetContentBulkByShareCodesForbidden{}
}

/*PublicGetContentBulkByShareCodesForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicGetContentBulkByShareCodesForbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGetContentBulkByShareCodesForbidden) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/public/namespaces/{namespace}/contents/sharecodes/bulk][%d] publicGetContentBulkByShareCodesForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetContentBulkByShareCodesForbidden) ToJSONString() string {
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

func (o *PublicGetContentBulkByShareCodesForbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetContentBulkByShareCodesForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetContentBulkByShareCodesInternalServerError creates a PublicGetContentBulkByShareCodesInternalServerError with default headers values
func NewPublicGetContentBulkByShareCodesInternalServerError() *PublicGetContentBulkByShareCodesInternalServerError {
	return &PublicGetContentBulkByShareCodesInternalServerError{}
}

/*PublicGetContentBulkByShareCodesInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773901</td><td>Unable to get ugc content: database/Unable to get creator</td></tr><tr><td>773902</td><td>Failed generate download URL</td></tr></table>
*/
type PublicGetContentBulkByShareCodesInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGetContentBulkByShareCodesInternalServerError) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/public/namespaces/{namespace}/contents/sharecodes/bulk][%d] publicGetContentBulkByShareCodesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetContentBulkByShareCodesInternalServerError) ToJSONString() string {
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

func (o *PublicGetContentBulkByShareCodesInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetContentBulkByShareCodesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
