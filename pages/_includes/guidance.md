## {{ page.title }}
{:.no_toc}

<!-- TOC -->

* Do not remove this line (it will not be displayed)
{:toc}

Description of usage for discussion.

## Concept Descriptions

* **Location** is physical location, where service delivery occurs.
* **Organization** is logical entity which may offer multiple **HealthcareService**s each associated with a location.
* **PractitionerRole** (provider) is a **Practitioner** acting in a role at one location (for Australian Provider).
* **Practitioner** is an individual that may be in multiple provider roles, associated with an organistion and a location.
* **HealthcareService** describes the services delivered at a location by an organisation.


## Interactions Description

### Server Requirements

#### Individual Provider (PractitionerRole)
* Search for an indvidual provider by resource id
* Search for an individual provider by practitioner names
* Search for an individual provider by specialty
* Search for an individual provider by practitioner HPI-I identifier
* Search for an individual provider by Provider Number identifier
* Search for an individual provider by managing organisation HPI-O identifier
* Search for an individual provider by location address
* Search for an individual provider with specific secure messaging receiver capability
* Include managing organisation
* Include service location
* Include endpoints
* Query supports AND (i.e. one or more searches)



#### Healthcare Service (HealthcareService)
* Search for a healthcare service by resource id
* Search for a healthcare service by name
* Search for a healthcare service by service type
* Search for a healthcare service by managing organisation HPI-O
* Search for a healthcare service by location address
* Search for a healthcare service with specific secure messaging receiver capability
* Include managing organisation
* Include service location
* Include endpoints
* Query supports AND (i.e. one or more searches)



#### Basic Retrieval
* Get healthcare service (HealthcareService)
* Get individual provider (PractitionerRole)
* Get organisation (Organization)
* Get location (Location)
* Get practitioner (Practitioner)
* Get endpoint (Endpoint)





