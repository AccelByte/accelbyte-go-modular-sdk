// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package match_functions

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

type MatchFunctionListResponse struct {
	match2clientmodels.ApiResponse
	Data *match2clientmodels.APIListMatchFunctionsResponse

	Error401 *match2clientmodels.ResponseError
	Error403 *match2clientmodels.ResponseError
	Error500 *match2clientmodels.ResponseError
}

func (m *MatchFunctionListResponse) Unpack() (*match2clientmodels.APIListMatchFunctionsResponse, *match2clientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

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

// MatchFunctionListReader is a Reader for the MatchFunctionList structure.
type MatchFunctionListReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *MatchFunctionListReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewMatchFunctionListOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewMatchFunctionListUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewMatchFunctionListForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewMatchFunctionListInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /match2/v1/namespaces/{namespace}/match-functions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewMatchFunctionListOK creates a MatchFunctionListOK with default headers values
func NewMatchFunctionListOK() *MatchFunctionListOK {
	return &MatchFunctionListOK{}
}

/*MatchFunctionListOK handles this case with default header values.

  Created
*/
type MatchFunctionListOK struct {
	Payload *match2clientmodels.APIListMatchFunctionsResponse
}

func (o *MatchFunctionListOK) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-functions][%d] matchFunctionListOK  %+v", 200, o.ToJSONString())
}

func (o *MatchFunctionListOK) ToJSONString() string {
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

func (o *MatchFunctionListOK) GetPayload() *match2clientmodels.APIListMatchFunctionsResponse {
	return o.Payload
}

func (o *MatchFunctionListOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.APIListMatchFunctionsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewMatchFunctionListUnauthorized creates a MatchFunctionListUnauthorized with default headers values
func NewMatchFunctionListUnauthorized() *MatchFunctionListUnauthorized {
	return &MatchFunctionListUnauthorized{}
}

/*MatchFunctionListUnauthorized handles this case with default header values.

  Unauthorized
*/
type MatchFunctionListUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *MatchFunctionListUnauthorized) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-functions][%d] matchFunctionListUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *MatchFunctionListUnauthorized) ToJSONString() string {
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

func (o *MatchFunctionListUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *MatchFunctionListUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewMatchFunctionListForbidden creates a MatchFunctionListForbidden with default headers values
func NewMatchFunctionListForbidden() *MatchFunctionListForbidden {
	return &MatchFunctionListForbidden{}
}

/*MatchFunctionListForbidden handles this case with default header values.

  Forbidden
*/
type MatchFunctionListForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *MatchFunctionListForbidden) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-functions][%d] matchFunctionListForbidden  %+v", 403, o.ToJSONString())
}

func (o *MatchFunctionListForbidden) ToJSONString() string {
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

func (o *MatchFunctionListForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *MatchFunctionListForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewMatchFunctionListInternalServerError creates a MatchFunctionListInternalServerError with default headers values
func NewMatchFunctionListInternalServerError() *MatchFunctionListInternalServerError {
	return &MatchFunctionListInternalServerError{}
}

/*MatchFunctionListInternalServerError handles this case with default header values.

  Internal Server Error
*/
type MatchFunctionListInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *MatchFunctionListInternalServerError) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-functions][%d] matchFunctionListInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *MatchFunctionListInternalServerError) ToJSONString() string {
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

func (o *MatchFunctionListInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *MatchFunctionListInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
