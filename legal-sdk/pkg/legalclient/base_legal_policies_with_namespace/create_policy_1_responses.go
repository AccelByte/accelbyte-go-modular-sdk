// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package base_legal_policies_with_namespace

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclientmodels"
)

type CreatePolicy1Response struct {
	legalclientmodels.ApiResponse
	Data *legalclientmodels.CreateBasePolicyResponse

	Error400 *legalclientmodels.ErrorEntity
	Error409 *legalclientmodels.ErrorEntity
	Error422 *legalclientmodels.ValidationErrorEntity
}

func (m *CreatePolicy1Response) Unpack() (*legalclientmodels.CreateBasePolicyResponse, *legalclientmodels.ApiError) {
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
			return nil, &legalclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// CreatePolicy1Reader is a Reader for the CreatePolicy1 structure.
type CreatePolicy1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreatePolicy1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreatePolicy1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreatePolicy1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreatePolicy1Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewCreatePolicy1UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /agreement/admin/namespaces/{namespace}/base-policies returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreatePolicy1Created creates a CreatePolicy1Created with default headers values
func NewCreatePolicy1Created() *CreatePolicy1Created {
	return &CreatePolicy1Created{}
}

/*CreatePolicy1Created handles this case with default header values.

  successful operation
*/
type CreatePolicy1Created struct {
	Payload *legalclientmodels.CreateBasePolicyResponse
}

func (o *CreatePolicy1Created) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/namespaces/{namespace}/base-policies][%d] createPolicy1Created  %+v", 201, o.ToJSONString())
}

func (o *CreatePolicy1Created) ToJSONString() string {
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

func (o *CreatePolicy1Created) GetPayload() *legalclientmodels.CreateBasePolicyResponse {
	return o.Payload
}

func (o *CreatePolicy1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.CreateBasePolicyResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreatePolicy1BadRequest creates a CreatePolicy1BadRequest with default headers values
func NewCreatePolicy1BadRequest() *CreatePolicy1BadRequest {
	return &CreatePolicy1BadRequest{}
}

/*CreatePolicy1BadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40032</td><td>errors.net.accelbyte.platform.legal.base_policy_namespace_not_match</td></tr><tr><td>40026</td><td>errors.net.accelbyte.platform.legal.not_allow_create_studio_policy</td></tr></table>
*/
type CreatePolicy1BadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *CreatePolicy1BadRequest) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/namespaces/{namespace}/base-policies][%d] createPolicy1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreatePolicy1BadRequest) ToJSONString() string {
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

func (o *CreatePolicy1BadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreatePolicy1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreatePolicy1Conflict creates a CreatePolicy1Conflict with default headers values
func NewCreatePolicy1Conflict() *CreatePolicy1Conflict {
	return &CreatePolicy1Conflict{}
}

/*CreatePolicy1Conflict handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40030</td><td>errors.net.accelbyte.platform.legal.invalid_policy_type</td></tr></table>
*/
type CreatePolicy1Conflict struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *CreatePolicy1Conflict) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/namespaces/{namespace}/base-policies][%d] createPolicy1Conflict  %+v", 409, o.ToJSONString())
}

func (o *CreatePolicy1Conflict) ToJSONString() string {
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

func (o *CreatePolicy1Conflict) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreatePolicy1Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreatePolicy1UnprocessableEntity creates a CreatePolicy1UnprocessableEntity with default headers values
func NewCreatePolicy1UnprocessableEntity() *CreatePolicy1UnprocessableEntity {
	return &CreatePolicy1UnprocessableEntity{}
}

/*CreatePolicy1UnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type CreatePolicy1UnprocessableEntity struct {
	Payload *legalclientmodels.ValidationErrorEntity
}

func (o *CreatePolicy1UnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/namespaces/{namespace}/base-policies][%d] createPolicy1UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *CreatePolicy1UnprocessableEntity) ToJSONString() string {
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

func (o *CreatePolicy1UnprocessableEntity) GetPayload() *legalclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *CreatePolicy1UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
