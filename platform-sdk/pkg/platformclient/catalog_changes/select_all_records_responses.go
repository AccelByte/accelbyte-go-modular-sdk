// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package catalog_changes

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
)

type SelectAllRecordsResponse struct {
	platformclientmodels.ApiResponse

	Error404 *platformclientmodels.ErrorEntity
}

func (m *SelectAllRecordsResponse) Unpack() *platformclientmodels.ApiError {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 404:
			e, err := m.Error404.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		default:
			return &platformclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// SelectAllRecordsReader is a Reader for the SelectAllRecords structure.
type SelectAllRecordsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SelectAllRecordsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewSelectAllRecordsNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSelectAllRecordsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/selectAll returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSelectAllRecordsNoContent creates a SelectAllRecordsNoContent with default headers values
func NewSelectAllRecordsNoContent() *SelectAllRecordsNoContent {
	return &SelectAllRecordsNoContent{}
}

/*SelectAllRecordsNoContent handles this case with default header values.

  No Content
*/
type SelectAllRecordsNoContent struct {
}

func (o *SelectAllRecordsNoContent) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/selectAll][%d] selectAllRecordsNoContent ", 204)
}

func (o *SelectAllRecordsNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSelectAllRecordsNotFound creates a SelectAllRecordsNotFound with default headers values
func NewSelectAllRecordsNotFound() *SelectAllRecordsNotFound {
	return &SelectAllRecordsNotFound{}
}

/*SelectAllRecordsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type SelectAllRecordsNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SelectAllRecordsNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/selectAll][%d] selectAllRecordsNotFound  %+v", 404, o.ToJSONString())
}

func (o *SelectAllRecordsNotFound) ToJSONString() string {
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

func (o *SelectAllRecordsNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SelectAllRecordsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
