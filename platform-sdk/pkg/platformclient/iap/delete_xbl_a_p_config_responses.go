// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
)

type DeleteXblAPConfigResponse struct {
	platformclientmodels.ApiResponse
}

func (m *DeleteXblAPConfigResponse) Unpack() *platformclientmodels.ApiError {
	if !m.IsSuccess {
		var errCode int
		errCode = m.StatusCode

		switch errCode {

		default:
			return &platformclientmodels.ApiError{Code: "500", Message: "Unknown error"}
		}
	}

	return nil
}

// DeleteXblAPConfigReader is a Reader for the DeleteXblAPConfig structure.
type DeleteXblAPConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteXblAPConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteXblAPConfigNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/namespaces/{namespace}/iap/config/xbl returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteXblAPConfigNoContent creates a DeleteXblAPConfigNoContent with default headers values
func NewDeleteXblAPConfigNoContent() *DeleteXblAPConfigNoContent {
	return &DeleteXblAPConfigNoContent{}
}

/*DeleteXblAPConfigNoContent handles this case with default header values.

  Delete successfully
*/
type DeleteXblAPConfigNoContent struct {
}

func (o *DeleteXblAPConfigNoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/iap/config/xbl][%d] deleteXblAPConfigNoContent ", 204)
}

func (o *DeleteXblAPConfigNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
