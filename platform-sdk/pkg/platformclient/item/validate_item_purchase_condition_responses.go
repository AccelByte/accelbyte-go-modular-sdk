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

type ValidateItemPurchaseConditionResponse struct {
	platformclientmodels.ApiResponse
	Data []*platformclientmodels.ItemPurchaseConditionValidateResult

	Error422 *platformclientmodels.ValidationErrorEntity
}

func (m *ValidateItemPurchaseConditionResponse) Unpack() ([]*platformclientmodels.ItemPurchaseConditionValidateResult, *platformclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

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

// ValidateItemPurchaseConditionReader is a Reader for the ValidateItemPurchaseCondition structure.
type ValidateItemPurchaseConditionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ValidateItemPurchaseConditionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewValidateItemPurchaseConditionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewValidateItemPurchaseConditionUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/items/purchase/conditions/validate returns an error %d: %s", response.Code(), string(data))
	}
}

// NewValidateItemPurchaseConditionOK creates a ValidateItemPurchaseConditionOK with default headers values
func NewValidateItemPurchaseConditionOK() *ValidateItemPurchaseConditionOK {
	return &ValidateItemPurchaseConditionOK{}
}

/*ValidateItemPurchaseConditionOK handles this case with default header values.

  successful operation
*/
type ValidateItemPurchaseConditionOK struct {
	Payload []*platformclientmodels.ItemPurchaseConditionValidateResult
}

func (o *ValidateItemPurchaseConditionOK) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/items/purchase/conditions/validate][%d] validateItemPurchaseConditionOK  %+v", 200, o.ToJSONString())
}

func (o *ValidateItemPurchaseConditionOK) ToJSONString() string {
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

func (o *ValidateItemPurchaseConditionOK) GetPayload() []*platformclientmodels.ItemPurchaseConditionValidateResult {
	return o.Payload
}

func (o *ValidateItemPurchaseConditionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewValidateItemPurchaseConditionUnprocessableEntity creates a ValidateItemPurchaseConditionUnprocessableEntity with default headers values
func NewValidateItemPurchaseConditionUnprocessableEntity() *ValidateItemPurchaseConditionUnprocessableEntity {
	return &ValidateItemPurchaseConditionUnprocessableEntity{}
}

/*ValidateItemPurchaseConditionUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type ValidateItemPurchaseConditionUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *ValidateItemPurchaseConditionUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/items/purchase/conditions/validate][%d] validateItemPurchaseConditionUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *ValidateItemPurchaseConditionUnprocessableEntity) ToJSONString() string {
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

func (o *ValidateItemPurchaseConditionUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *ValidateItemPurchaseConditionUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
