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

<br/>
<br/>


## Provider Directory Core Entity Relationships

### PractitionerRole Associations
For directory service profiles the [PractitionerRole](StructureDefinition-au-pd-practitionerrole.html) resource has constrained relationships to [Location](StructureDefinition-au-pd-location.html), [Organization](StructureDefinition-au-pd-organisation.html), and [Practitioner](StructureDefinition-au-pd-practitioner.html) resource types.

This ensures that all practitioners in a role are associated to a location, organisation (providing services), and an individual practitioner (person) to support searching.

<div>
<img src="assets/images/erd1.jpg"/>
</div>
<br/>
<br/>

### HealthcareService Associations
For directory service profiles the [HealthcareService](StructureDefinition-au-pd-healthcareservice.html) resource has constrained relationships to [Location](StructureDefinition-au-pd-location.html) and [Organization](StructureDefinition-au-pd-organisation.html) resource types.

This ensures that all health care service are associated to one location, and an organisation (providing service) to support searching.

<div>
<img src="assets/images/erd2.jpg"/>
</div>
<br/>
<br/>


## Provider Directory Usage Sequence for Secure Messaging

Typical sequence describing endpoint search, HL7 V2 generation, secure message composition, secure message delivery via intermediary, acknowledgement response addressing, generation and delivery.
	
<div>
<img src="assets/images/sequence1.jpg"/>
</div>
<br/>
<br/>

