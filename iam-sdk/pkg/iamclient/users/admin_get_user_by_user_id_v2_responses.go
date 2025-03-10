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

type AdminGetUserByUserIDV2Response struct {
	iamclientmodels.ApiResponse
	Data *iamclientmodels.ModelUserResponse

	Error404 string
	Error500 string
}

func (m *AdminGetUserByUserIDV2Response) Unpack() (*iamclientmodels.ModelUserResponse, *iamclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		case 404:
			return nil, &iamclientmodels.ApiError{Code: "404", Message: m.Error404}

		case 500:
			return nil, &iamclientmodels.ApiError{Code: "500", Message: m.Error500}

		default:
			return nil, &iamclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// AdminGetUserByUserIDV2Reader is a Reader for the AdminGetUserByUserIDV2 structure.
type AdminGetUserByUserIDV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetUserByUserIDV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetUserByUserIDV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetUserByUserIDV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetUserByUserIDV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v2/admin/namespaces/{namespace}/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetUserByUserIDV2OK creates a AdminGetUserByUserIDV2OK with default headers values
func NewAdminGetUserByUserIDV2OK() *AdminGetUserByUserIDV2OK {
	return &AdminGetUserByUserIDV2OK{}
}

/*AdminGetUserByUserIDV2OK handles this case with default header values.

  OK
*/
type AdminGetUserByUserIDV2OK struct {
	Payload *iamclientmodels.ModelUserResponse
}

func (o *AdminGetUserByUserIDV2OK) Error() string {
	return fmt.Sprintf("[GET /iam/v2/admin/namespaces/{namespace}/users/{userId}][%d] adminGetUserByUserIdV2OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetUserByUserIDV2OK) ToJSONString() string {
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

func (o *AdminGetUserByUserIDV2OK) GetPayload() *iamclientmodels.ModelUserResponse {
	return o.Payload
}

func (o *AdminGetUserByUserIDV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUserByUserIDV2NotFound creates a AdminGetUserByUserIDV2NotFound with default headers values
func NewAdminGetUserByUserIDV2NotFound() *AdminGetUserByUserIDV2NotFound {
	return &AdminGetUserByUserIDV2NotFound{}
}

/*AdminGetUserByUserIDV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr><tr><td>10139</td><td>platform account not found</td></tr></table>
*/
type AdminGetUserByUserIDV2NotFound struct {
}

func (o *AdminGetUserByUserIDV2NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v2/admin/namespaces/{namespace}/users/{userId}][%d] adminGetUserByUserIdV2NotFound ", 404)
}

func (o *AdminGetUserByUserIDV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminGetUserByUserIDV2InternalServerError creates a AdminGetUserByUserIDV2InternalServerError with default headers values
func NewAdminGetUserByUserIDV2InternalServerError() *AdminGetUserByUserIDV2InternalServerError {
	return &AdminGetUserByUserIDV2InternalServerError{}
}

/*AdminGetUserByUserIDV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetUserByUserIDV2InternalServerError struct {
}

func (o *AdminGetUserByUserIDV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v2/admin/namespaces/{namespace}/users/{userId}][%d] adminGetUserByUserIdV2InternalServerError ", 500)
}

func (o *AdminGetUserByUserIDV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
