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

type CreateItemResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.FullItemInfo

	Error400 *platformclientmodels.ErrorEntity
	Error404 *platformclientmodels.ErrorEntity
	Error409 *platformclientmodels.ErrorEntity
	Error422 *platformclientmodels.ValidationErrorEntity
}

func (m *CreateItemResponse) Unpack() (*platformclientmodels.FullItemInfo, *platformclientmodels.ApiError) {
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

// CreateItemReader is a Reader for the CreateItem structure.
type CreateItemReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateItemReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateItemCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateItemBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateItemNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateItemConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewCreateItemUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/items returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateItemCreated creates a CreateItemCreated with default headers values
func NewCreateItemCreated() *CreateItemCreated {
	return &CreateItemCreated{}
}

/*CreateItemCreated handles this case with default header values.

  successful operation
*/
type CreateItemCreated struct {
	Payload *platformclientmodels.FullItemInfo
}

func (o *CreateItemCreated) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/items][%d] createItemCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateItemCreated) ToJSONString() string {
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

func (o *CreateItemCreated) GetPayload() *platformclientmodels.FullItemInfo {
	return o.Payload
}

func (o *CreateItemCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateItemBadRequest creates a CreateItemBadRequest with default headers values
func NewCreateItemBadRequest() *CreateItemBadRequest {
	return &CreateItemBadRequest{}
}

/*CreateItemBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20024</td><td>unsupported operation</td></tr><tr><td>30301</td><td>Unsupported Item Type [{itemType}] for box item [{itemId}] with expiration</td></tr><tr><td>30322</td><td>Bundle item [{itemId}] can't be bundled</td></tr><tr><td>30325</td><td>Code item [{itemId}] can't be bundled</td></tr><tr><td>30326</td><td>Subscription item [{itemId}] can't be bundled</td></tr><tr><td>30329</td><td>Invalid bundled item [{itemId}] quantity</td></tr><tr><td>30021</td><td>Default language [{language}] required</td></tr><tr><td>30321</td><td>Invalid item discount amount</td></tr><tr><td>30022</td><td>Default region [{region}] is required</td></tr><tr><td>30323</td><td>Target namespace is required</td></tr><tr><td>30327</td><td>Invalid item trial price</td></tr><tr><td>30330</td><td>Invalid item region price currency namespace [{namespace}]</td></tr><tr><td>30332</td><td>Invalid option box item [{itemId}] quantity</td></tr><tr><td>30333</td><td>Item [{itemId}] item type [{itemType}] can't be bundled into option box</td></tr><tr><td>30334</td><td>Option box item [{itemId}] can't be bundled</td></tr><tr><td>30337</td><td>Invalid loot box item [{itemId}] quantity</td></tr><tr><td>30338</td><td>Item [{itemId}] item type [{itemType}] can't be bundled into loot box</td></tr><tr><td>30339</td><td>Loot box item [{itemId}] can't be bundled</td></tr></table>
*/
type CreateItemBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CreateItemBadRequest) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/items][%d] createItemBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateItemBadRequest) ToJSONString() string {
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

func (o *CreateItemBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateItemBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateItemNotFound creates a CreateItemNotFound with default headers values
func NewCreateItemNotFound() *CreateItemNotFound {
	return &CreateItemNotFound{}
}

/*CreateItemNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30241</td><td>Category [{categoryPath}] does not exist in namespace [{namespace}]</td></tr><tr><td>36141</td><td>Currency [{currencyCode}] does not exist in namespace [{namespace}]</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type CreateItemNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CreateItemNotFound) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/items][%d] createItemNotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateItemNotFound) ToJSONString() string {
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

func (o *CreateItemNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateItemNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateItemConflict creates a CreateItemConflict with default headers values
func NewCreateItemConflict() *CreateItemConflict {
	return &CreateItemConflict{}
}

/*CreateItemConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30173</td><td>Published store can't modify content</td></tr><tr><td>30175</td><td>Duplicated currencyCode [{currencyCode}] in Region [{region}]</td></tr><tr><td>30373</td><td>ItemType [{itemType}] is not allowed in namespace [{namespace}]</td></tr><tr><td>30376</td><td>Publisher namespace don’t allow sellback item</td></tr><tr><td>30377</td><td>This item type [{itemType}] don’t allow sellback</td></tr><tr><td>30378</td><td>Sale price don’t allow real currency [{currencyCode}]</td></tr><tr><td>30380</td><td>Box item [{itemId}] duration and end date can’t be set at the same time</td></tr><tr><td>30381</td><td>Currency [{currency}] is not set for bundle Item [{itemId}] in region [{region}]</td></tr><tr><td>30383</td><td>Item app id [{appId}] already exists in namespace [{namespace}] item [{itemId}]</td></tr></table>
*/
type CreateItemConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *CreateItemConflict) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/items][%d] createItemConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateItemConflict) ToJSONString() string {
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

func (o *CreateItemConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateItemConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateItemUnprocessableEntity creates a CreateItemUnprocessableEntity with default headers values
func NewCreateItemUnprocessableEntity() *CreateItemUnprocessableEntity {
	return &CreateItemUnprocessableEntity{}
}

/*CreateItemUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type CreateItemUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *CreateItemUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/items][%d] createItemUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *CreateItemUnprocessableEntity) ToJSONString() string {
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

func (o *CreateItemUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *CreateItemUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
