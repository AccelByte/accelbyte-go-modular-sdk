// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package match_pools

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

type MatchPoolListResponse struct {
	match2clientmodels.ApiResponse
	Data *match2clientmodels.APIListMatchPoolsResponse

	Error401 *match2clientmodels.ResponseError
	Error403 *match2clientmodels.ResponseError
	Error500 *match2clientmodels.ResponseError
}

func (m *MatchPoolListResponse) Unpack() (*match2clientmodels.APIListMatchPoolsResponse, *match2clientmodels.ApiError) {
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

// MatchPoolListReader is a Reader for the MatchPoolList structure.
type MatchPoolListReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *MatchPoolListReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewMatchPoolListOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewMatchPoolListUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewMatchPoolListForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewMatchPoolListInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /match2/v1/namespaces/{namespace}/match-pools returns an error %d: %s", response.Code(), string(data))
	}
}

// NewMatchPoolListOK creates a MatchPoolListOK with default headers values
func NewMatchPoolListOK() *MatchPoolListOK {
	return &MatchPoolListOK{}
}

/*MatchPoolListOK handles this case with default header values.

  OK
*/
type MatchPoolListOK struct {
	Payload *match2clientmodels.APIListMatchPoolsResponse
}

func (o *MatchPoolListOK) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-pools][%d] matchPoolListOK  %+v", 200, o.ToJSONString())
}

func (o *MatchPoolListOK) ToJSONString() string {
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

func (o *MatchPoolListOK) GetPayload() *match2clientmodels.APIListMatchPoolsResponse {
	return o.Payload
}

func (o *MatchPoolListOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.APIListMatchPoolsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewMatchPoolListUnauthorized creates a MatchPoolListUnauthorized with default headers values
func NewMatchPoolListUnauthorized() *MatchPoolListUnauthorized {
	return &MatchPoolListUnauthorized{}
}

/*MatchPoolListUnauthorized handles this case with default header values.

  Unauthorized
*/
type MatchPoolListUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *MatchPoolListUnauthorized) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-pools][%d] matchPoolListUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *MatchPoolListUnauthorized) ToJSONString() string {
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

func (o *MatchPoolListUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *MatchPoolListUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewMatchPoolListForbidden creates a MatchPoolListForbidden with default headers values
func NewMatchPoolListForbidden() *MatchPoolListForbidden {
	return &MatchPoolListForbidden{}
}

/*MatchPoolListForbidden handles this case with default header values.

  Forbidden
*/
type MatchPoolListForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *MatchPoolListForbidden) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-pools][%d] matchPoolListForbidden  %+v", 403, o.ToJSONString())
}

func (o *MatchPoolListForbidden) ToJSONString() string {
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

func (o *MatchPoolListForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *MatchPoolListForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewMatchPoolListInternalServerError creates a MatchPoolListInternalServerError with default headers values
func NewMatchPoolListInternalServerError() *MatchPoolListInternalServerError {
	return &MatchPoolListInternalServerError{}
}

/*MatchPoolListInternalServerError handles this case with default header values.

  Internal Server Error
*/
type MatchPoolListInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *MatchPoolListInternalServerError) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-pools][%d] matchPoolListInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *MatchPoolListInternalServerError) ToJSONString() string {
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

func (o *MatchPoolListInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *MatchPoolListInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
