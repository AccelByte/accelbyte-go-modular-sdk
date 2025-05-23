// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package friends

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

type GetListOfFriendsResponse struct {
	lobbyclientmodels.ApiResponse
	Data *lobbyclientmodels.ModelGetFriendsResponse

	Error400 *lobbyclientmodels.RestapiErrorResponseBody
	Error401 *lobbyclientmodels.RestapiErrorResponseBody
	Error403 *lobbyclientmodels.RestapiErrorResponseBody
	Error500 *lobbyclientmodels.RestapiErrorResponseBody
}

func (m *GetListOfFriendsResponse) Unpack() (*lobbyclientmodels.ModelGetFriendsResponse, *lobbyclientmodels.ApiError) {
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

// GetListOfFriendsReader is a Reader for the GetListOfFriends structure.
type GetListOfFriendsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetListOfFriendsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetListOfFriendsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetListOfFriendsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetListOfFriendsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetListOfFriendsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetListOfFriendsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetListOfFriendsOK creates a GetListOfFriendsOK with default headers values
func NewGetListOfFriendsOK() *GetListOfFriendsOK {
	return &GetListOfFriendsOK{}
}

/*GetListOfFriendsOK handles this case with default header values.


 */
type GetListOfFriendsOK struct {
	Payload *lobbyclientmodels.ModelGetFriendsResponse
}

func (o *GetListOfFriendsOK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}][%d] getListOfFriendsOK  %+v", 200, o.ToJSONString())
}

func (o *GetListOfFriendsOK) ToJSONString() string {
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

func (o *GetListOfFriendsOK) GetPayload() *lobbyclientmodels.ModelGetFriendsResponse {
	return o.Payload
}

func (o *GetListOfFriendsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelGetFriendsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetListOfFriendsBadRequest creates a GetListOfFriendsBadRequest with default headers values
func NewGetListOfFriendsBadRequest() *GetListOfFriendsBadRequest {
	return &GetListOfFriendsBadRequest{}
}

/*GetListOfFriendsBadRequest handles this case with default header values.

  Bad Request
*/
type GetListOfFriendsBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetListOfFriendsBadRequest) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}][%d] getListOfFriendsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetListOfFriendsBadRequest) ToJSONString() string {
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

func (o *GetListOfFriendsBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetListOfFriendsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetListOfFriendsUnauthorized creates a GetListOfFriendsUnauthorized with default headers values
func NewGetListOfFriendsUnauthorized() *GetListOfFriendsUnauthorized {
	return &GetListOfFriendsUnauthorized{}
}

/*GetListOfFriendsUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetListOfFriendsUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetListOfFriendsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}][%d] getListOfFriendsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetListOfFriendsUnauthorized) ToJSONString() string {
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

func (o *GetListOfFriendsUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetListOfFriendsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetListOfFriendsForbidden creates a GetListOfFriendsForbidden with default headers values
func NewGetListOfFriendsForbidden() *GetListOfFriendsForbidden {
	return &GetListOfFriendsForbidden{}
}

/*GetListOfFriendsForbidden handles this case with default header values.

  Forbidden
*/
type GetListOfFriendsForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetListOfFriendsForbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}][%d] getListOfFriendsForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetListOfFriendsForbidden) ToJSONString() string {
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

func (o *GetListOfFriendsForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetListOfFriendsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetListOfFriendsInternalServerError creates a GetListOfFriendsInternalServerError with default headers values
func NewGetListOfFriendsInternalServerError() *GetListOfFriendsInternalServerError {
	return &GetListOfFriendsInternalServerError{}
}

/*GetListOfFriendsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetListOfFriendsInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetListOfFriendsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}][%d] getListOfFriendsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetListOfFriendsInternalServerError) ToJSONString() string {
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

func (o *GetListOfFriendsInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetListOfFriendsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
