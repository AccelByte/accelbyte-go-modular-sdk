// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package deployment_config

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg/dsmcclientmodels"
)

type CreateDeploymentOverrideResponse struct {
	dsmcclientmodels.ApiResponse
	Data *dsmcclientmodels.ModelsDeploymentWithOverride

	Error400 *dsmcclientmodels.ResponseError
	Error401 *dsmcclientmodels.ResponseError
	Error404 *dsmcclientmodels.ResponseError
	Error409 *dsmcclientmodels.ResponseError
	Error500 *dsmcclientmodels.ResponseError
}

func (m *CreateDeploymentOverrideResponse) Unpack() (*dsmcclientmodels.ModelsDeploymentWithOverride, *dsmcclientmodels.ApiError) {
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

		case 401:
			e, err := m.Error401.TranslateToApiError()
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

		case 500:
			e, err := m.Error500.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return nil, e

		default:
			return nil, &dsmcclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// CreateDeploymentOverrideReader is a Reader for the CreateDeploymentOverride structure.
type CreateDeploymentOverrideReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateDeploymentOverrideReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateDeploymentOverrideCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateDeploymentOverrideBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateDeploymentOverrideUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateDeploymentOverrideNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateDeploymentOverrideConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateDeploymentOverrideInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/version/{version} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateDeploymentOverrideCreated creates a CreateDeploymentOverrideCreated with default headers values
func NewCreateDeploymentOverrideCreated() *CreateDeploymentOverrideCreated {
	return &CreateDeploymentOverrideCreated{}
}

/*CreateDeploymentOverrideCreated handles this case with default header values.

  deployment override created
*/
type CreateDeploymentOverrideCreated struct {
	Payload *dsmcclientmodels.ModelsDeploymentWithOverride
}

func (o *CreateDeploymentOverrideCreated) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/version/{version}][%d] createDeploymentOverrideCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateDeploymentOverrideCreated) ToJSONString() string {
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

func (o *CreateDeploymentOverrideCreated) GetPayload() *dsmcclientmodels.ModelsDeploymentWithOverride {
	return o.Payload
}

func (o *CreateDeploymentOverrideCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsDeploymentWithOverride)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateDeploymentOverrideBadRequest creates a CreateDeploymentOverrideBadRequest with default headers values
func NewCreateDeploymentOverrideBadRequest() *CreateDeploymentOverrideBadRequest {
	return &CreateDeploymentOverrideBadRequest{}
}

/*CreateDeploymentOverrideBadRequest handles this case with default header values.

  malformed request
*/
type CreateDeploymentOverrideBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateDeploymentOverrideBadRequest) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/version/{version}][%d] createDeploymentOverrideBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateDeploymentOverrideBadRequest) ToJSONString() string {
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

func (o *CreateDeploymentOverrideBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateDeploymentOverrideBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateDeploymentOverrideUnauthorized creates a CreateDeploymentOverrideUnauthorized with default headers values
func NewCreateDeploymentOverrideUnauthorized() *CreateDeploymentOverrideUnauthorized {
	return &CreateDeploymentOverrideUnauthorized{}
}

/*CreateDeploymentOverrideUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreateDeploymentOverrideUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateDeploymentOverrideUnauthorized) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/version/{version}][%d] createDeploymentOverrideUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateDeploymentOverrideUnauthorized) ToJSONString() string {
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

func (o *CreateDeploymentOverrideUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateDeploymentOverrideUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateDeploymentOverrideNotFound creates a CreateDeploymentOverrideNotFound with default headers values
func NewCreateDeploymentOverrideNotFound() *CreateDeploymentOverrideNotFound {
	return &CreateDeploymentOverrideNotFound{}
}

/*CreateDeploymentOverrideNotFound handles this case with default header values.

  deployment not found
*/
type CreateDeploymentOverrideNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateDeploymentOverrideNotFound) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/version/{version}][%d] createDeploymentOverrideNotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateDeploymentOverrideNotFound) ToJSONString() string {
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

func (o *CreateDeploymentOverrideNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateDeploymentOverrideNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateDeploymentOverrideConflict creates a CreateDeploymentOverrideConflict with default headers values
func NewCreateDeploymentOverrideConflict() *CreateDeploymentOverrideConflict {
	return &CreateDeploymentOverrideConflict{}
}

/*CreateDeploymentOverrideConflict handles this case with default header values.

  deployment override already exists
*/
type CreateDeploymentOverrideConflict struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateDeploymentOverrideConflict) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/version/{version}][%d] createDeploymentOverrideConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateDeploymentOverrideConflict) ToJSONString() string {
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

func (o *CreateDeploymentOverrideConflict) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateDeploymentOverrideConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateDeploymentOverrideInternalServerError creates a CreateDeploymentOverrideInternalServerError with default headers values
func NewCreateDeploymentOverrideInternalServerError() *CreateDeploymentOverrideInternalServerError {
	return &CreateDeploymentOverrideInternalServerError{}
}

/*CreateDeploymentOverrideInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateDeploymentOverrideInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreateDeploymentOverrideInternalServerError) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/version/{version}][%d] createDeploymentOverrideInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateDeploymentOverrideInternalServerError) ToJSONString() string {
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

func (o *CreateDeploymentOverrideInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateDeploymentOverrideInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
