## {{ page.title }}
{:.no_toc}

<!-- TOC -->

* Do not remove this line (it will not be displayed)
{:toc}

Description of usage for discussion.

## Concept Descriptions

* **Location** is physical location, where service delivery occurs.
* **Organization** is an entity providing practitioner roles and/or healthcare service.
* **PractitionerRole** (provider) is a practitioner acting in a role at one location for one organisation.
* **Practitioner** is an individual that maybe acting in a practitioner role.
* **HealthcareService** describes the services delivered at one location for one organisation.

## Interactions

A subset of FHIR interactions are required for this profile.

### Instance Level Interactions	
----------

* **read** PractitionerRole, Practitioner, HealthcareService, Location, Organization, Endpoint
* **vread** Not Required 
* **update** Not Required
* **patch** Not Required
* **delete** Not Required
* **history** Not Required

### Type Level Interactions
----------

* **create** Not Required
* **search** PractitionerRole, Practitioner, HealthcareService, Location, Organization, Endpoint
* **history** Not Required

### Whole System Interactions
----------

* **capabilities** Required
* **batch/transaction** Not Required
* **history** Not Required
* **search** Not required



