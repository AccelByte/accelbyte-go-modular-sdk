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

type SelectAllRecordsByCriteriaResponse struct {
	platformclientmodels.ApiResponse

	Error404 *platformclientmodels.ErrorEntity
}

func (m *SelectAllRecordsByCriteriaResponse) Unpack() *platformclientmodels.ApiError {
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

// SelectAllRecordsByCriteriaReader is a Reader for the SelectAllRecordsByCriteria structure.
type SelectAllRecordsByCriteriaReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SelectAllRecordsByCriteriaReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewSelectAllRecordsByCriteriaNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSelectAllRecordsByCriteriaNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/selectAllByCriteria returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSelectAllRecordsByCriteriaNoContent creates a SelectAllRecordsByCriteriaNoContent with default headers values
func NewSelectAllRecordsByCriteriaNoContent() *SelectAllRecordsByCriteriaNoContent {
	return &SelectAllRecordsByCriteriaNoContent{}
}

/*SelectAllRecordsByCriteriaNoContent handles this case with default header values.

  Select all changes by criteria successfully
*/
type SelectAllRecordsByCriteriaNoContent struct {
}

func (o *SelectAllRecordsByCriteriaNoContent) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/selectAllByCriteria][%d] selectAllRecordsByCriteriaNoContent ", 204)
}

func (o *SelectAllRecordsByCriteriaNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSelectAllRecordsByCriteriaNotFound creates a SelectAllRecordsByCriteriaNotFound with default headers values
func NewSelectAllRecordsByCriteriaNotFound() *SelectAllRecordsByCriteriaNotFound {
	return &SelectAllRecordsByCriteriaNotFound{}
}

/*SelectAllRecordsByCriteriaNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type SelectAllRecordsByCriteriaNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SelectAllRecordsByCriteriaNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/selectAllByCriteria][%d] selectAllRecordsByCriteriaNotFound  %+v", 404, o.ToJSONString())
}

func (o *SelectAllRecordsByCriteriaNotFound) ToJSONString() string {
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

func (o *SelectAllRecordsByCriteriaNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SelectAllRecordsByCriteriaNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
