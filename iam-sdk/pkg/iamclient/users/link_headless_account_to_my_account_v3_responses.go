// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
)

type LinkHeadlessAccountToMyAccountV3Response struct {
	iamclientmodels.ApiResponse

	Error400 *iamclientmodels.RestErrorResponse
	Error401 *iamclientmodels.RestErrorResponse
	Error403 *iamclientmodels.RestErrorResponse
	Error500 *iamclientmodels.RestErrorResponse
}

func (m *LinkHeadlessAccountToMyAccountV3Response) Unpack() *iamclientmodels.ApiError {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 400:
			e, err := m.Error400.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

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

		case 500:
			e, err := m.Error500.TranslateToApiError()
			if err != nil {
				_ = fmt.Errorf("failed to translate error. %v", err)
			}

			return e

		default:
			return &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// LinkHeadlessAccountToMyAccountV3Reader is a Reader for the LinkHeadlessAccountToMyAccountV3 structure.
type LinkHeadlessAccountToMyAccountV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *LinkHeadlessAccountToMyAccountV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewLinkHeadlessAccountToMyAccountV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewLinkHeadlessAccountToMyAccountV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewLinkHeadlessAccountToMyAccountV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewLinkHeadlessAccountToMyAccountV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewLinkHeadlessAccountToMyAccountV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/public/users/me/headless/linkWithProgression returns an error %d: %s", response.Code(), string(data))
	}
}

// NewLinkHeadlessAccountToMyAccountV3NoContent creates a LinkHeadlessAccountToMyAccountV3NoContent with default headers values
func NewLinkHeadlessAccountToMyAccountV3NoContent() *LinkHeadlessAccountToMyAccountV3NoContent {
	return &LinkHeadlessAccountToMyAccountV3NoContent{}
}

/*LinkHeadlessAccountToMyAccountV3NoContent handles this case with default header values.

  No Content
*/
type LinkHeadlessAccountToMyAccountV3NoContent struct {
}

func (o *LinkHeadlessAccountToMyAccountV3NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/users/me/headless/linkWithProgression][%d] linkHeadlessAccountToMyAccountV3NoContent ", 204)
}

func (o *LinkHeadlessAccountToMyAccountV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewLinkHeadlessAccountToMyAccountV3BadRequest creates a LinkHeadlessAccountToMyAccountV3BadRequest with default headers values
func NewLinkHeadlessAccountToMyAccountV3BadRequest() *LinkHeadlessAccountToMyAccountV3BadRequest {
	return &LinkHeadlessAccountToMyAccountV3BadRequest{}
}

/*LinkHeadlessAccountToMyAccountV3BadRequest handles this case with default header values.


 */
type LinkHeadlessAccountToMyAccountV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *LinkHeadlessAccountToMyAccountV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/users/me/headless/linkWithProgression][%d] linkHeadlessAccountToMyAccountV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *LinkHeadlessAccountToMyAccountV3BadRequest) ToJSONString() string {
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

func (o *LinkHeadlessAccountToMyAccountV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *LinkHeadlessAccountToMyAccountV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewLinkHeadlessAccountToMyAccountV3Unauthorized creates a LinkHeadlessAccountToMyAccountV3Unauthorized with default headers values
func NewLinkHeadlessAccountToMyAccountV3Unauthorized() *LinkHeadlessAccountToMyAccountV3Unauthorized {
	return &LinkHeadlessAccountToMyAccountV3Unauthorized{}
}

/*LinkHeadlessAccountToMyAccountV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type LinkHeadlessAccountToMyAccountV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *LinkHeadlessAccountToMyAccountV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/users/me/headless/linkWithProgression][%d] linkHeadlessAccountToMyAccountV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *LinkHeadlessAccountToMyAccountV3Unauthorized) ToJSONString() string {
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

func (o *LinkHeadlessAccountToMyAccountV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *LinkHeadlessAccountToMyAccountV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewLinkHeadlessAccountToMyAccountV3Forbidden creates a LinkHeadlessAccountToMyAccountV3Forbidden with default headers values
func NewLinkHeadlessAccountToMyAccountV3Forbidden() *LinkHeadlessAccountToMyAccountV3Forbidden {
	return &LinkHeadlessAccountToMyAccountV3Forbidden{}
}

/*LinkHeadlessAccountToMyAccountV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type LinkHeadlessAccountToMyAccountV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *LinkHeadlessAccountToMyAccountV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/users/me/headless/linkWithProgression][%d] linkHeadlessAccountToMyAccountV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *LinkHeadlessAccountToMyAccountV3Forbidden) ToJSONString() string {
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

func (o *LinkHeadlessAccountToMyAccountV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *LinkHeadlessAccountToMyAccountV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewLinkHeadlessAccountToMyAccountV3InternalServerError creates a LinkHeadlessAccountToMyAccountV3InternalServerError with default headers values
func NewLinkHeadlessAccountToMyAccountV3InternalServerError() *LinkHeadlessAccountToMyAccountV3InternalServerError {
	return &LinkHeadlessAccountToMyAccountV3InternalServerError{}
}

/*LinkHeadlessAccountToMyAccountV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type LinkHeadlessAccountToMyAccountV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *LinkHeadlessAccountToMyAccountV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/users/me/headless/linkWithProgression][%d] linkHeadlessAccountToMyAccountV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *LinkHeadlessAccountToMyAccountV3InternalServerError) ToJSONString() string {
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

func (o *LinkHeadlessAccountToMyAccountV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *LinkHeadlessAccountToMyAccountV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
