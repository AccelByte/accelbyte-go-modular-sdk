// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

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

type GetPsnEntitlementOwnershipResponse struct {
	platformclientmodels.ApiResponse
	Data *platformclientmodels.Ownership
}

func (m *GetPsnEntitlementOwnershipResponse) Unpack() (*platformclientmodels.Ownership, *platformclientmodels.ApiError) {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		default:
			return nil, &platformclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return m.Data, nil
}

// GetPsnEntitlementOwnershipReader is a Reader for the GetPsnEntitlementOwnership structure.
type GetPsnEntitlementOwnershipReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetPsnEntitlementOwnershipReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetPsnEntitlementOwnershipOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/platforms/psn/entitlements/{entitlementLabel}/ownership returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetPsnEntitlementOwnershipOK creates a GetPsnEntitlementOwnershipOK with default headers values
func NewGetPsnEntitlementOwnershipOK() *GetPsnEntitlementOwnershipOK {
	return &GetPsnEntitlementOwnershipOK{}
}

/*GetPsnEntitlementOwnershipOK handles this case with default header values.

  successful operation
*/
type GetPsnEntitlementOwnershipOK struct {
	Payload *platformclientmodels.Ownership
}

func (o *GetPsnEntitlementOwnershipOK) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/platforms/psn/entitlements/{entitlementLabel}/ownership][%d] getPsnEntitlementOwnershipOK  %+v", 200, o.ToJSONString())
}

func (o *GetPsnEntitlementOwnershipOK) ToJSONString() string {
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

func (o *GetPsnEntitlementOwnershipOK) GetPayload() *platformclientmodels.Ownership {
	return o.Payload
}

func (o *GetPsnEntitlementOwnershipOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.Ownership)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
