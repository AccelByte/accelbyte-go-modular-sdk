// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// AdminSearchChannelSpecificContentReader is a Reader for the AdminSearchChannelSpecificContent structure.
type AdminSearchChannelSpecificContentReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminSearchChannelSpecificContentReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminSearchChannelSpecificContentOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminSearchChannelSpecificContentUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminSearchChannelSpecificContentNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminSearchChannelSpecificContentInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/search returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminSearchChannelSpecificContentOK creates a AdminSearchChannelSpecificContentOK with default headers values
func NewAdminSearchChannelSpecificContentOK() *AdminSearchChannelSpecificContentOK {
	return &AdminSearchChannelSpecificContentOK{}
}

/*AdminSearchChannelSpecificContentOK handles this case with default header values.

  OK
*/
type AdminSearchChannelSpecificContentOK struct {
	Payload *ugcclientmodels.ModelsPaginatedContentDownloadResponse
}

func (o *AdminSearchChannelSpecificContentOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/search][%d] adminSearchChannelSpecificContentOK  %+v", 200, o.ToJSONString())
}

func (o *AdminSearchChannelSpecificContentOK) ToJSONString() string {
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

func (o *AdminSearchChannelSpecificContentOK) GetPayload() *ugcclientmodels.ModelsPaginatedContentDownloadResponse {
	return o.Payload
}

func (o *AdminSearchChannelSpecificContentOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsPaginatedContentDownloadResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminSearchChannelSpecificContentUnauthorized creates a AdminSearchChannelSpecificContentUnauthorized with default headers values
func NewAdminSearchChannelSpecificContentUnauthorized() *AdminSearchChannelSpecificContentUnauthorized {
	return &AdminSearchChannelSpecificContentUnauthorized{}
}

/*AdminSearchChannelSpecificContentUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminSearchChannelSpecificContentUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminSearchChannelSpecificContentUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/search][%d] adminSearchChannelSpecificContentUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminSearchChannelSpecificContentUnauthorized) ToJSONString() string {
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

func (o *AdminSearchChannelSpecificContentUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSearchChannelSpecificContentUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminSearchChannelSpecificContentNotFound creates a AdminSearchChannelSpecificContentNotFound with default headers values
func NewAdminSearchChannelSpecificContentNotFound() *AdminSearchChannelSpecificContentNotFound {
	return &AdminSearchChannelSpecificContentNotFound{}
}

/*AdminSearchChannelSpecificContentNotFound handles this case with default header values.

  Not Found
*/
type AdminSearchChannelSpecificContentNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminSearchChannelSpecificContentNotFound) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/search][%d] adminSearchChannelSpecificContentNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminSearchChannelSpecificContentNotFound) ToJSONString() string {
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

func (o *AdminSearchChannelSpecificContentNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSearchChannelSpecificContentNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminSearchChannelSpecificContentInternalServerError creates a AdminSearchChannelSpecificContentInternalServerError with default headers values
func NewAdminSearchChannelSpecificContentInternalServerError() *AdminSearchChannelSpecificContentInternalServerError {
	return &AdminSearchChannelSpecificContentInternalServerError{}
}

/*AdminSearchChannelSpecificContentInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminSearchChannelSpecificContentInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminSearchChannelSpecificContentInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/search][%d] adminSearchChannelSpecificContentInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminSearchChannelSpecificContentInternalServerError) ToJSONString() string {
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

func (o *AdminSearchChannelSpecificContentInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSearchChannelSpecificContentInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
