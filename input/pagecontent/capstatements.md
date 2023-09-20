### Scope of Resource Profiles

A subset of FHIR resource types are used in this specification. These are profiled to ensure minimal elements needed for secure messaging are supported by the directory service.

* **Location** is physical location, where service delivery occurs.
* **Organization** is an entity providing practitioner roles and/or healthcare service.
* **PractitionerRole** (provider) is a practitioner acting roles at one location for one organisation.
* **Practitioner** details of an individual that maybe acting in a practitioner role.
* **HealthcareService** describes the services delivered at one location for one organisation.


### Service Interactions Overview

A subset of FHIR possible interactions are required for this specification. This applies to core directory services offered by a directory 
provider and also federated services combining results from multiple directory service sources.

----------
#### Instance Level Interactions	

* **[read](http://hl7.org/fhir/R4/http.html#read)** PractitionerRole, Practitioner, HealthcareService, Location, Organization, Endpoint
* **vread** Not Required 
* **update** Not Required
* **patch** Not Required
* **delete** Not Required
* **history** Not Required

----------
#### Type Level Interactions

* **create** Not Required
* **[search](http://hl7.org/fhir/R4/http.html#search)** PractitionerRole, Practitioner, HealthcareService, Location, Organization, Endpoint
* **history** Not Required

----------
#### Whole System Interactions

* **capabilities** Required
* **batch/transaction** Not Required
* **history** Not Required
* **search** Not required

----------
#### Type Level Search

Expected scope of search/include support:

|Resource Type|Profile|MUST Support Search Parameters|SHOULD Support Search Parameters|Includes|
|---|---|---|---|---|
|[Organization](StructureDefinition-au-pd-organisation.html#notes)| Australian Organisation Directory Entry | active, name | identifier ||
|[Practitioner](StructureDefinition-au-pd-practitioner.html#notes)| Australian Practitioner Directory Entry | active | identifier, family, given, name ||
|[PractitionerRole](StructureDefinition-au-pd-practitionerrole.html#notes)| Australian PractitionerRole Directory Entry | active, role, specialty, identifier, healthcareService, location.address-city, location.address-postalcode, location.address-state, organization.identifier, practitioner.family, practitioner.given, practitioner.name, practitioner.identifier, endpoint.connection-type, endpoint.payload-type | location.near, location.near-distance | location, organization, endpoint, practitioner, healthcareService |
|[HealthcareService](StructureDefinition-au-pd-healthcareservice.html#notes)| Australian HealthcareService Directory Entry | active, identifier, name, service-type, specialty, location.address-city, location.address-postalcode, location.address-state, organization.name, organization.identifier, endpoint.connection-type, endpoint.payload-type | location.near, location.near-distance | location, organization, endpoint |
|[Location](StructureDefinition-au-pd-location.html#notes)| Australian Location Directory Entry | status | address-city, address-postalcode, address-state, near, near-distance ||
|[Endpoint](StructureDefinition-au-pd-sm-endpoint.html#notes)| Australian Endpoint Directory Entry | status, identifier, connection-type, payload-type, au-receivingfacility-namespace-id, au-receivingfacility-universal-id, au-receivingfacility-universal-id-type |||
{:.grid}

Expected adherence to search parameters:
* FHIR [search](http://hl7.org/fhir/R4/http.html#search) _include parameter MUST be supported to the extent described in above table.
* FHIR [search](http://hl7.org/fhir/R4/http.html#search) _count parameter MUST be honoured by directory service provider to limit the result count as requested by client consumers.

Expected Bundle result support and behaviour:
* Bundle.link (paging) MUST be supported by directory service provider for a client to be sure it is obtaining a complete result set.
* Bundle.link (paging) with IANA link relation 'next'[<sup>[1]</sup>](http://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1) MUST be supported by client consuming system to allow next page retrieval when available.



