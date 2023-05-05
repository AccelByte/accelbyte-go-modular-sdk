# Eventlog Service Index

&nbsp;

## Operations

### Event Descriptions Wrapper:  [EventDescriptions](../../eventlog-sdk/pkg/wrapper_eventDescriptions.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| [DEPRECATED] `/event/descriptions/agentType` | GET | AgentTypeDescriptionHandlerShort | [AgentTypeDescriptionHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [AgentTypeDescriptionHandlerShort](../../eventlog-sdk/pkg/wrapper_eventDescriptions.go) | [AgentTypeDescriptionHandlerShort](../../samples/cli/cmd/eventlog/eventDescriptions/agentTypeDescriptionHandler.go) |
| [DEPRECATED] `/event/descriptions/agentType/listByAgentTypes` | GET | SpecificAgentTypeDescriptionHandlerShort | [SpecificAgentTypeDescriptionHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [SpecificAgentTypeDescriptionHandlerShort](../../eventlog-sdk/pkg/wrapper_eventDescriptions.go) | [SpecificAgentTypeDescriptionHandlerShort](../../samples/cli/cmd/eventlog/eventDescriptions/specificAgentTypeDescriptionHandler.go) |
| [DEPRECATED] `/event/descriptions/eventId` | GET | EventIDDescriptionHandlerShort | [EventIDDescriptionHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [EventIDDescriptionHandlerShort](../../eventlog-sdk/pkg/wrapper_eventDescriptions.go) | [EventIDDescriptionHandlerShort](../../samples/cli/cmd/eventlog/eventDescriptions/eventIDDescriptionHandler.go) |
| [DEPRECATED] `/event/descriptions/eventId/listByEventIds` | GET | SpecificEventIDDescriptionHandlerShort | [SpecificEventIDDescriptionHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [SpecificEventIDDescriptionHandlerShort](../../eventlog-sdk/pkg/wrapper_eventDescriptions.go) | [SpecificEventIDDescriptionHandlerShort](../../samples/cli/cmd/eventlog/eventDescriptions/specificEventIDDescriptionHandler.go) |
| [DEPRECATED] `/event/descriptions/eventLevel` | GET | EventLevelDescriptionHandlerShort | [EventLevelDescriptionHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [EventLevelDescriptionHandlerShort](../../eventlog-sdk/pkg/wrapper_eventDescriptions.go) | [EventLevelDescriptionHandlerShort](../../samples/cli/cmd/eventlog/eventDescriptions/eventLevelDescriptionHandler.go) |
| [DEPRECATED] `/event/descriptions/eventLevel/listByEventLevels` | GET | SpecificEventLevelDescriptionHandlerShort | [SpecificEventLevelDescriptionHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [SpecificEventLevelDescriptionHandlerShort](../../eventlog-sdk/pkg/wrapper_eventDescriptions.go) | [SpecificEventLevelDescriptionHandlerShort](../../samples/cli/cmd/eventlog/eventDescriptions/specificEventLevelDescriptionHandler.go) |
| [DEPRECATED] `/event/descriptions/eventType` | GET | EventTypeDescriptionHandlerShort | [EventTypeDescriptionHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [EventTypeDescriptionHandlerShort](../../eventlog-sdk/pkg/wrapper_eventDescriptions.go) | [EventTypeDescriptionHandlerShort](../../samples/cli/cmd/eventlog/eventDescriptions/eventTypeDescriptionHandler.go) |
| [DEPRECATED] `/event/descriptions/eventType/listByEventTypes` | GET | SpecificEventTypeDescriptionHandlerShort | [SpecificEventTypeDescriptionHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [SpecificEventTypeDescriptionHandlerShort](../../eventlog-sdk/pkg/wrapper_eventDescriptions.go) | [SpecificEventTypeDescriptionHandlerShort](../../samples/cli/cmd/eventlog/eventDescriptions/specificEventTypeDescriptionHandler.go) |
| [DEPRECATED] `/event/descriptions/ux` | GET | UXNameDescriptionHandlerShort | [UXNameDescriptionHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [UXNameDescriptionHandlerShort](../../eventlog-sdk/pkg/wrapper_eventDescriptions.go) | [UXNameDescriptionHandlerShort](../../samples/cli/cmd/eventlog/eventDescriptions/uxNameDescriptionHandler.go) |
| [DEPRECATED] `/event/descriptions/ux/listByUx` | GET | SpecificUXDescriptionHandlerShort | [SpecificUXDescriptionHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_descriptions/event_descriptions_client.go) | [SpecificUXDescriptionHandlerShort](../../eventlog-sdk/pkg/wrapper_eventDescriptions.go) | [SpecificUXDescriptionHandlerShort](../../samples/cli/cmd/eventlog/eventDescriptions/specificUXDescriptionHandler.go) |

### Event Wrapper:  [Event](../../eventlog-sdk/pkg/wrapper_event.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| [DEPRECATED] `/event/namespaces/{namespace}` | GET | GetEventByNamespaceHandlerShort | [GetEventByNamespaceHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event/event_client.go) | [GetEventByNamespaceHandlerShort](../../eventlog-sdk/pkg/wrapper_event.go) | [GetEventByNamespaceHandlerShort](../../samples/cli/cmd/eventlog/event/getEventByNamespaceHandler.go) |
| [DEPRECATED] `/event/namespaces/{namespace}` | POST | PostEventHandlerShort | [PostEventHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event/event_client.go) | [PostEventHandlerShort](../../eventlog-sdk/pkg/wrapper_event.go) | [PostEventHandlerShort](../../samples/cli/cmd/eventlog/event/postEventHandler.go) |
| [DEPRECATED] `/event/namespaces/{namespace}/eventId/{eventId}` | GET | GetEventByEventIDHandlerShort | [GetEventByEventIDHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event/event_client.go) | [GetEventByEventIDHandlerShort](../../eventlog-sdk/pkg/wrapper_event.go) | [GetEventByEventIDHandlerShort](../../samples/cli/cmd/eventlog/event/getEventByEventIDHandler.go) |
| [DEPRECATED] `/event/namespaces/{namespace}/eventType/{eventType}` | GET | GetEventByEventTypeHandlerShort | [GetEventByEventTypeHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event/event_client.go) | [GetEventByEventTypeHandlerShort](../../eventlog-sdk/pkg/wrapper_event.go) | [GetEventByEventTypeHandlerShort](../../samples/cli/cmd/eventlog/event/getEventByEventTypeHandler.go) |
| [DEPRECATED] `/event/namespaces/{namespace}/eventType/{eventType}/eventId/{eventId}` | GET | GetEventByEventTypeAndEventIDHandlerShort | [GetEventByEventTypeAndEventIDHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event/event_client.go) | [GetEventByEventTypeAndEventIDHandlerShort](../../eventlog-sdk/pkg/wrapper_event.go) | [GetEventByEventTypeAndEventIDHandlerShort](../../samples/cli/cmd/eventlog/event/getEventByEventTypeAndEventIDHandler.go) |
| [DEPRECATED] `/event/namespaces/{namespace}/users/{userId}` | GET | GetEventByUserIDHandlerShort | [GetEventByUserIDHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event/event_client.go) | [GetEventByUserIDHandlerShort](../../eventlog-sdk/pkg/wrapper_event.go) | [GetEventByUserIDHandlerShort](../../samples/cli/cmd/eventlog/event/getEventByUserIDHandler.go) |
| [DEPRECATED] `/event/namespaces/{namespace}/users/{userId}/eventId/{eventId}` | GET | GetEventByUserIDAndEventIDHandlerShort | [GetEventByUserIDAndEventIDHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event/event_client.go) | [GetEventByUserIDAndEventIDHandlerShort](../../eventlog-sdk/pkg/wrapper_event.go) | [GetEventByUserIDAndEventIDHandlerShort](../../samples/cli/cmd/eventlog/event/getEventByUserIDAndEventIDHandler.go) |
| [DEPRECATED] `/event/namespaces/{namespace}/users/{userId}/eventType/{eventType}` | GET | GetEventByUserIDAndEventTypeHandlerShort | [GetEventByUserIDAndEventTypeHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event/event_client.go) | [GetEventByUserIDAndEventTypeHandlerShort](../../eventlog-sdk/pkg/wrapper_event.go) | [GetEventByUserIDAndEventTypeHandlerShort](../../samples/cli/cmd/eventlog/event/getEventByUserIDAndEventTypeHandler.go) |
| [DEPRECATED] `/event/namespaces/{namespace}/users/{userId}/eventType/{eventType}/eventId/{eventId}` | GET | GetEventByUserEventIDAndEventTypeHandlerShort | [GetEventByUserEventIDAndEventTypeHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event/event_client.go) | [GetEventByUserEventIDAndEventTypeHandlerShort](../../eventlog-sdk/pkg/wrapper_event.go) | [GetEventByUserEventIDAndEventTypeHandlerShort](../../samples/cli/cmd/eventlog/event/getEventByUserEventIDAndEventTypeHandler.go) |

### User Information Wrapper:  [UserInformation](../../eventlog-sdk/pkg/wrapper_userInformation.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| [DEPRECATED] `/event/namespaces/{namespace}/users/{userId}/activities` | GET | GetUserActivitiesHandlerShort | [GetUserActivitiesHandlerShort](../../eventlog-sdk/pkg/eventlogclient/user_information/user_information_client.go) | [GetUserActivitiesHandlerShort](../../eventlog-sdk/pkg/wrapper_userInformation.go) | [GetUserActivitiesHandlerShort](../../samples/cli/cmd/eventlog/userInformation/getUserActivitiesHandler.go) |
| [DEPRECATED] `/event/namespaces/{namespace}/users/{userId}/activities` | DELETE | DeleteUserActivitiesHandlerShort | [DeleteUserActivitiesHandlerShort](../../eventlog-sdk/pkg/eventlogclient/user_information/user_information_client.go) | [DeleteUserActivitiesHandlerShort](../../eventlog-sdk/pkg/wrapper_userInformation.go) | [DeleteUserActivitiesHandlerShort](../../samples/cli/cmd/eventlog/userInformation/deleteUserActivitiesHandler.go) |
| [DEPRECATED] `/event/namespaces/{namespace}/users/{userId}/lastActivityTime` | GET | LastUserActivityTimeHandlerShort | [LastUserActivityTimeHandlerShort](../../eventlog-sdk/pkg/eventlogclient/user_information/user_information_client.go) | [LastUserActivityTimeHandlerShort](../../eventlog-sdk/pkg/wrapper_userInformation.go) | [LastUserActivityTimeHandlerShort](../../samples/cli/cmd/eventlog/userInformation/lastUserActivityTimeHandler.go) |

### Event Registry Wrapper:  [EventRegistry](../../eventlog-sdk/pkg/wrapper_eventRegistry.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| [DEPRECATED] `/event/registry/eventIds` | GET | GetRegisteredEventsHandlerShort | [GetRegisteredEventsHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_registry/event_registry_client.go) | [GetRegisteredEventsHandlerShort](../../eventlog-sdk/pkg/wrapper_eventRegistry.go) | [GetRegisteredEventsHandlerShort](../../samples/cli/cmd/eventlog/eventRegistry/getRegisteredEventsHandler.go) |
| [DEPRECATED] `/event/registry/eventIds` | POST | RegisterEventHandlerShort | [RegisterEventHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_registry/event_registry_client.go) | [RegisterEventHandlerShort](../../eventlog-sdk/pkg/wrapper_eventRegistry.go) | [RegisterEventHandlerShort](../../samples/cli/cmd/eventlog/eventRegistry/registerEventHandler.go) |
| [DEPRECATED] `/event/registry/eventIds/{eventId}` | GET | GetRegisteredEventIDHandlerShort | [GetRegisteredEventIDHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_registry/event_registry_client.go) | [GetRegisteredEventIDHandlerShort](../../eventlog-sdk/pkg/wrapper_eventRegistry.go) | [GetRegisteredEventIDHandlerShort](../../samples/cli/cmd/eventlog/eventRegistry/getRegisteredEventIDHandler.go) |
| [DEPRECATED] `/event/registry/eventIds/{eventId}` | POST | UpdateEventRegistryHandlerShort | [UpdateEventRegistryHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_registry/event_registry_client.go) | [UpdateEventRegistryHandlerShort](../../eventlog-sdk/pkg/wrapper_eventRegistry.go) | [UpdateEventRegistryHandlerShort](../../samples/cli/cmd/eventlog/eventRegistry/updateEventRegistryHandler.go) |
| [DEPRECATED] `/event/registry/eventIds/{eventId}` | DELETE | UnregisterEventIDHandlerShort | [UnregisterEventIDHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_registry/event_registry_client.go) | [UnregisterEventIDHandlerShort](../../eventlog-sdk/pkg/wrapper_eventRegistry.go) | [UnregisterEventIDHandlerShort](../../samples/cli/cmd/eventlog/eventRegistry/unregisterEventIDHandler.go) |
| [DEPRECATED] `/event/registry/eventTypes/{eventType}` | GET | GetRegisteredEventsByEventTypeHandlerShort | [GetRegisteredEventsByEventTypeHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_registry/event_registry_client.go) | [GetRegisteredEventsByEventTypeHandlerShort](../../eventlog-sdk/pkg/wrapper_eventRegistry.go) | [GetRegisteredEventsByEventTypeHandlerShort](../../samples/cli/cmd/eventlog/eventRegistry/getRegisteredEventsByEventTypeHandler.go) |

### Event V2 Wrapper:  [EventV2](../../eventlog-sdk/pkg/wrapper_eventV2.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/event/v2/admin/namespaces/{namespace}/query` | POST | QueryEventStreamHandlerShort | [QueryEventStreamHandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_v2/event_v2_client.go) | [QueryEventStreamHandlerShort](../../eventlog-sdk/pkg/wrapper_eventV2.go) | [QueryEventStreamHandlerShort](../../samples/cli/cmd/eventlog/eventV2/queryEventStreamHandler.go) |
| `/event/v2/admin/namespaces/{namespace}/users/{userId}/event` | GET | GetEventSpecificUserV2HandlerShort | [GetEventSpecificUserV2HandlerShort](../../eventlog-sdk/pkg/eventlogclient/event_v2/event_v2_client.go) | [GetEventSpecificUserV2HandlerShort](../../eventlog-sdk/pkg/wrapper_eventV2.go) | [GetEventSpecificUserV2HandlerShort](../../samples/cli/cmd/eventlog/eventV2/getEventSpecificUserV2Handler.go) |
| `/event/v2/public/namespaces/{namespace}/users/{userId}/edithistory` | GET | GetPublicEditHistoryShort | [GetPublicEditHistoryShort](../../eventlog-sdk/pkg/eventlogclient/event_v2/event_v2_client.go) | [GetPublicEditHistoryShort](../../eventlog-sdk/pkg/wrapper_eventV2.go) | [GetPublicEditHistoryShort](../../samples/cli/cmd/eventlog/eventV2/getPublicEditHistory.go) |
| `/event/v2/public/namespaces/{namespace}/users/{userId}/event` | GET | GetUserEventsV2PublicShort | [GetUserEventsV2PublicShort](../../eventlog-sdk/pkg/eventlogclient/event_v2/event_v2_client.go) | [GetUserEventsV2PublicShort](../../eventlog-sdk/pkg/wrapper_eventV2.go) | [GetUserEventsV2PublicShort](../../samples/cli/cmd/eventlog/eventV2/getUserEventsV2Public.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `models.AgentType` | [ModelsAgentType ](../../eventlog-sdk/pkg/eventlogclientmodels/models_agent_type.go) |
| `models.Event` | [ModelsEvent ](../../eventlog-sdk/pkg/eventlogclientmodels/models_event.go) |
| `models.EventID` | [ModelsEventID ](../../eventlog-sdk/pkg/eventlogclientmodels/models_event_id.go) |
| `models.EventLevel` | [ModelsEventLevel ](../../eventlog-sdk/pkg/eventlogclientmodels/models_event_level.go) |
| `models.EventRegistry` | [ModelsEventRegistry ](../../eventlog-sdk/pkg/eventlogclientmodels/models_event_registry.go) |
| `models.EventResponse` | [ModelsEventResponse ](../../eventlog-sdk/pkg/eventlogclientmodels/models_event_response.go) |
| `models.EventResponseV2` | [ModelsEventResponseV2 ](../../eventlog-sdk/pkg/eventlogclientmodels/models_event_response_v2.go) |
| `models.EventType` | [ModelsEventType ](../../eventlog-sdk/pkg/eventlogclientmodels/models_event_type.go) |
| `models.EventV2` | [ModelsEventV2 ](../../eventlog-sdk/pkg/eventlogclientmodels/models_event_v2.go) |
| `models.GenericQueryPayload` | [ModelsGenericQueryPayload ](../../eventlog-sdk/pkg/eventlogclientmodels/models_generic_query_payload.go) |
| `models.MultipleAgentType` | [ModelsMultipleAgentType ](../../eventlog-sdk/pkg/eventlogclientmodels/models_multiple_agent_type.go) |
| `models.MultipleEventID` | [ModelsMultipleEventID ](../../eventlog-sdk/pkg/eventlogclientmodels/models_multiple_event_id.go) |
| `models.MultipleEventLevel` | [ModelsMultipleEventLevel ](../../eventlog-sdk/pkg/eventlogclientmodels/models_multiple_event_level.go) |
| `models.MultipleEventType` | [ModelsMultipleEventType ](../../eventlog-sdk/pkg/eventlogclientmodels/models_multiple_event_type.go) |
| `models.MultipleUX` | [ModelsMultipleUX ](../../eventlog-sdk/pkg/eventlogclientmodels/models_multiple_u_x.go) |
| `models.Pagination` | [ModelsPagination ](../../eventlog-sdk/pkg/eventlogclientmodels/models_pagination.go) |
| `models.Paging` | [ModelsPaging ](../../eventlog-sdk/pkg/eventlogclientmodels/models_paging.go) |
| `models.UX` | [ModelsUX ](../../eventlog-sdk/pkg/eventlogclientmodels/models_u_x.go) |
| `models.UserLastActivity` | [ModelsUserLastActivity ](../../eventlog-sdk/pkg/eventlogclientmodels/models_user_last_activity.go) |
