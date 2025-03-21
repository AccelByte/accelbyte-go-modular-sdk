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

type UpdateItemResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.FullItemInfo

	Error400 *platformclientmodels.ErrorEntity
	Error404 *platformclientmodels.ErrorEntity
	Error409 *platformclientmodels.ErrorEntity
	Error422 *platformclientmodels.ValidationErrorEntity
}

func (m *UpdateItemResponse) Unpack() (*platformclientmodels.FullItemInfo, *platformclientmodels.ApiError) {
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

		case 409:
			e, err := m.Error409.TranslateToApiError()
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

		default:
			return nil, &platformclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// UpdateItemReader is a Reader for the UpdateItem structure.
type UpdateItemReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateItemReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateItemOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateItemBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateItemNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdateItemConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUpdateItemUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/items/{itemId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateItemOK creates a UpdateItemOK with default headers values
func NewUpdateItemOK() *UpdateItemOK {
	return &UpdateItemOK{}
}

/*UpdateItemOK handles this case with default header values.

  successful operation
*/
type UpdateItemOK struct {
	Payload *platformclientmodels.FullItemInfo
}

func (o *UpdateItemOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items/{itemId}][%d] updateItemOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateItemOK) ToJSONString() string {
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

func (o *UpdateItemOK) GetPayload() *platformclientmodels.FullItemInfo {
	return o.Payload
}

func (o *UpdateItemOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.FullItemInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateItemBadRequest creates a UpdateItemBadRequest with default headers values
func NewUpdateItemBadRequest() *UpdateItemBadRequest {
	return &UpdateItemBadRequest{}
}

/*UpdateItemBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20024</td><td>unsupported operation</td></tr><tr><td>30301</td><td>Unsupported Item Type [{itemType}] for box item [{itemId}] with expiration</td></tr><tr><td>30322</td><td>Bundle item [{itemId}] can't be bundled</td></tr><tr><td>30325</td><td>Code item [{itemId}] can't be bundled</td></tr><tr><td>30326</td><td>Subscription item [{itemId}] can't be bundled</td></tr><tr><td>30329</td><td>Invalid bundled item [{itemId}] quantity</td></tr><tr><td>30021</td><td>Default language [{language}] required</td></tr><tr><td>30321</td><td>Invalid item discount amount</td></tr><tr><td>30022</td><td>Default region [{region}] is required</td></tr><tr><td>30323</td><td>Target namespace is required</td></tr><tr><td>30327</td><td>Invalid item trial price</td></tr><tr><td>30330</td><td>Invalid item region price currency namespace [{namespace}]</td></tr><tr><td>30332</td><td>Invalid option box item [{itemId}] quantity</td></tr><tr><td>30333</td><td>Item [{itemId}] item type [{itemType}] can't be bundled into option box</td></tr><tr><td>30334</td><td>Option box item [{itemId}] can't be bundled</td></tr><tr><td>30337</td><td>Invalid loot box item [{itemId}] quantity</td></tr><tr><td>30338</td><td>Item [{itemId}] item type [{itemType}] can't be bundled into loot box</td></tr><tr><td>30339</td><td>Loot box item [{itemId}] can't be bundled</td></tr></table>
*/
type UpdateItemBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateItemBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items/{itemId}][%d] updateItemBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateItemBadRequest) ToJSONString() string {
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

func (o *UpdateItemBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateItemBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateItemNotFound creates a UpdateItemNotFound with default headers values
func NewUpdateItemNotFound() *UpdateItemNotFound {
	return &UpdateItemNotFound{}
}

/*UpdateItemNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30241</td><td>Category [{categoryPath}] does not exist in namespace [{namespace}]</td></tr><tr><td>36141</td><td>Currency [{currencyCode}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type UpdateItemNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateItemNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items/{itemId}][%d] updateItemNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateItemNotFound) ToJSONString() string {
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

func (o *UpdateItemNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateItemNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateItemConflict creates a UpdateItemConflict with default headers values
func NewUpdateItemConflict() *UpdateItemConflict {
	return &UpdateItemConflict{}
}

/*UpdateItemConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30371</td><td>Item maxCount not allow reduce</td></tr><tr><td>30372</td><td>ItemType is not updatable</td></tr><tr><td>30173</td><td>Published store can't modify content</td></tr><tr><td>30175</td><td>Duplicated currencyCode [{currencyCode}] in Region [{region}]</td></tr><tr><td>30374</td><td>Item sku [{sku}] already exists in namespace [{namespace}]</td></tr><tr><td>30376</td><td>Publisher namespace don’t allow sellback item</td></tr><tr><td>30377</td><td>This item type [{itemType}] don’t allow sellback</td></tr><tr><td>30378</td><td>Sale price don’t allow real currency [{currencyCode}]</td></tr><tr><td>30379</td><td>Item sku is not updatable</td></tr><tr><td>30380</td><td>Box item [{itemId}] duration and end date can’t be set at the same time</td></tr><tr><td>30381</td><td>Currency [{currency}] is not set for bundle Item [{itemId}] in region [{region}]</td></tr><tr><td>30383</td><td>Item app id [{appId}] already exists in namespace [{namespace}] item [{itemId}]</td></tr></table>
*/
type UpdateItemConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateItemConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items/{itemId}][%d] updateItemConflict  %+v", 409, o.ToJSONString())
}

func (o *UpdateItemConflict) ToJSONString() string {
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

func (o *UpdateItemConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateItemConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateItemUnprocessableEntity creates a UpdateItemUnprocessableEntity with default headers values
func NewUpdateItemUnprocessableEntity() *UpdateItemUnprocessableEntity {
	return &UpdateItemUnprocessableEntity{}
}

/*UpdateItemUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdateItemUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *UpdateItemUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/items/{itemId}][%d] updateItemUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UpdateItemUnprocessableEntity) ToJSONString() string {
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

func (o *UpdateItemUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdateItemUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
