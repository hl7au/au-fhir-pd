# {{ page.title }}

## Scope of Resource Profiles

* **Location** is physical location, where service delivery occurs.
* **Organization** is an entity providing practitioner roles and/or healthcare service.
* **PractitionerRole** (provider) is a practitioner acting in a role at one location for one organisation.
* **Practitioner** is an individual that maybe acting in a practitioner role.
* **HealthcareService** describes the services delivered at one location for one organisation.


## Interactions Overview

A subset of FHIR possible interactions are required for this profile.

### Instance Level Interactions	
----------

* **[read](http://hl7.org/fhir/STU3/http.html#read)** PractitionerRole, Practitioner, HealthcareService, Location, Organization, Endpoint
* **vread** Not Required 
* **update** Not Required
* **patch** Not Required
* **delete** Not Required
* **history** Not Required

### Type Level Interactions
----------

* **create** Not Required
* **[search](http://hl7.org/fhir/STU3/http.html#search)** PractitionerRole, Practitioner, HealthcareService, Location, Organization, Endpoint
* **history** Not Required

### Whole System Interactions
----------

* **capabilities** Required
* **batch/transaction** Not Required
* **history** Not Required
* **search** Not required


## Type Level Search/Include
Expected scope of search/include support.

|Resource Type|Profile|Search Parameters|Includes|
|---|---|---|---|
|[Organization](/StructureDefinition-au-pd-organisation.html#search)| Australian Organisation Directory Entry | name, identifier ||
|[Practitioner](/StructureDefinition-au-pd-practitioner.html#search)| Australian Practitioner Directory Entry | identifier, family, given, name ||
|[PractitionerRole](/StructureDefinition-au-pd-practitionerrole.html#search)| Australian PractitionerRole Directory Entry | identifier, location.address-city, location.address-postalcode, location.address-state, location.near, location.near-distance, organization.identiifer, practitioner.name, practitioner.family, practitioner.given | location, organization, endpoint |
|[HealthcareService](/StructureDefinition-au-pd-healthcareservice.html#search)| Australian HealthcareService Directory Entry | name, location.address-city, location.address-postalcode, location.address-state, location.near, location.near-distance, organization.identiifer | location, organization, endpoint |
|[Location](/StructureDefinition-au-pd-location.html#search)| Australian Location Directory Entry | address-city, address-postalcode, address-state, near, near-distance ||
|[Endpoint](/StructureDefinition-au-pd-sm-endpoint.html#search)| Australian Endpoint Directory Entry | connection-type, payload-type, au-receivingfacility-namespace-id, au-receivingfacility-universal-id, au-receivingfacility-universal-id-type ||
{:.grid}
