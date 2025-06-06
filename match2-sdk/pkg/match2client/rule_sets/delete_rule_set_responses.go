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

type DeleteRuleSetResponse struct {
	match2clientmodels.ApiResponse

	Error401 *match2clientmodels.ResponseError
	Error403 *match2clientmodels.ResponseError
	Error404 *match2clientmodels.ResponseError
	Error500 *match2clientmodels.ResponseError
}

func (m *DeleteRuleSetResponse) Unpack() *match2clientmodels.ApiError {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 401:
			e, err := m.Error401.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 403:
			e, err := m.Error403.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 404:
			e, err := m.Error404.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		case 500:
			e, err := m.Error500.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		default:
			return &match2clientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// DeleteRuleSetReader is a Reader for the DeleteRuleSet structure.
type DeleteRuleSetReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteRuleSetReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteRuleSetNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteRuleSetUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteRuleSetForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteRuleSetNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteRuleSetInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /match2/v1/namespaces/{namespace}/rulesets/{ruleset} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteRuleSetNoContent creates a DeleteRuleSetNoContent with default headers values
func NewDeleteRuleSetNoContent() *DeleteRuleSetNoContent {
	return &DeleteRuleSetNoContent{}
}

/*DeleteRuleSetNoContent handles this case with default header values.

  No Content
*/
type DeleteRuleSetNoContent struct {
}

func (o *DeleteRuleSetNoContent) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/namespaces/{namespace}/rulesets/{ruleset}][%d] deleteRuleSetNoContent ", 204)
}

func (o *DeleteRuleSetNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteRuleSetUnauthorized creates a DeleteRuleSetUnauthorized with default headers values
func NewDeleteRuleSetUnauthorized() *DeleteRuleSetUnauthorized {
	return &DeleteRuleSetUnauthorized{}
}

/*DeleteRuleSetUnauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteRuleSetUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *DeleteRuleSetUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/namespaces/{namespace}/rulesets/{ruleset}][%d] deleteRuleSetUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteRuleSetUnauthorized) ToJSONString() string {
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

func (o *DeleteRuleSetUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteRuleSetUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteRuleSetForbidden creates a DeleteRuleSetForbidden with default headers values
func NewDeleteRuleSetForbidden() *DeleteRuleSetForbidden {
	return &DeleteRuleSetForbidden{}
}

/*DeleteRuleSetForbidden handles this case with default header values.

  Forbidden
*/
type DeleteRuleSetForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *DeleteRuleSetForbidden) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/namespaces/{namespace}/rulesets/{ruleset}][%d] deleteRuleSetForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteRuleSetForbidden) ToJSONString() string {
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

func (o *DeleteRuleSetForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteRuleSetForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteRuleSetNotFound creates a DeleteRuleSetNotFound with default headers values
func NewDeleteRuleSetNotFound() *DeleteRuleSetNotFound {
	return &DeleteRuleSetNotFound{}
}

/*DeleteRuleSetNotFound handles this case with default header values.

  Not Found
*/
type DeleteRuleSetNotFound struct {
	Payload *match2clientmodels.ResponseError
}

func (o *DeleteRuleSetNotFound) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/namespaces/{namespace}/rulesets/{ruleset}][%d] deleteRuleSetNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteRuleSetNotFound) ToJSONString() string {
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

func (o *DeleteRuleSetNotFound) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteRuleSetNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteRuleSetInternalServerError creates a DeleteRuleSetInternalServerError with default headers values
func NewDeleteRuleSetInternalServerError() *DeleteRuleSetInternalServerError {
	return &DeleteRuleSetInternalServerError{}
}

/*DeleteRuleSetInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteRuleSetInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *DeleteRuleSetInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/namespaces/{namespace}/rulesets/{ruleset}][%d] deleteRuleSetInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteRuleSetInternalServerError) ToJSONString() string {
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

func (o *DeleteRuleSetInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteRuleSetInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
