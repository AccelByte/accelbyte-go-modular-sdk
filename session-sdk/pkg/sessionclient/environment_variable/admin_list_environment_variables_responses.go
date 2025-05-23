// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package environment_variable

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclientmodels"
)

type AdminListEnvironmentVariablesResponse struct {
	sessionclientmodels.ApiResponse
	Data *sessionclientmodels.ApimodelsEnvironmentVariableListResponse

	Error401 *sessionclientmodels.ResponseError
	Error403 *sessionclientmodels.ResponseError
}

func (m *AdminListEnvironmentVariablesResponse) Unpack() (*sessionclientmodels.ApimodelsEnvironmentVariableListResponse, *sessionclientmodels.ApiError) {
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

		default:
			return nil, &sessionclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// AdminListEnvironmentVariablesReader is a Reader for the AdminListEnvironmentVariables structure.
type AdminListEnvironmentVariablesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListEnvironmentVariablesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListEnvironmentVariablesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminListEnvironmentVariablesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminListEnvironmentVariablesForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/admin/environment-variables returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListEnvironmentVariablesOK creates a AdminListEnvironmentVariablesOK with default headers values
func NewAdminListEnvironmentVariablesOK() *AdminListEnvironmentVariablesOK {
	return &AdminListEnvironmentVariablesOK{}
}

/*AdminListEnvironmentVariablesOK handles this case with default header values.

  OK
*/
type AdminListEnvironmentVariablesOK struct {
	Payload *sessionclientmodels.ApimodelsEnvironmentVariableListResponse
}

func (o *AdminListEnvironmentVariablesOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/environment-variables][%d] adminListEnvironmentVariablesOK  %+v", 200, o.ToJSONString())
}

func (o *AdminListEnvironmentVariablesOK) ToJSONString() string {
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

func (o *AdminListEnvironmentVariablesOK) GetPayload() *sessionclientmodels.ApimodelsEnvironmentVariableListResponse {
	return o.Payload
}

func (o *AdminListEnvironmentVariablesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ApimodelsEnvironmentVariableListResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminListEnvironmentVariablesUnauthorized creates a AdminListEnvironmentVariablesUnauthorized with default headers values
func NewAdminListEnvironmentVariablesUnauthorized() *AdminListEnvironmentVariablesUnauthorized {
	return &AdminListEnvironmentVariablesUnauthorized{}
}

/*AdminListEnvironmentVariablesUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminListEnvironmentVariablesUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminListEnvironmentVariablesUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/environment-variables][%d] adminListEnvironmentVariablesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminListEnvironmentVariablesUnauthorized) ToJSONString() string {
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

func (o *AdminListEnvironmentVariablesUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListEnvironmentVariablesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminListEnvironmentVariablesForbidden creates a AdminListEnvironmentVariablesForbidden with default headers values
func NewAdminListEnvironmentVariablesForbidden() *AdminListEnvironmentVariablesForbidden {
	return &AdminListEnvironmentVariablesForbidden{}
}

/*AdminListEnvironmentVariablesForbidden handles this case with default header values.

  Forbidden
*/
type AdminListEnvironmentVariablesForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminListEnvironmentVariablesForbidden) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/environment-variables][%d] adminListEnvironmentVariablesForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminListEnvironmentVariablesForbidden) ToJSONString() string {
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

func (o *AdminListEnvironmentVariablesForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListEnvironmentVariablesForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
