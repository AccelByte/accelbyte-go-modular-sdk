// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package base_legal_policies

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

type CreatePolicyResponse struct {
	legalclientmodels.ApiResponse
	Data *legalclientmodels.CreateBasePolicyResponse

	Error400 *legalclientmodels.ErrorEntity
	Error404 *legalclientmodels.ErrorEntity
	Error422 *legalclientmodels.ValidationErrorEntity
}

func (m *CreatePolicyResponse) Unpack() (*legalclientmodels.CreateBasePolicyResponse, *legalclientmodels.ApiError) {
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

// CreatePolicyReader is a Reader for the CreatePolicy structure.
type CreatePolicyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreatePolicyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreatePolicyCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreatePolicyBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreatePolicyNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewCreatePolicyUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /agreement/admin/base-policies returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreatePolicyCreated creates a CreatePolicyCreated with default headers values
func NewCreatePolicyCreated() *CreatePolicyCreated {
	return &CreatePolicyCreated{}
}

/*CreatePolicyCreated handles this case with default header values.

  successful operation
*/
type CreatePolicyCreated struct {
	Payload *legalclientmodels.CreateBasePolicyResponse
}

func (o *CreatePolicyCreated) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/base-policies][%d] createPolicyCreated  %+v", 201, o.ToJSONString())
}

func (o *CreatePolicyCreated) ToJSONString() string {
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

func (o *CreatePolicyCreated) GetPayload() *legalclientmodels.CreateBasePolicyResponse {
	return o.Payload
}

func (o *CreatePolicyCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreatePolicyBadRequest creates a CreatePolicyBadRequest with default headers values
func NewCreatePolicyBadRequest() *CreatePolicyBadRequest {
	return &CreatePolicyBadRequest{}
}

/*CreatePolicyBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40038</td><td>errors.net.accelbyte.platform.legal.invalid_affected_client_id</td></tr><tr><td>40026</td><td>errors.net.accelbyte.platform.legal.not_allow_create_studio_policy</td></tr></table>
*/
type CreatePolicyBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *CreatePolicyBadRequest) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/base-policies][%d] createPolicyBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreatePolicyBadRequest) ToJSONString() string {
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

func (o *CreatePolicyBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreatePolicyBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreatePolicyNotFound creates a CreatePolicyNotFound with default headers values
func NewCreatePolicyNotFound() *CreatePolicyNotFound {
	return &CreatePolicyNotFound{}
}

/*CreatePolicyNotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40030</td><td>errors.net.accelbyte.platform.legal.policy_type_not_exist</td></tr></table>
*/
type CreatePolicyNotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *CreatePolicyNotFound) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/base-policies][%d] createPolicyNotFound  %+v", 404, o.ToJSONString())
}

func (o *CreatePolicyNotFound) ToJSONString() string {
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

func (o *CreatePolicyNotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreatePolicyNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreatePolicyUnprocessableEntity creates a CreatePolicyUnprocessableEntity with default headers values
func NewCreatePolicyUnprocessableEntity() *CreatePolicyUnprocessableEntity {
	return &CreatePolicyUnprocessableEntity{}
}

/*CreatePolicyUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type CreatePolicyUnprocessableEntity struct {
	Payload *legalclientmodels.ValidationErrorEntity
}

func (o *CreatePolicyUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/base-policies][%d] createPolicyUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *CreatePolicyUnprocessableEntity) ToJSONString() string {
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

func (o *CreatePolicyUnprocessableEntity) GetPayload() *legalclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *CreatePolicyUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
