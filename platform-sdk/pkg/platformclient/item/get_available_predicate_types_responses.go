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

type GetAvailablePredicateTypesResponse struct {
	platformclientmodels.ApiResponse
	Data []*platformclientmodels.AvailablePredicate

	Error404 *platformclientmodels.ErrorEntity
}

func (m *GetAvailablePredicateTypesResponse) Unpack() ([]*platformclientmodels.AvailablePredicate, *platformclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 404:
			e, err := m.Error404.TranslateToApiError()
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

// GetAvailablePredicateTypesReader is a Reader for the GetAvailablePredicateTypes structure.
type GetAvailablePredicateTypesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetAvailablePredicateTypesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetAvailablePredicateTypesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetAvailablePredicateTypesNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/items/predicate/types returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetAvailablePredicateTypesOK creates a GetAvailablePredicateTypesOK with default headers values
func NewGetAvailablePredicateTypesOK() *GetAvailablePredicateTypesOK {
	return &GetAvailablePredicateTypesOK{}
}

/*GetAvailablePredicateTypesOK handles this case with default header values.

  successful operation
*/
type GetAvailablePredicateTypesOK struct {
	Payload []*platformclientmodels.AvailablePredicate
}

func (o *GetAvailablePredicateTypesOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/items/predicate/types][%d] getAvailablePredicateTypesOK  %+v", 200, o.ToJSONString())
}

func (o *GetAvailablePredicateTypesOK) ToJSONString() string {
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

func (o *GetAvailablePredicateTypesOK) GetPayload() []*platformclientmodels.AvailablePredicate {
	return o.Payload
}

func (o *GetAvailablePredicateTypesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAvailablePredicateTypesNotFound creates a GetAvailablePredicateTypesNotFound with default headers values
func NewGetAvailablePredicateTypesNotFound() *GetAvailablePredicateTypesNotFound {
	return &GetAvailablePredicateTypesNotFound{}
}

/*GetAvailablePredicateTypesNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type GetAvailablePredicateTypesNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetAvailablePredicateTypesNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/items/predicate/types][%d] getAvailablePredicateTypesNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetAvailablePredicateTypesNotFound) ToJSONString() string {
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

func (o *GetAvailablePredicateTypesNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetAvailablePredicateTypesNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
