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

type DeleteItemTypeConfigResponse struct {
	platformclientmodels.ApiResponse

	Error404 *platformclientmodels.ErrorEntity
}

func (m *DeleteItemTypeConfigResponse) Unpack() *platformclientmodels.ApiError {
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

// DeleteItemTypeConfigReader is a Reader for the DeleteItemTypeConfig structure.
type DeleteItemTypeConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteItemTypeConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteItemTypeConfigNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteItemTypeConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/items/configs/{id} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteItemTypeConfigNoContent creates a DeleteItemTypeConfigNoContent with default headers values
func NewDeleteItemTypeConfigNoContent() *DeleteItemTypeConfigNoContent {
	return &DeleteItemTypeConfigNoContent{}
}

/*DeleteItemTypeConfigNoContent handles this case with default header values.

  Delete item successfully
*/
type DeleteItemTypeConfigNoContent struct {
}

func (o *DeleteItemTypeConfigNoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/items/configs/{id}][%d] deleteItemTypeConfigNoContent ", 204)
}

func (o *DeleteItemTypeConfigNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteItemTypeConfigNotFound creates a DeleteItemTypeConfigNotFound with default headers values
func NewDeleteItemTypeConfigNotFound() *DeleteItemTypeConfigNotFound {
	return &DeleteItemTypeConfigNotFound{}
}

/*DeleteItemTypeConfigNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30541</td><td>Item type config [{id}] doesn't exist</td></tr></table>
*/
type DeleteItemTypeConfigNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DeleteItemTypeConfigNotFound) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/items/configs/{id}][%d] deleteItemTypeConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteItemTypeConfigNotFound) ToJSONString() string {
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

func (o *DeleteItemTypeConfigNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteItemTypeConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