### Component Roles
1. USER
* User of the PMS/CIS (practice management system/clinical information system) sending a message.
1. PMS/CIS SENDER
* The practice management system or clinical information system) formatting and sending a HL7 V2 REF/MDM message.
1. SM CLIENT (SENDER)
* Secure messaging client component/system that can deliver payloads using secure messaging standard [ATS 5822—2010 — E-Health Secure Message Delivery](https://infostore.saiglobal.com/en-au/Standards/Product-Details-129644_SAIG_AS_AS_274353/?productID=129644_SAIG_AS_AS_274353).
1. SM INTERMEDIARY
* Secure messaging intermediary providing store and forward .
* May provide routing to other secure messaging suppliers.
1. PD FHIR SERVER
* Provider directory FHIR API service adhering to this implementation guide.
* May be federated across multiple provider directory suppliers to allow addressing suitable for forwarding to other secure messaging suppliers.
1. SM CLIENT (RECEIVER)
* Secure messaging client component/system that can receive payloads using secure messaging standard [ATS 5822—2010 — E-Health Secure Message Delivery](https://infostore.saiglobal.com/en-au/Standards/Product-Details-129644_SAIG_AS_AS_274353/?productID=129644_SAIG_AS_AS_274353).
1. PMS/CIS (RECEIVER)
* The practice management system or clinical information system) receiving the HL7 V2 REF/MDM message and processsing it.
* On accept/reject of the received message formatting and sending a HL7 V2 ACK message.

### Sequence
1. USER SEARCH
* User performs a provider search in there client application.
* This will likely include search parameters to use on search calls.
1. SEARCH (1)
* Search on PractitionerRole and/or HealthcareService (and related resources) can be done on PD FHIR Server.
* Available search parameters are defined in Quick Start section of each profile which may be combined as the client application supports.
* For example search by active status, secure messaging support, payload support and provider number.
```
GET https://sqlonfhir-aupd.azurewebsites.net/fhir/PractitionerRole?active=true&identifier=http://ns.electronichealth.net.au/id/medicare-provider-number|2426621B&endpoint.connection-type=http://hl7.org.au/fhir/CodeSystem/smd-interfaces|http://ns.electronichealth.net.au/smd/intf/SealedMessageDelivery/TLS/2010&endpoint.payload-type=http://hl7.org.au/fhir/CodeSystem/endpoint-payload-type|http://ns.hl7.org.au/hl7v2/profiles/HL7AU-OO-REF-SIMPLIFIED-201706-L1&_include=PractitionerRole:endpoint&_include=PractitionerRole:location&_include=PractitionerRole:organization&_include=PractitionerRole:practitioner
```
* For example search by active status, secure messaging support, payload support and practitioner family name
```
GET https://sqlonfhir-aupd.azurewebsites.net/fhir/PractitionerRole?active=true&practitioner.family=Smith&endpoint.connection-type=http://hl7.org.au/fhir/CodeSystem/smd-interfaces|http://ns.electronichealth.net.au/smd/intf/SealedMessageDelivery/TLS/2010&endpoint.payload-type=http://hl7.org.au/fhir/CodeSystem/endpoint-payload-type|http://ns.hl7.org.au/hl7v2/profiles/HL7AU-OO-REF-SIMPLIFIED-201706-L1&_include=PractitionerRole:endpoint&_include=PractitionerRole:location&_include=PractitionerRole:organization&_include=PractitionerRole:practitioner
```
* For example search by active status, secure messaging support, payload support and individual specialty in postcode
```
GET https://sqlonfhir-aupd.azurewebsites.net/fhir/PractitionerRole?active=true&location.address-postalcode=3010&specialty=http://snomed.info/sct|17561000&endpoint.connection-type=http://hl7.org.au/fhir/CodeSystem/smd-interfaces|http://ns.electronichealth.net.au/smd/intf/SealedMessageDelivery/TLS/2010&endpoint.payload-type=http://hl7.org.au/fhir/CodeSystem/endpoint-payload-type|http://ns.hl7.org.au/hl7v2/profiles/HL7AU-OO-REF-SIMPLIFIED-201706-L1&_include=PractitionerRole:endpoint&_include=PractitionerRole:location&_include=PractitionerRole:organization&_include=PractitionerRole:practitioner
```
* Can perform an independent Endpoint lookup based on results or a direct lookup as below.
* Example lookup endpoint directly by the secure messaging target identifier directly - vendor or other target (perhaps stored in local directory)
```
http://sqlonfhir-aupd.azurewebsites.net/fhir/Endpoint?status=active&identifier=http://ns.electronichealth.net.au/smd/target|http://ns.argusdca.com.au/smd/id/hostname/ACC5408570000002&connection-type=http://hl7.org.au/fhir/CodeSystem/smd-interfaces|http://ns.electronichealth.net.au/smd/intf/SealedMessageDelivery/TLS/2010payload-type=http://hl7.org.au/fhir/CodeSystem/endpoint-payload-type|http://ns.hl7.org.au/hl7v2/profiles/HL7AU-OO-REF-SIMPLIFIED-201706-L1
```
1. SEARCH RESPONSE (1)
* A FHIR Bundle (searchset) is returned as the search result.
* [Example a PractitionerRole search response](Bundle-search1.html) with one PractitionerRole and included resources returned.
* [Example a HealthcareService search response](Bundle-search2.html) with one HealthcareService and included resources returned. 
* Depending on search made on PD FHIR Server this will likely contain details:
  * PractitionerRole, Practitioner, Location, Organization, Endpoint.
  * HealthcareService, Location, Organization, Endpoint.
1. USER SELECT
* Details of the results received are presented to the user.
* The user can select the desired receiver as needed.
1. GENERATE HL7 V2 REF/MDM
* The HL7 V2 payload compliant payload need to be generated.
* Utilise Endpoint result content for generating HL7 V2 content.
  * Endpoint au-receivingfacility extension (HL7 V2 Receiving Facility)
  * Endpoint au-receivingapplication extension (HL7 V2 Receiving Application)
* Use the [Australian Diagnostics and Referral Messaging](https://confluence.hl7australia.com/display/OOADRM20181/HL7AUSD-STD-OO-ADRM-2018.1) guidance for HL7 V2 formatting:
  * Fill HL7 V2 MSH-4, MSH-6 content as per [Australian Diagnostics and Referral Messaging - Facility/Organisational level addressing](https://confluence.hl7australia.com/display/OOADRM20181/Appendix+8+Simplified+REF+profile#Appendix8SimplifiedREFprofile-A8.12.1Facility/Organisationalleveladdressing).
  * Fill HL7 V2 PRD-1, PRD-2, PRD-3, PRD-5, PRD-7 content as per [Australian Diagnostics and Referral Messaging - Intended Provider/Individual recipient level addressing](https://confluence.hl7australia.com/display/OOADRM20181/Appendix+8+Simplified+REF+profile#Appendix8SimplifiedREFprofile-A8.12.2IntendedProvider/Individualrecipientleveladdressing).
  * Fill HL7 V2 MSH-3, MSH-5 content as per [Australian Diagnostics and Referral Messaging - Application level addressing](https://confluence.hl7australia.com/display/OOADRM20181/Appendix+8+Simplified+REF+profile#Appendix8SimplifiedREFprofile-A8.12.3Applicationleveladdressing).
1. SEND HL7 V2 REF/MDM 
* Drop outbound HL7 V2 REF/MDM file or send via local SM CLIENT API.
1. SEARCH (2) 
* For independent HL7 V2 sender processing (no Endpoint knowledege) can lookup Endpoint details via search by Receiving Facility.
* Examples - lookup Endpoint by HL7 V2 content using [AU PD search parameter extensions](searchparams.html) for delivery via secure messaging.
```
GET https://jdfhir.test.medical-objects.com.au/rest/fhir/Endpoint?status=active&au-receivingfacility-namespace-id=8003623233355378&au-receivingfacility-universal-id=1.2.36.1.2001.1003.0.8003623233355378&au-receivingfacility-universal-id-type=ISO&connection-type=http://hl7.org.au/fhir/CodeSystem/smd-interfaces|http://ns.electronichealth.net.au/smd/intf/SealedMessageDelivery/TLS/2010&payload-type=http://hl7.org.au/fhir/CodeSystem/endpoint-payload-type|http://ns.electronichealth.net.au/ack/sc/deliver/hl7Ack/2012 
```
```
GET http://sqlonfhir-aupd.azurewebsites.net/fhir/Endpoint?status=active&au-receivingfacility-namespace-id=CIB&au-receivingfacility-universal-id=877F9695-1298-4E6A-B432-0FDD46AD80B8&au-receivingfacility-universal-id-type=GUID&connection-type=http://hl7.org.au/fhir/CodeSystem/smd-interfaces|http://ns.electronichealth.net.au/smd/intf/SealedMessageDelivery/TLS/2010&payload-type=http://hl7.org.au/fhir/CodeSystem/endpoint-payload-type|http://ns.electronichealth.net.au/ack/sc/deliver/hl7Ack/2012
```
1. SEARCH RESPONSE (2)
* A FHIR Bundle (searchset) is returned with Endpoint details needed to deliver HL7 V2 REF/MDM
* [Example an Endpoint search response](Bundle-search3.html) with one Endpoint resource returned.
1. COMPOSE SECURE MESSAGE (1)
* Use details in the Endpoint result to compose standard SMD messages [AS 5552—2013 — E-Health Secure Message Delivery](http://infostore.saiglobal.com/store/Details.aspx?ProductID=1696543).
* Utilise Endpoint result content for composing message including:
  * Endpoint.identifier (Secure Messaging Target Identifier) - destination reference (to SMD receiverOrganisation element).
  * Endpoint encryption-certificate-pem-x509 extension (PEM X509 Certificate) - encrypting certificate (for SMD encryptedPayload production).
  * Endpoint.payloadType - type of message payload (to SMD serviceCategory element).
  * Endpoint.contentType - method of interfacing (to SMD serviceInterface element).
1. DELIVER (1)
* Use details in the Endpoint result to deliver secure messages [AS 5552—2013 — E-Health Secure Message Delivery](http://infostore.saiglobal.com/store/Details.aspx?ProductID=1696543)
* Utilise Endpoint result content for composing message including:
  * Endpoint.address - URL endpoint addressing.
1. RETRIEVE (1)
* Retrieve secure messages as per standard [AS 5552—2013 — E-Health Secure Message Delivery](http://infostore.saiglobal.com/store/Details.aspx?ProductID=1696543)
1. IMPORT HL7 V2 REF/MDM
* Import HL7 V2 REF/MDM for PMS/CIS application level processing (accept/reject).
1. SEARCH (3)
* For independent HL7 V2 receiver processing can use the inbound HL7 V2 content (MSH Sending Facility) to perform a lookup to obtain path for HL7 V2 ACK message delivery
* Examples - lookup Endpoint by HL7 V2 content using [AU PD search parameter extensions](searchparams.html) for ACK delivery via secure messaging
```
GET https://jdfhir.test.medical-objects.com.au/rest/fhir/Endpoint?status=active&au-receivingfacility-namespace-id=8003623233355378&au-receivingfacility-universal-id=1.2.36.1.2001.1003.0.8003623233355378&au-receivingfacility-universal-id-type=ISO&connection-type=http://hl7.org.au/fhir/CodeSystem/smd-interfaces|http://ns.electronichealth.net.au/smd/intf/SealedMessageDelivery/TLS/2010&payload-type=http://hl7.org.au/fhir/CodeSystem/endpoint-payload-type|http://ns.electronichealth.net.au/ack/sc/deliver/hl7Ack/2012 
```
```
GET http://sqlonfhir-aupd.azurewebsites.net/fhir/Endpoint?status=active&au-receivingfacility-namespace-id=CIB&au-receivingfacility-universal-id=877F9695-1298-4E6A-B432-0FDD46AD80B8&au-receivingfacility-universal-id-type=GUID&connection-type=http://hl7.org.au/fhir/CodeSystem/smd-interfaces|http://ns.electronichealth.net.au/smd/intf/SealedMessageDelivery/TLS/2010&payload-type=http://hl7.org.au/fhir/CodeSystem/endpoint-payload-type|http://ns.electronichealth.net.au/ack/sc/deliver/hl7Ack/2012
```
1. SEARCH RESPONSE (3)
* A FHIR Bundle (searchset) is returned with Endpoint details needed to deliver ACK.
* [Example an Endpoint search response](Bundle-search3.html) with one Endpoint resource returned.
* Use information to format the HL7 V2 ACK message.
1. GENERATE HL7 V2ACK
* Use same method to format HL7 V2 ACK as GENERATE HL7 V2 REF/MDM.
1. SEND HL7 V2 ACK
* Drop outbound HL7 V2 ACK file or send via local SM CLIENT API.
1. SEARCH (4)
* For independent HL7 V2 ACK send processing can use the outbound HL7 V2 content (MSH Receiving Facility) to perform a lookup to obtain path for HL7 V2 ACK message delivery
* Examples - lookup Endpoint by HL7 V2 content using [AU PD search parameter extensions](searchparams.html) for ACK delivery via secure messaging
```
GET https://jdfhir.test.medical-objects.com.au/rest/fhir/Endpoint?status=active&au-receivingfacility-namespace-id=8003623233355378&au-receivingfacility-universal-id=1.2.36.1.2001.1003.0.8003623233355378&au-receivingfacility-universal-id-type=ISO&connection-type=http://hl7.org.au/fhir/CodeSystem/smd-interfaces|http://ns.electronichealth.net.au/smd/intf/SealedMessageDelivery/TLS/2010&payload-type=http://hl7.org.au/fhir/CodeSystem/endpoint-payload-type|http://ns.electronichealth.net.au/ack/sc/deliver/hl7Ack/2012 
```
```
GET http://sqlonfhir-aupd.azurewebsites.net/fhir/Endpoint?status=active&au-receivingfacility-namespace-id=CIB&au-receivingfacility-universal-id=877F9695-1298-4E6A-B432-0FDD46AD80B8&au-receivingfacility-universal-id-type=GUID&connection-type=http://hl7.org.au/fhir/CodeSystem/smd-interfaces|http://ns.electronichealth.net.au/smd/intf/SealedMessageDelivery/TLS/2010&payload-type=http://hl7.org.au/fhir/CodeSystem/endpoint-payload-type|http://ns.electronichealth.net.au/ack/sc/deliver/hl7Ack/2012
```
* Example - if known lookup endpoint by the secure messaging target identifier - vendor or other target for ACK message delivery via secure messaging
```
http://sqlonfhir-aupd.azurewebsites.net/fhir/Endpoint?status=active&identifier=http://ns.electronichealth.net.au/smd/target|http://ns.argusdca.com.au/smd/id/hostname/ACC5408570000002&connection-type=http://hl7.org.au/fhir/CodeSystem/smd-interfaces|http://ns.electronichealth.net.au/smd/intf/SealedMessageDelivery/TLS/2010&payload-type=http://hl7.org.au/fhir/CodeSystem/endpoint-payload-type|http://ns.electronichealth.net.au/ack/sc/deliver/hl7Ack/2012
```
1. SEARCH RESPONSE (4)
* A FHIR Bundle (searchset) is returned with Endpoint details needed to deliver ACK
* [Example an Endpoint search response](Bundle-search3.html) with one Endpoint resource returned.
* Use information to compose a secure message containing ACK.
1. COMPOSE SECURE MESSAGE (2)
* Use same method to compose ACK secure message as COMPOSE SECURE MESSAGE (1).
1. DELIVER (2)
* Use same method to compose ACK secure message as DELIVER (1).
1. RETRIEVE (2)
* Standard retrieval of secure message HL7 V2 ACK response as per RETRIEVE (1).
1. IMPORT HL7 V2 ACK
* Import HL7 V2 ACK for PMS/CIS application processing.

