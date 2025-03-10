// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// RevocationRequest Revocation request
//
// swagger:model Revocation request.
type RevocationRequest struct {

	// source meta info, like DLC transaction id, order no.
	Meta interface{} `json:"meta,omitempty"`

	// reason why the entries need to be revoked
	Reason string `json:"reason,omitempty"`

	// revoke request id, unique identifier for a request to perform at most once execution, when a requestid is resubmitted, it won't perform the revocation again
	RequestID string `json:"requestId,omitempty"`

	// revoke entries
	RevokeEntries []*RevokeEntry `json:"revokeEntries,omitempty"`

	// revoke source
	// Enum: ['DLC', 'IAP', 'ORDER', 'OTHER']
	Source string `json:"source,omitempty"`

	// transaction id: DLC Order No, Order No. This is for external reference id , use request_id for idempotent request
	TransactionID string `json:"transactionId,omitempty"`
}

// Validate validates this Revocation request
func (m *RevocationRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var revocationRequestTypeSourcePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DLC", "IAP", "ORDER", "OTHER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		revocationRequestTypeSourcePropEnum = append(revocationRequestTypeSourcePropEnum, v)
	}
}

const (

	// RevocationRequestSourceDLC captures enum value "DLC"
	RevocationRequestSourceDLC string = "DLC"

	// RevocationRequestSourceIAP captures enum value "IAP"
	RevocationRequestSourceIAP string = "IAP"

	// RevocationRequestSourceORDER captures enum value "ORDER"
	RevocationRequestSourceORDER string = "ORDER"

	// RevocationRequestSourceOTHER captures enum value "OTHER"
	RevocationRequestSourceOTHER string = "OTHER"
)

// prop value enum
func (m *RevocationRequest) validateSourceEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, revocationRequestTypeSourcePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *RevocationRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RevocationRequest) UnmarshalBinary(b []byte) error {
	var res RevocationRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
