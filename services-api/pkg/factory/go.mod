module github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/factory

go 1.18

// for development only (not propagated)
replace (
	github.com/AccelByte/accelbyte-go-modular-sdk/achievement-sdk => ../../../achievement-sdk
	github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk => ../../../ams-sdk
	github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk => ../../../basic-sdk
	github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk => ../../../challenge-sdk
	github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk => ../../../chat-sdk
	github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk => ../../../cloudsave-sdk
	github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk => ../../../csm-sdk
	github.com/AccelByte/accelbyte-go-modular-sdk/gametelemetry-sdk => ../../../gametelemetry-sdk
	github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk => ../../../gdpr-sdk
	github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk => ../../../group-sdk
	github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk => ../../../iam-sdk
	github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk => ../../../inventory-sdk
	github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk => ../../../leaderboard-sdk
	github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk => ../../../legal-sdk
	github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk => ../../../lobby-sdk
	github.com/AccelByte/accelbyte-go-modular-sdk/loginqueue-sdk => ../../../loginqueue-sdk
	github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk => ../../../match2-sdk
	github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk => ../../../platform-sdk
	github.com/AccelByte/accelbyte-go-modular-sdk/reporting-sdk => ../../../reporting-sdk
	github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk => ../../../seasonpass-sdk
	github.com/AccelByte/accelbyte-go-modular-sdk/services-api => ../../../services-api
	github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk => ../../../session-sdk
	github.com/AccelByte/accelbyte-go-modular-sdk/sessionhistory-sdk => ../../../sessionhistory-sdk
	github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk => ../../../social-sdk
	github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk => ../../../ugc-sdk
)

require (
	github.com/AccelByte/accelbyte-go-modular-sdk/achievement-sdk v0.2.0
	github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk v0.6.0
	github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk v0.2.0
	github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk v0.3.0
	github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk v0.3.0
	github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk v0.1.0-alpha.11
	github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk v0.5.0
	github.com/AccelByte/accelbyte-go-modular-sdk/gametelemetry-sdk v0.1.0-alpha.7
	github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk v0.2.0
	github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk v0.1.0-alpha.4
	github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk v0.7.0
	github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk v0.3.0
	github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk v0.2.0
	github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk v0.2.0
	github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk v0.2.0
	github.com/AccelByte/accelbyte-go-modular-sdk/loginqueue-sdk v0.1.0
	github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk v0.6.0
	github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk v0.4.0
	github.com/AccelByte/accelbyte-go-modular-sdk/reporting-sdk v0.1.0-alpha.3
	github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk v0.3.0
	github.com/AccelByte/accelbyte-go-modular-sdk/services-api v0.1.0-alpha.6
	github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk v0.5.0
	github.com/AccelByte/accelbyte-go-modular-sdk/sessionhistory-sdk v0.4.0
	github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk v0.4.0
	github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk v0.1.0-alpha.11
)

require (
	github.com/AccelByte/bloom v0.0.0-20180915202807-98c052463922 // indirect
	github.com/AccelByte/go-jose v2.1.4+incompatible // indirect
	github.com/PuerkitoBio/purell v1.1.1 // indirect
	github.com/PuerkitoBio/urlesc v0.0.0-20170810143723-de5bf2ad4578 // indirect
	github.com/asaskevich/govalidator v0.0.0-20210307081110-f21760c49a8d // indirect
	github.com/go-logr/logr v1.2.3 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/go-openapi/analysis v0.21.2 // indirect
	github.com/go-openapi/errors v0.20.2 // indirect
	github.com/go-openapi/jsonpointer v0.19.5 // indirect
	github.com/go-openapi/jsonreference v0.19.6 // indirect
	github.com/go-openapi/loads v0.21.1 // indirect
	github.com/go-openapi/runtime v0.19.29 // indirect
	github.com/go-openapi/spec v0.20.4 // indirect
	github.com/go-openapi/strfmt v0.21.1 // indirect
	github.com/go-openapi/swag v0.21.1 // indirect
	github.com/go-openapi/validate v0.21.0 // indirect
	github.com/golang-jwt/jwt v3.2.2+incompatible // indirect
	github.com/google/uuid v1.3.0 // indirect
	github.com/gorilla/websocket v1.5.3 // indirect
	github.com/josharian/intern v1.0.0 // indirect
	github.com/mailru/easyjson v0.7.7 // indirect
	github.com/mitchellh/mapstructure v1.4.3 // indirect
	github.com/oklog/ulid v1.3.1 // indirect
	github.com/opentracing/opentracing-go v1.2.0 // indirect
	github.com/patrickmn/go-cache v2.1.0+incompatible // indirect
	github.com/sirupsen/logrus v1.9.0 // indirect
	github.com/spaolacci/murmur3 v1.1.0 // indirect
	github.com/willf/bitset v1.1.11 // indirect
	go.mongodb.org/mongo-driver v1.10.0 // indirect
	go.opentelemetry.io/contrib/propagators/aws v1.15.0 // indirect
	go.opentelemetry.io/otel v1.14.0 // indirect
	go.opentelemetry.io/otel/sdk v1.14.0 // indirect
	go.opentelemetry.io/otel/trace v1.14.0 // indirect
	golang.org/x/crypto v0.31.0 // indirect
	golang.org/x/net v0.33.0 // indirect
	golang.org/x/sys v0.28.0 // indirect
	golang.org/x/text v0.21.0 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
)
