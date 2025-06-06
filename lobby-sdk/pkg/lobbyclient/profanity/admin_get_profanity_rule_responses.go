// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package profanity

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

type AdminGetProfanityRuleResponse struct {
	lobbyclientmodels.ApiResponse
	Data *lobbyclientmodels.ModelsProfanityRule

	Error400 *lobbyclientmodels.RestapiErrorResponseBody
	Error401 *lobbyclientmodels.RestapiErrorResponseBody
	Error403 *lobbyclientmodels.RestapiErrorResponseBody
	Error404 *lobbyclientmodels.RestapiErrorResponseBody
	Error500 *lobbyclientmodels.RestapiErrorResponseBody
}

func (m *AdminGetProfanityRuleResponse) Unpack() (*lobbyclientmodels.ModelsProfanityRule, *lobbyclientmodels.ApiError) {
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
			return nil, &lobbyclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// AdminGetProfanityRuleReader is a Reader for the AdminGetProfanityRule structure.
type AdminGetProfanityRuleReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetProfanityRuleReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetProfanityRuleOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetProfanityRuleBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetProfanityRuleUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetProfanityRuleForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetProfanityRuleNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetProfanityRuleInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/admin/profanity/namespaces/{namespace}/rule returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetProfanityRuleOK creates a AdminGetProfanityRuleOK with default headers values
func NewAdminGetProfanityRuleOK() *AdminGetProfanityRuleOK {
	return &AdminGetProfanityRuleOK{}
}

/*AdminGetProfanityRuleOK handles this case with default header values.

  OK
*/
type AdminGetProfanityRuleOK struct {
	Payload *lobbyclientmodels.ModelsProfanityRule
}

func (o *AdminGetProfanityRuleOK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/profanity/namespaces/{namespace}/rule][%d] adminGetProfanityRuleOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetProfanityRuleOK) ToJSONString() string {
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

func (o *AdminGetProfanityRuleOK) GetPayload() *lobbyclientmodels.ModelsProfanityRule {
	return o.Payload
}

func (o *AdminGetProfanityRuleOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelsProfanityRule)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetProfanityRuleBadRequest creates a AdminGetProfanityRuleBadRequest with default headers values
func NewAdminGetProfanityRuleBadRequest() *AdminGetProfanityRuleBadRequest {
	return &AdminGetProfanityRuleBadRequest{}
}

/*AdminGetProfanityRuleBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetProfanityRuleBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetProfanityRuleBadRequest) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/profanity/namespaces/{namespace}/rule][%d] adminGetProfanityRuleBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetProfanityRuleBadRequest) ToJSONString() string {
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

func (o *AdminGetProfanityRuleBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetProfanityRuleBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetProfanityRuleUnauthorized creates a AdminGetProfanityRuleUnauthorized with default headers values
func NewAdminGetProfanityRuleUnauthorized() *AdminGetProfanityRuleUnauthorized {
	return &AdminGetProfanityRuleUnauthorized{}
}

/*AdminGetProfanityRuleUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetProfanityRuleUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetProfanityRuleUnauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/profanity/namespaces/{namespace}/rule][%d] adminGetProfanityRuleUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetProfanityRuleUnauthorized) ToJSONString() string {
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

func (o *AdminGetProfanityRuleUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetProfanityRuleUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetProfanityRuleForbidden creates a AdminGetProfanityRuleForbidden with default headers values
func NewAdminGetProfanityRuleForbidden() *AdminGetProfanityRuleForbidden {
	return &AdminGetProfanityRuleForbidden{}
}

/*AdminGetProfanityRuleForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetProfanityRuleForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetProfanityRuleForbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/profanity/namespaces/{namespace}/rule][%d] adminGetProfanityRuleForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetProfanityRuleForbidden) ToJSONString() string {
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

func (o *AdminGetProfanityRuleForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetProfanityRuleForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetProfanityRuleNotFound creates a AdminGetProfanityRuleNotFound with default headers values
func NewAdminGetProfanityRuleNotFound() *AdminGetProfanityRuleNotFound {
	return &AdminGetProfanityRuleNotFound{}
}

/*AdminGetProfanityRuleNotFound handles this case with default header values.

  Not Found
*/
type AdminGetProfanityRuleNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetProfanityRuleNotFound) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/profanity/namespaces/{namespace}/rule][%d] adminGetProfanityRuleNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetProfanityRuleNotFound) ToJSONString() string {
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

func (o *AdminGetProfanityRuleNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetProfanityRuleNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetProfanityRuleInternalServerError creates a AdminGetProfanityRuleInternalServerError with default headers values
func NewAdminGetProfanityRuleInternalServerError() *AdminGetProfanityRuleInternalServerError {
	return &AdminGetProfanityRuleInternalServerError{}
}

/*AdminGetProfanityRuleInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetProfanityRuleInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetProfanityRuleInternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/profanity/namespaces/{namespace}/rule][%d] adminGetProfanityRuleInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetProfanityRuleInternalServerError) ToJSONString() string {
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

func (o *AdminGetProfanityRuleInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetProfanityRuleInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
