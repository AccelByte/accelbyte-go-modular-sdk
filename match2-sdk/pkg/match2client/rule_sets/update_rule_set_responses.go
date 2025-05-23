// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package rule_sets

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2clientmodels"
)

type UpdateRuleSetResponse struct {
	match2clientmodels.ApiResponse
	Data *match2clientmodels.APIRuleSetPayload

	Error400 *match2clientmodels.ResponseError
	Error401 *match2clientmodels.ResponseError
	Error403 *match2clientmodels.ResponseError
	Error404 *match2clientmodels.ResponseError
	Error500 *match2clientmodels.ResponseError
}

func (m *UpdateRuleSetResponse) Unpack() (*match2clientmodels.APIRuleSetPayload, *match2clientmodels.ApiError) {
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

		case 403:
			e, err := m.Error403.TranslateToApiError()
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
			return nil, &match2clientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// UpdateRuleSetReader is a Reader for the UpdateRuleSet structure.
type UpdateRuleSetReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateRuleSetReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateRuleSetOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateRuleSetBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateRuleSetUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateRuleSetForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateRuleSetNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateRuleSetInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /match2/v1/namespaces/{namespace}/rulesets/{ruleset} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateRuleSetOK creates a UpdateRuleSetOK with default headers values
func NewUpdateRuleSetOK() *UpdateRuleSetOK {
	return &UpdateRuleSetOK{}
}

/*UpdateRuleSetOK handles this case with default header values.

  OK
*/
type UpdateRuleSetOK struct {
	Payload *match2clientmodels.APIRuleSetPayload
}

func (o *UpdateRuleSetOK) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/rulesets/{ruleset}][%d] updateRuleSetOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateRuleSetOK) ToJSONString() string {
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

func (o *UpdateRuleSetOK) GetPayload() *match2clientmodels.APIRuleSetPayload {
	return o.Payload
}

func (o *UpdateRuleSetOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.APIRuleSetPayload)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateRuleSetBadRequest creates a UpdateRuleSetBadRequest with default headers values
func NewUpdateRuleSetBadRequest() *UpdateRuleSetBadRequest {
	return &UpdateRuleSetBadRequest{}
}

/*UpdateRuleSetBadRequest handles this case with default header values.

  Bad Request
*/
type UpdateRuleSetBadRequest struct {
	Payload *match2clientmodels.ResponseError
}

func (o *UpdateRuleSetBadRequest) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/rulesets/{ruleset}][%d] updateRuleSetBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateRuleSetBadRequest) ToJSONString() string {
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

func (o *UpdateRuleSetBadRequest) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateRuleSetBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateRuleSetUnauthorized creates a UpdateRuleSetUnauthorized with default headers values
func NewUpdateRuleSetUnauthorized() *UpdateRuleSetUnauthorized {
	return &UpdateRuleSetUnauthorized{}
}

/*UpdateRuleSetUnauthorized handles this case with default header values.

  Unauthorized
*/
type UpdateRuleSetUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *UpdateRuleSetUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/rulesets/{ruleset}][%d] updateRuleSetUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateRuleSetUnauthorized) ToJSONString() string {
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

func (o *UpdateRuleSetUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateRuleSetUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateRuleSetForbidden creates a UpdateRuleSetForbidden with default headers values
func NewUpdateRuleSetForbidden() *UpdateRuleSetForbidden {
	return &UpdateRuleSetForbidden{}
}

/*UpdateRuleSetForbidden handles this case with default header values.

  Forbidden
*/
type UpdateRuleSetForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *UpdateRuleSetForbidden) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/rulesets/{ruleset}][%d] updateRuleSetForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateRuleSetForbidden) ToJSONString() string {
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

func (o *UpdateRuleSetForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateRuleSetForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateRuleSetNotFound creates a UpdateRuleSetNotFound with default headers values
func NewUpdateRuleSetNotFound() *UpdateRuleSetNotFound {
	return &UpdateRuleSetNotFound{}
}

/*UpdateRuleSetNotFound handles this case with default header values.

  Forbidden
*/
type UpdateRuleSetNotFound struct {
	Payload *match2clientmodels.ResponseError
}

func (o *UpdateRuleSetNotFound) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/rulesets/{ruleset}][%d] updateRuleSetNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateRuleSetNotFound) ToJSONString() string {
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

func (o *UpdateRuleSetNotFound) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateRuleSetNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateRuleSetInternalServerError creates a UpdateRuleSetInternalServerError with default headers values
func NewUpdateRuleSetInternalServerError() *UpdateRuleSetInternalServerError {
	return &UpdateRuleSetInternalServerError{}
}

/*UpdateRuleSetInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateRuleSetInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *UpdateRuleSetInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/rulesets/{ruleset}][%d] updateRuleSetInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateRuleSetInternalServerError) ToJSONString() string {
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

func (o *UpdateRuleSetInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateRuleSetInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
