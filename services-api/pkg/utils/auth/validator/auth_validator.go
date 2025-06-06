// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package validator

import (
	"crypto/rsa"
	"encoding/base64"

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/bloom"

	"time"
)

type AuthTokenValidator interface {
	Initialize() error
	Validate(token string, permission *Permission, namespace *string, userId *string) error
}

type TokenValidator struct {
	AuthService     iam.OAuth20Service
	RefreshInterval time.Duration

	Filter                *bloom.Filter
	JwkSet                *iamclientmodels.OauthcommonJWKSet
	JwtClaims             JWTClaims
	JwtEncoding           base64.Encoding
	LocalValidationActive bool
	PublicKeys            map[string]*rsa.PublicKey
	RevokedUsers          map[string]time.Time
	Roles                 map[string]*iamclientmodels.ModelRolePermissionResponseV3

	impl iam.AuthTokenValidator
}

func (v *TokenValidator) initImpl() {
	if v.impl == nil {
		v.impl = iam.NewTokenValidator(v.AuthService, v.RefreshInterval)
	}
}

func (v *TokenValidator) Initialize() error {
	v.initImpl()

	return v.impl.Initialize()
}

func (v *TokenValidator) Validate(token string, permission *Permission, namespace *string, userId *string) error {
	return v.impl.Validate(token, &iam.Permission{
		Resource: permission.Resource,
		Action:   permission.Action,
	}, namespace, userId)
}

func NewTokenValidator(authService iam.OAuth20Service, refreshInterval time.Duration) AuthTokenValidator {
	return &TokenValidator{
		AuthService:     authService,
		RefreshInterval: refreshInterval,

		Filter:                nil,
		JwkSet:                nil,
		JwtClaims:             JWTClaims{},
		JwtEncoding:           *base64.URLEncoding.WithPadding(base64.NoPadding),
		PublicKeys:            make(map[string]*rsa.PublicKey),
		LocalValidationActive: false,
		RevokedUsers:          make(map[string]time.Time),
		Roles:                 make(map[string]*iamclientmodels.ModelRolePermissionResponseV3),
	}
}
