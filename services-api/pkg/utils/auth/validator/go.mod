module github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth/validator

go 1.18

replace (
	github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk => ../../../../../iam-sdk
	github.com/AccelByte/accelbyte-go-modular-sdk/services-api => ../../../../../services-api
	github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/service/iam => ../../../service/iam
)

require (
	github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk v0.1.0-alpha.2
	github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/service/iam v0.1.0-alpha.1
	github.com/AccelByte/bloom v0.0.0-20180915202807-98c052463922
	github.com/AccelByte/go-jose v2.1.4+incompatible
	github.com/pkg/errors v0.9.1
)

require (
	github.com/AccelByte/accelbyte-go-modular-sdk/services-api v0.1.0-alpha.1 // indirect
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
	github.com/google/uuid v1.3.0 // indirect
	github.com/josharian/intern v1.0.0 // indirect
	github.com/mailru/easyjson v0.7.7 // indirect
	github.com/mitchellh/mapstructure v1.4.3 // indirect
	github.com/oklog/ulid v1.3.1 // indirect
	github.com/opentracing/opentracing-go v1.2.0 // indirect
	github.com/sirupsen/logrus v1.9.0 // indirect
	github.com/spaolacci/murmur3 v1.1.0 // indirect
	github.com/willf/bitset v1.1.11 // indirect
	go.mongodb.org/mongo-driver v1.10.0 // indirect
	go.opentelemetry.io/contrib/propagators/aws v1.15.0 // indirect
	go.opentelemetry.io/otel v1.14.0 // indirect
	go.opentelemetry.io/otel/sdk v1.14.0 // indirect
	go.opentelemetry.io/otel/trace v1.14.0 // indirect
	golang.org/x/crypto v0.0.0-20220622213112-05595931fe9d // indirect
	golang.org/x/net v0.0.0-20220624214902-1bab6f366d9e // indirect
	golang.org/x/sys v0.5.0 // indirect
	golang.org/x/text v0.3.7 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
)
