# {{ page.title }}
{:.no_toc}

<!-- TOC -->

* Do not remove this line (it will not be displayed)
{:toc}

## Introduction
There are a number of FHIR resource types used to record provider directory entries.

PractitionerRole and HealthcareService are the main searchable concepts and can be related to other resources, Practitioner, Organization, Location and Endpoint.

Searching for suitable PractitionerRole or HealthcareService can be made by search parameters on these resource types and/or via chained searches to the related resource types.

In this usage the PractitionerRole and HealthcareService resources are related to Endpoints (containing service connection details, such as secure messaging) and this allows communications to be made to a practitioner (in a role) or healthcare service based on the content of the associated Endpoint resource used.


## Provider Directory Core Entity Relationships

For directory service profiles the PractitionerRole resource has constrained relationships to Location, Organization, and Practitioner resource types.

This ensures that all practitioners in a role are associated to a location, organisation (providing services), and an individual practitioner (person) to support searching.

<div>
<img src="assets/images/erd1.jpg"/>
</div>
<br/>
<br/>

For directory service profiles the HealthcareService resource has constrained relationships to Location, and Organization resource types.

This ensures that all health care service are associated to one or more locations, and an organisation (providing service) to support searching.

<div>
<img src="assets/images/erd2.jpg"/>
</div>
<br/>
<br/>

## Simplified Provider Directory Sequence for Secure Messaging

The sequence of searches typically used for secure messaging of a HL7 V2 messaging:

* A User performs a Provider Search 
	* This searches for a PractitionerRole or HealthcareService using desired search parameters (include via related resources using a chained search)
	* A FHIR Bundle is retured as a searchset result with matching resources and any included related resources
* Results are presented to the User; each destination will be related to a PractitionerRole or HealthcareService and a specific Endpoint (secure messaging endpoint for SM send, including the payload type supported)
* A User will Choose Destination
* A destination will have an associated secure messaging Endpoint
	* Details in the PractitionerRole/HealthcareService include one or more identifier associated with a HL7 V2 assigning authority (HPI-O, NPIO, vendor allocated, Medicare provider number)
	* Details in the Endpoint include details of:
		* An encrypting certificate (NASH or vendor - for SM message payload encryption)
		* HL7 V2 receiving facility (for HL7 V2 message content)
		* HL7 V2 receiving application (for HL7 V2 message content)
		* Secure message gateway URL (for SM message content)
		* Secure messaging target identifier (for SM message content)
* A Secure Message Sender will format the HL7 V2 REF/MDM Message using these details; for delivery to the chosen specific destination
* A Secure Message Sender will deliver the HL7 V2 REF/MDM Message via the secure message agent to a Secure Message Receiver
* The receiving system will respond with a HL7 V2 ACK Message which needs to be directed back to the sending system; this requires a search to find secure messaging details to recieve the ACK
* The acknowledging receiving system will search for an Endpoint with matching HL7 V2 receiving application, connection type (secure messaging), and payload type (ACK type)
* The acknowledging system can then format an HL7 V2 ACK response and secure messaging agent can send a secure message response (using details from the Endpoint) 
	
	
<div>
<img src="assets/images/sequence1.jpg"/>
</div>
<br/>
<br/>

## Provider Directory Service Roles

This implementation guide is defined to allow multiple consumer systems to call multiple provider directory services reliably with a consistent interface and available data support.  


**Provider Directory Supplier** implementations are server software systems that supply a provider directory service interface and data.

```
SRV01 Servers SHALL be capable of providing all resource types included in this guide.
```

```
SRV02 Servers SHALL be capable of providing all profile data elements marked as MUST SUPPORT.
```

```
SRV03 Servers SHALL comply to AU Provider Directory Implmementation Guide, AU Base Implmementation Guide and FHIR STU3 core constraints for all resource instances.
```

```
SRV04 Servers SHALL be capable of responding meaningfully to all search requests (in each resource definiition) that are marked as MUST SUPPORT.
```

```
SRV05 Servers MAY be capable of responding to search requests (in each resource definiition) that are marked as OPTIONAL.
```

```
SRV06 Servers MAY be capable of responding to other search requests that are FHIR core compliant OR custom searches (defined using CapabilityStatement supplied by the server).
```

**Provider Directory Consumer** implementations are client software systems that call provider directory services and consume data.

```
CLI01 Clients SHALL support meaningful consumption of all data elements marked as MUST SUPPORT.
```

```
CLI02 Clients SHALL allow receipt of the all resource types in this guide.
```

```
CLI03 Clients SHALL allow receipt of resource instances that are valid according to the AU Provider Directory Implmementation Guide, including FHIR STU3 core compliant elements not defined in this guide.
```

```
CLI04 Clients can assume that all search requests marked as MUST SUPPORT are available.
```

```
CLI05 Clients may use search requests marked as OPTIONAL but MUST inform the user if the call is not supported by the server.
```
