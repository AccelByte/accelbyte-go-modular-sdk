// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package service_plugin_config

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
)

// UploadRevocationPluginConfigCertReader is a Reader for the UploadRevocationPluginConfigCert structure.
type UploadRevocationPluginConfigCertReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UploadRevocationPluginConfigCertReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUploadRevocationPluginConfigCertOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUploadRevocationPluginConfigCertUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/revocation/plugins/revocation/revocation/customConfig/cert returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUploadRevocationPluginConfigCertOK creates a UploadRevocationPluginConfigCertOK with default headers values
func NewUploadRevocationPluginConfigCertOK() *UploadRevocationPluginConfigCertOK {
	return &UploadRevocationPluginConfigCertOK{}
}

/*UploadRevocationPluginConfigCertOK handles this case with default header values.

  successful operation
*/
type UploadRevocationPluginConfigCertOK struct {
	Payload *platformclientmodels.RevocationPluginConfigInfo
}

func (o *UploadRevocationPluginConfigCertOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/revocation/plugins/revocation/revocation/customConfig/cert][%d] uploadRevocationPluginConfigCertOK  %+v", 200, o.ToJSONString())
}

func (o *UploadRevocationPluginConfigCertOK) ToJSONString() string {
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

func (o *UploadRevocationPluginConfigCertOK) GetPayload() *platformclientmodels.RevocationPluginConfigInfo {
	return o.Payload
}

func (o *UploadRevocationPluginConfigCertOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.RevocationPluginConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUploadRevocationPluginConfigCertUnprocessableEntity creates a UploadRevocationPluginConfigCertUnprocessableEntity with default headers values
func NewUploadRevocationPluginConfigCertUnprocessableEntity() *UploadRevocationPluginConfigCertUnprocessableEntity {
	return &UploadRevocationPluginConfigCertUnprocessableEntity{}
}

/*UploadRevocationPluginConfigCertUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UploadRevocationPluginConfigCertUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *UploadRevocationPluginConfigCertUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/revocation/plugins/revocation/revocation/customConfig/cert][%d] uploadRevocationPluginConfigCertUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UploadRevocationPluginConfigCertUnprocessableEntity) ToJSONString() string {
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

func (o *UploadRevocationPluginConfigCertUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UploadRevocationPluginConfigCertUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
