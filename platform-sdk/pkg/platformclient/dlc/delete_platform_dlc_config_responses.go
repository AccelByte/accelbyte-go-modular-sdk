// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dlc

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
)

type DeletePlatformDLCConfigResponse struct {
	platformclientmodels.ApiResponse
}

func (m *DeletePlatformDLCConfigResponse) Unpack() *platformclientmodels.ApiError {
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

// DeletePlatformDLCConfigReader is a Reader for the DeletePlatformDLCConfig structure.
type DeletePlatformDLCConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeletePlatformDLCConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeletePlatformDLCConfigNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/namespaces/{namespace}/dlc/config/platformMap returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeletePlatformDLCConfigNoContent creates a DeletePlatformDLCConfigNoContent with default headers values
func NewDeletePlatformDLCConfigNoContent() *DeletePlatformDLCConfigNoContent {
	return &DeletePlatformDLCConfigNoContent{}
}

/*DeletePlatformDLCConfigNoContent handles this case with default header values.

  Delete successfully
*/
type DeletePlatformDLCConfigNoContent struct {
}

func (o *DeletePlatformDLCConfigNoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/dlc/config/platformMap][%d] deletePlatformDlcConfigNoContent ", 204)
}

func (o *DeletePlatformDLCConfigNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
