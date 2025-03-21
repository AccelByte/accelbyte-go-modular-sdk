// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package season

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
)

type BulkGetUserSeasonProgressionResponse struct {
	seasonpassclientmodels.ApiResponse
	Data []*seasonpassclientmodels.UserSeasonSummary

	Error400 *seasonpassclientmodels.ErrorEntity
	Error404 *seasonpassclientmodels.ErrorEntity
}

func (m *BulkGetUserSeasonProgressionResponse) Unpack() ([]*seasonpassclientmodels.UserSeasonSummary, *seasonpassclientmodels.ApiError) {
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

		case 404:
			e, err := m.Error404.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		default:
			return nil, &seasonpassclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// BulkGetUserSeasonProgressionReader is a Reader for the BulkGetUserSeasonProgression structure.
type BulkGetUserSeasonProgressionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkGetUserSeasonProgressionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkGetUserSeasonProgressionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkGetUserSeasonProgressionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewBulkGetUserSeasonProgressionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /seasonpass/admin/namespaces/{namespace}/seasons/current/users/bulk/progression returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkGetUserSeasonProgressionOK creates a BulkGetUserSeasonProgressionOK with default headers values
func NewBulkGetUserSeasonProgressionOK() *BulkGetUserSeasonProgressionOK {
	return &BulkGetUserSeasonProgressionOK{}
}

/*BulkGetUserSeasonProgressionOK handles this case with default header values.

  successful operation
*/
type BulkGetUserSeasonProgressionOK struct {
	Payload []*seasonpassclientmodels.UserSeasonSummary
}

func (o *BulkGetUserSeasonProgressionOK) Error() string {
	return fmt.Sprintf("[POST /seasonpass/admin/namespaces/{namespace}/seasons/current/users/bulk/progression][%d] bulkGetUserSeasonProgressionOK  %+v", 200, o.ToJSONString())
}

func (o *BulkGetUserSeasonProgressionOK) ToJSONString() string {
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

func (o *BulkGetUserSeasonProgressionOK) GetPayload() []*seasonpassclientmodels.UserSeasonSummary {
	return o.Payload
}

func (o *BulkGetUserSeasonProgressionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkGetUserSeasonProgressionBadRequest creates a BulkGetUserSeasonProgressionBadRequest with default headers values
func NewBulkGetUserSeasonProgressionBadRequest() *BulkGetUserSeasonProgressionBadRequest {
	return &BulkGetUserSeasonProgressionBadRequest{}
}

/*BulkGetUserSeasonProgressionBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr></table>
*/
type BulkGetUserSeasonProgressionBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *BulkGetUserSeasonProgressionBadRequest) Error() string {
	return fmt.Sprintf("[POST /seasonpass/admin/namespaces/{namespace}/seasons/current/users/bulk/progression][%d] bulkGetUserSeasonProgressionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkGetUserSeasonProgressionBadRequest) ToJSONString() string {
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

func (o *BulkGetUserSeasonProgressionBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkGetUserSeasonProgressionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkGetUserSeasonProgressionNotFound creates a BulkGetUserSeasonProgressionNotFound with default headers values
func NewBulkGetUserSeasonProgressionNotFound() *BulkGetUserSeasonProgressionNotFound {
	return &BulkGetUserSeasonProgressionNotFound{}
}

/*BulkGetUserSeasonProgressionNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49147</td><td>Published season does not exist</td></tr></table>
*/
type BulkGetUserSeasonProgressionNotFound struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *BulkGetUserSeasonProgressionNotFound) Error() string {
	return fmt.Sprintf("[POST /seasonpass/admin/namespaces/{namespace}/seasons/current/users/bulk/progression][%d] bulkGetUserSeasonProgressionNotFound  %+v", 404, o.ToJSONString())
}

func (o *BulkGetUserSeasonProgressionNotFound) ToJSONString() string {
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

func (o *BulkGetUserSeasonProgressionNotFound) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkGetUserSeasonProgressionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
