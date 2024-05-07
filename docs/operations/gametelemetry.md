[//]: # (Code generated. DO NOT EDIT.)

# Gametelemetry Service Index

&nbsp;

## Operations

### telemetry Wrapper:  [Telemetry](../../gametelemetry-sdk/pkg/wrapper_telemetry.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/game-telemetry/v1/admin/namespaces` | GET | GetNamespacesGameTelemetryV1AdminNamespacesGetShort | [GetNamespacesGameTelemetryV1AdminNamespacesGetShort](../../gametelemetry-sdk/pkg/gametelemetryclient/telemetry/telemetry_client.go) | [GetNamespacesGameTelemetryV1AdminNamespacesGetShort](../../gametelemetry-sdk/pkg/wrapper_telemetry.go) | [GetNamespacesGameTelemetryV1AdminNamespacesGetShort](../../samples/cli/cmd/gametelemetry/telemetry/getNamespacesGameTelemetryV1AdminNamespacesGet.go) |
| `/game-telemetry/v1/admin/namespaces/{namespace}/events` | GET | GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetShort | [GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetShort](../../gametelemetry-sdk/pkg/gametelemetryclient/telemetry/telemetry_client.go) | [GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetShort](../../gametelemetry-sdk/pkg/wrapper_telemetry.go) | [GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetShort](../../samples/cli/cmd/gametelemetry/telemetry/getEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet.go) |

### Gametelemetry Operations Wrapper:  [GametelemetryOperations](../../gametelemetry-sdk/pkg/wrapper_gametelemetryOperations.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/game-telemetry/v1/protected/events` | POST | ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort | [ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort](../../gametelemetry-sdk/pkg/gametelemetryclient/gametelemetry_operations/gametelemetry_operations_client.go) | [ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort](../../gametelemetry-sdk/pkg/wrapper_gametelemetryOperations.go) | [ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort](../../samples/cli/cmd/gametelemetry/gametelemetryOperations/protectedSaveEventsGameTelemetryV1ProtectedEventsPost.go) |
| `/game-telemetry/v1/protected/steamIds/{steamId}/playtime` | GET | ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGetShort | [ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGetShort](../../gametelemetry-sdk/pkg/gametelemetryclient/gametelemetry_operations/gametelemetry_operations_client.go) | [ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGetShort](../../gametelemetry-sdk/pkg/wrapper_gametelemetryOperations.go) | [ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGetShort](../../samples/cli/cmd/gametelemetry/gametelemetryOperations/protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet.go) |
| `/game-telemetry/v1/protected/steamIds/{steamId}/playtime/{playtime}` | PUT | ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePutShort | [ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePutShort](../../gametelemetry-sdk/pkg/gametelemetryclient/gametelemetry_operations/gametelemetry_operations_client.go) | [ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePutShort](../../gametelemetry-sdk/pkg/wrapper_gametelemetryOperations.go) | [ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePutShort](../../samples/cli/cmd/gametelemetry/gametelemetryOperations/protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `BaseErrorResponse` | [BaseErrorResponse ](../../gametelemetry-sdk/pkg/gametelemetryclientmodels/base_error_response.go) |
| `GetNamespaceEventResponse` | [GetNamespaceEventResponse ](../../gametelemetry-sdk/pkg/gametelemetryclientmodels/get_namespace_event_response.go) |
| `HTTPValidationError` | [HTTPValidationError ](../../gametelemetry-sdk/pkg/gametelemetryclientmodels/http_validation_error.go) |
| `ListBaseResponse_str_` | [ListBaseResponseStr ](../../gametelemetry-sdk/pkg/gametelemetryclientmodels/list_base_response_str.go) |
| `PagedResponse_GetNamespaceEventResponse_` | [PagedResponseGetNamespaceEventResponse ](../../gametelemetry-sdk/pkg/gametelemetryclientmodels/paged_response_get_namespace_event_response.go) |
| `Paging` | [Paging ](../../gametelemetry-sdk/pkg/gametelemetryclientmodels/paging.go) |
| `PlayTimeResponse` | [PlayTimeResponse ](../../gametelemetry-sdk/pkg/gametelemetryclientmodels/play_time_response.go) |
| `TelemetryBody` | [TelemetryBody ](../../gametelemetry-sdk/pkg/gametelemetryclientmodels/telemetry_body.go) |
| `ValidationError` | [ValidationError ](../../gametelemetry-sdk/pkg/gametelemetryclientmodels/validation_error.go) |
