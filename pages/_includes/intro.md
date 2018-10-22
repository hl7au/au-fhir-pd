## {{ page.title }}
{:.no_toc}

<!-- TOC -->

* Do not remove this line (it will not be displayed)
{:toc}

## Introduction
This guide covers capability requirements of FHIR services to implement a set of profiles and support interfaces in an Australian context for the purpose of implementation of provider directory services.

Many of the resource profiles provided here are based on definitions from the Australian Base Profiles Implementation Guide.

This document is a working specification that is expected to be implemented and tested by FHIR<sup>&reg;&copy;</sup> system producers to enable feedback to improve the content of this guide.

## Scope

Information
* **Organisation Directory Entry**: managing organisations
* **Practitioner Directory Entry**: individual practitioners
* **Practitioner Role Directory Entry**: role participants at a location for an organisation
* **Healthcare Service Directory Entry**: services delivered at a location for an organization
* **Secure Messaging Endpoint Directory Entry**: connection details for secure messaging

Interactions
* **Search** allows the selection of relevant entries based on criteria
* **Read** allows the retrieval of a specific entry

Patterns of Use
* **Federated Directory** approach to supply responses based on a combination of results from multiple directory service providers
* **Synchronisation** approach to allow service supplied directory entry updates or deletion to be systematically synchronised with a local directory

## Usage

This document is a working specification that may be directly implemented by FHIR<sup>&reg;&copy;</sup> system producers.

Information contained in this document provides a minimal requirement level for use in secure message end point location and addressing. 
To that end it specifies key entities and elements thereof needed for secure message addressing and also needed interface interactions
to achieve basic searchability operations with directories. This common core set of capability of systems enables an agreed technical
profile for searching provider directories to obtain information required for secure message addressing.

FHIR<sup>&reg;&copy;</sup> connectathon events are key to the verification of the guide as being suitable for 
implementation. This implementation guide will be used as the basis for Australian connectathon events.

## Collaboration
This guide is the product of collaborative work undertaken with participants from:

* Secure Messaging Technical Working Group
* HL7 Australia Patient Administration Working Group
* Australian Digital Health Agency
* Australian FHIR Implementers' Community
* HL7 Australia Members 










