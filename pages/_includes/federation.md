# {{ page.title }}

## Description

Multiple directory service sources (operating FHIR services under this implementation guide) may be combined to offer a federated service capability by suppliers. 
This allows searches by client systems to be supported accross multiple directory service sources.  This allows directory entries to be provided to client systems that
can be used to generate secure messages that can be exchanged via a preferred secure messaging provider to another secure messaging provider preferred by the receiving 
client system. 

From the client system perspective there is no functional impact on search or usage of directory entries for the generation of secure messages.  The supplying directory and 
secure messaging service provider acts as an intermediary for 3rd party directory and secure message service providers and provides suitable directory entries to 
support forwarding of secure messages to other secure message intermediaries.

Arrangements for federated directories and secure message exchange between suppliers are on a case by case basis and completely under control of the participating federating
parties.

## Definitions

* **Source Provider Directory** is a provider directory service supplying the entries managed by a directory provider
* **Federated Provider Directory** is a provider directory service supplying results based on multiple source provider directories

## Requirements

```
FED01 Directory service source providers SHALL supply adequate core registration information to federating directory service providers
```
* Arrangements between source directory providers and federators are based on agreements made between parties.
* Core registration information may be public but this is not required.
* Core registration information is defined as:

|Property|Description|
|---|---||
|Name|A user-friendly description of the registered server e.g. Argus Directory|
|Contact Details|Details of who to contact for support issues|
|Enpoint URL|The URL of the server to send federated requests to (base URL of the FHIR server) (this should also be used as the issuer in the identity JWT)|
|Authentication Details|Any details required to authenticate to the server e.g. API key (simple fixed value), authorization header (fixed/long living bearer token), client ID/secret (OAuth details)|
|Vendor Thumbprint|The thumbprint of the certificate to use to connect to the vendor|
|Id Prefix|Suitable prefix that may be prepended to all id fields to make unique|
|Identifier Namespace|The namespace that will be used for messaging vendor-created identifiers|
{:.grid}

```
FED02 Directory service results content is defined by the federated service supplier
```
* Directory entry results are provided by a federator under policies defined by the operator of the federating service.
* The ordering, grouping and filtering of results is defined by the federating service supplier.
* Results may be returned as blocks from each source directory or by other ordering schemes.

```
FED03 Federating directory services SHALL supply a CapabilityStatement conformant with this Implementation Guide
```
* Federated services will implement capability based on the source service capability and publish via the /meta standard FHIR system interaction.
* The federator shall comply with core requirements as defined in the capability statements section of this implementation guide.

```
FED04 Paging of directory service results MUST be supported by client systems
```
* Paging (next page continuation) may be used by federators to allow responses to be provided before all source systems have provided results to the federator (performance).
* Client systems must allow paging links supplied to be used by either automatic background calls to obtain next page or manual next page selection by user on search results.
* Requirements on paging are detailed in the capability statements section of this implementation guide and are as per the FHIR core specification.
* This is also linked to directory services requirement to honour the standard _count (maximum result set count) search parameter as per the FHIR core specification.

```
FED05 Resource referencing in federated results MUST be adequate for client use on subsequent interactions with the federated service
```

* Federated search results contain entries from multiple source provider directory services, there is potential for identity conflicts to occur.
* URL rewriting may be implemented by the federating service provider to avoid referencing identity conflicts in the results.
* When URL rewriting occurs the federating service must be able to use the rewritten URL in subsequent service interactions e.g. read resource

```
FED06 Tracking HTTP headers SHOULD be implemented to allow support investigation
```
* Custom header X-Request-Id SHOULD always be included in every response.
* Custom header X-Request-Id MAY be included in requests from client systems and reflected in the responses.
* This header supports tracking for support and federated results.
* If no header is populated it SHOULD be populated by provider directory servers.

