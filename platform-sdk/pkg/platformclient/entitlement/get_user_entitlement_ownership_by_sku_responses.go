// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package entitlement

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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

// GetUserEntitlementOwnershipBySkuReader is a Reader for the GetUserEntitlementOwnershipBySku structure.
type GetUserEntitlementOwnershipBySkuReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserEntitlementOwnershipBySkuReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserEntitlementOwnershipBySkuOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/bySku returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserEntitlementOwnershipBySkuOK creates a GetUserEntitlementOwnershipBySkuOK with default headers values
func NewGetUserEntitlementOwnershipBySkuOK() *GetUserEntitlementOwnershipBySkuOK {
	return &GetUserEntitlementOwnershipBySkuOK{}
}

/*
GetUserEntitlementOwnershipBySkuOK handles this case with default header values.

	successful operation
*/
type GetUserEntitlementOwnershipBySkuOK struct {
	Payload *platformclientmodels.TimedOwnership
}

func (o *GetUserEntitlementOwnershipBySkuOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/bySku][%d] getUserEntitlementOwnershipBySkuOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserEntitlementOwnershipBySkuOK) ToJSONString() string {
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

func (o *GetUserEntitlementOwnershipBySkuOK) GetPayload() *platformclientmodels.TimedOwnership {
	return o.Payload
}

func (o *GetUserEntitlementOwnershipBySkuOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.TimedOwnership)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
