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

type DeleteRootRegionOverrideResponse struct {
	dsmcclientmodels.ApiResponse
	Data *dsmcclientmodels.ModelsDeploymentWithOverride

	Error400 *dsmcclientmodels.ResponseError
	Error401 *dsmcclientmodels.ResponseError
	Error404 *dsmcclientmodels.ResponseError
	Error500 *dsmcclientmodels.ResponseError
}

func (m *DeleteRootRegionOverrideResponse) Unpack() (*dsmcclientmodels.ModelsDeploymentWithOverride, *dsmcclientmodels.ApiError) {
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

// DeleteRootRegionOverrideReader is a Reader for the DeleteRootRegionOverride structure.
type DeleteRootRegionOverrideReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteRootRegionOverrideReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDeleteRootRegionOverrideOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteRootRegionOverrideBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteRootRegionOverrideUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteRootRegionOverrideNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteRootRegionOverrideInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteRootRegionOverrideOK creates a DeleteRootRegionOverrideOK with default headers values
func NewDeleteRootRegionOverrideOK() *DeleteRootRegionOverrideOK {
	return &DeleteRootRegionOverrideOK{}
}

/*DeleteRootRegionOverrideOK handles this case with default header values.

  deployment region override deleted
*/
type DeleteRootRegionOverrideOK struct {
	Payload *dsmcclientmodels.ModelsDeploymentWithOverride
}

func (o *DeleteRootRegionOverrideOK) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region}][%d] deleteRootRegionOverrideOK  %+v", 200, o.ToJSONString())
}

func (o *DeleteRootRegionOverrideOK) ToJSONString() string {
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

func (o *DeleteRootRegionOverrideOK) GetPayload() *dsmcclientmodels.ModelsDeploymentWithOverride {
	return o.Payload
}

func (o *DeleteRootRegionOverrideOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteRootRegionOverrideBadRequest creates a DeleteRootRegionOverrideBadRequest with default headers values
func NewDeleteRootRegionOverrideBadRequest() *DeleteRootRegionOverrideBadRequest {
	return &DeleteRootRegionOverrideBadRequest{}
}

/*DeleteRootRegionOverrideBadRequest handles this case with default header values.

  malformed request
*/
type DeleteRootRegionOverrideBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeleteRootRegionOverrideBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region}][%d] deleteRootRegionOverrideBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteRootRegionOverrideBadRequest) ToJSONString() string {
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

func (o *DeleteRootRegionOverrideBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteRootRegionOverrideBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteRootRegionOverrideUnauthorized creates a DeleteRootRegionOverrideUnauthorized with default headers values
func NewDeleteRootRegionOverrideUnauthorized() *DeleteRootRegionOverrideUnauthorized {
	return &DeleteRootRegionOverrideUnauthorized{}
}

/*DeleteRootRegionOverrideUnauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteRootRegionOverrideUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeleteRootRegionOverrideUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region}][%d] deleteRootRegionOverrideUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteRootRegionOverrideUnauthorized) ToJSONString() string {
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

func (o *DeleteRootRegionOverrideUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteRootRegionOverrideUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteRootRegionOverrideNotFound creates a DeleteRootRegionOverrideNotFound with default headers values
func NewDeleteRootRegionOverrideNotFound() *DeleteRootRegionOverrideNotFound {
	return &DeleteRootRegionOverrideNotFound{}
}

/*DeleteRootRegionOverrideNotFound handles this case with default header values.

  deployment not found
*/
type DeleteRootRegionOverrideNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeleteRootRegionOverrideNotFound) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region}][%d] deleteRootRegionOverrideNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteRootRegionOverrideNotFound) ToJSONString() string {
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

func (o *DeleteRootRegionOverrideNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteRootRegionOverrideNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteRootRegionOverrideInternalServerError creates a DeleteRootRegionOverrideInternalServerError with default headers values
func NewDeleteRootRegionOverrideInternalServerError() *DeleteRootRegionOverrideInternalServerError {
	return &DeleteRootRegionOverrideInternalServerError{}
}

/*DeleteRootRegionOverrideInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteRootRegionOverrideInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeleteRootRegionOverrideInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region}][%d] deleteRootRegionOverrideInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteRootRegionOverrideInternalServerError) ToJSONString() string {
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

func (o *DeleteRootRegionOverrideInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteRootRegionOverrideInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
