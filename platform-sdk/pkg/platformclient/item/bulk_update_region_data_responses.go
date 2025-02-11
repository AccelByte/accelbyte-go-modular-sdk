// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package item

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

type BulkUpdateRegionDataResponse struct {
	platformclientmodels.ApiResponse

	Error400 *platformclientmodels.ErrorEntity
	Error404 *platformclientmodels.ErrorEntity
	Error409 *platformclientmodels.ErrorEntity
	Error422 *platformclientmodels.ValidationErrorEntity
}

func (m *BulkUpdateRegionDataResponse) Unpack() *platformclientmodels.ApiError {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 400:
			e, err := m.Error400.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 404:
			e, err := m.Error404.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 409:
			e, err := m.Error409.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 422:
			e, err := m.Error422.TranslateToApiError()
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

// BulkUpdateRegionDataReader is a Reader for the BulkUpdateRegionData structure.
type BulkUpdateRegionDataReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkUpdateRegionDataReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewBulkUpdateRegionDataNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkUpdateRegionDataBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewBulkUpdateRegionDataNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewBulkUpdateRegionDataConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewBulkUpdateRegionDataUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/items/regiondata returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkUpdateRegionDataNoContent creates a BulkUpdateRegionDataNoContent with default headers values
func NewBulkUpdateRegionDataNoContent() *BulkUpdateRegionDataNoContent {
	return &BulkUpdateRegionDataNoContent{}
}

/*BulkUpdateRegionDataNoContent handles this case with default header values.

  No Content
*/
type BulkUpdateRegionDataNoContent struct {
}

func (o *BulkUpdateRegionDataNoContent) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items/regiondata][%d] bulkUpdateRegionDataNoContent ", 204)
}

func (o *BulkUpdateRegionDataNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewBulkUpdateRegionDataBadRequest creates a BulkUpdateRegionDataBadRequest with default headers values
func NewBulkUpdateRegionDataBadRequest() *BulkUpdateRegionDataBadRequest {
	return &BulkUpdateRegionDataBadRequest{}
}

/*BulkUpdateRegionDataBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30022</td><td>Default region [{region}] is required</td></tr><tr><td>30321</td><td>Invalid item discount amount</td></tr><tr><td>30327</td><td>Invalid item trial price</td></tr><tr><td>30330</td><td>Invalid item region price currency namespace [{namespace}]</td></tr></table>
*/
type BulkUpdateRegionDataBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *BulkUpdateRegionDataBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items/regiondata][%d] bulkUpdateRegionDataBadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkUpdateRegionDataBadRequest) ToJSONString() string {
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

func (o *BulkUpdateRegionDataBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkUpdateRegionDataBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkUpdateRegionDataNotFound creates a BulkUpdateRegionDataNotFound with default headers values
func NewBulkUpdateRegionDataNotFound() *BulkUpdateRegionDataNotFound {
	return &BulkUpdateRegionDataNotFound{}
}

/*BulkUpdateRegionDataNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30343</td><td>Item of sku [{sku}] does not exist</td></tr></table>
*/
type BulkUpdateRegionDataNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *BulkUpdateRegionDataNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items/regiondata][%d] bulkUpdateRegionDataNotFound  %+v", 404, o.ToJSONString())
}

func (o *BulkUpdateRegionDataNotFound) ToJSONString() string {
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

func (o *BulkUpdateRegionDataNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkUpdateRegionDataNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkUpdateRegionDataConflict creates a BulkUpdateRegionDataConflict with default headers values
func NewBulkUpdateRegionDataConflict() *BulkUpdateRegionDataConflict {
	return &BulkUpdateRegionDataConflict{}
}

/*BulkUpdateRegionDataConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30173</td><td>Published store can't modify content</td></tr></table>
*/
type BulkUpdateRegionDataConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *BulkUpdateRegionDataConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items/regiondata][%d] bulkUpdateRegionDataConflict  %+v", 409, o.ToJSONString())
}

func (o *BulkUpdateRegionDataConflict) ToJSONString() string {
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

func (o *BulkUpdateRegionDataConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkUpdateRegionDataConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkUpdateRegionDataUnprocessableEntity creates a BulkUpdateRegionDataUnprocessableEntity with default headers values
func NewBulkUpdateRegionDataUnprocessableEntity() *BulkUpdateRegionDataUnprocessableEntity {
	return &BulkUpdateRegionDataUnprocessableEntity{}
}

/*BulkUpdateRegionDataUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type BulkUpdateRegionDataUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *BulkUpdateRegionDataUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items/regiondata][%d] bulkUpdateRegionDataUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *BulkUpdateRegionDataUnprocessableEntity) ToJSONString() string {
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

func (o *BulkUpdateRegionDataUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *BulkUpdateRegionDataUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
