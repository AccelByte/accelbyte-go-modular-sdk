// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package operations

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// BlockHandlerReader is a Reader for the BlockHandler structure.
type BlockHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BlockHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBlockHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /group/debug/pprof/block returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBlockHandlerOK creates a BlockHandlerOK with default headers values
func NewBlockHandlerOK() *BlockHandlerOK {
	return &BlockHandlerOK{}
}

/*BlockHandlerOK handles this case with default header values.

  OK
*/
type BlockHandlerOK struct {
}

func (o *BlockHandlerOK) Error() string {
	return fmt.Sprintf("[GET /group/debug/pprof/block][%d] blockHandlerOK ", 200)
}

func (o *BlockHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
