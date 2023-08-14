### Introduction
This guide covers capability requirements of FHIR services to implement a set of profiles and support interfaces in an Australian context for the purpose of implementation of provider directory services.

Many of the resource profiles provided here are based on definitions from the [Australian Base Profiles Implementation Guide](http://build.fhir.org/ig/hl7au/au-fhir-base/).

This document is a working specification that is expected to be implemented and tested by FHIR<sup>&reg;&copy;</sup> system producers to enable feedback to improve the content of this guide.

### Scope

#### Information
* **Organisation Directory Entry**: managing organisations
* **Practitioner Directory Entry**: individual practitioners
* **Practitioner Role Directory Entry**: role participants at a location for an organisation
* **Healthcare Service Directory Entry**: services delivered at a location for an organisation
* **Secure Messaging Endpoint Directory Entry**: connection details for secure messaging

#### Interactions
* **Search** allows the selection of relevant entries based on criteria
* **Read** allows the retrieval of a specific entry

#### Patterns of Use
* **Federated Directory** approach to supply responses based on a combination of results from multiple directory service providers
* **Synchronisation** approach to allow service supplied directory entry updates or deletion to be systematically synchronised with a local directory

### Usage

This document is a working specification that may be directly implemented by FHIR<sup>&reg;&copy;</sup> system producers.

Information contained in this document provides a minimal requirement level for use in secure message end point location and addressing. 
To that end it specifies key entities and elements thereof needed for secure message addressing and also needed interface interactions
to achieve basic searchability operations with directories. This common core set of capability of systems enables an agreed technical
profile for searching provider directories to obtain information required for secure message addressing.

FHIR<sup>&reg;&copy;</sup> connectathon events are key to the verification of the guide as being suitable for 
implementation. This implementation guide will be used as the basis for Australian connectathon events.

### How to read this guide

This guide is divided into several pages which are listed at the top of each page in the menu bar.

- [Home](index.html): This page provides the introduction and scope for this guide.
- [Guidance](guidance.html): This page provides guidance on using the profiles defined in this guide.
- [FHIR Artefacts](artifacts.html): These pages provide detailed descriptions and formal definitions for all the FHIR artefacts defined in this guide.
  - [Profiles and Extensions](profiles.html): This set of pages describes the profiles and extensions that are defined in this guide to represent Australian local concepts using FHIR. Each profile page includes a narrative description, guidance, and formal definition. Although the guidance typically focuses on the profiled elements and seeks to provide a ‘how-to’ guide when representing concepts, it may also may focus on un-profiled elements to aid with implementation.
  - [Search Parameters](searchparams.html): This set of pages lists the search parameters defined in this guide for use in AU operations.
  - [Terminology](terminology.html): This set of pages lists the value sets and code systems defined in this guide.
  - [Capability Statements](capstatements.html): This page defines the expected FHIR capabilities of AU PD Servers and Clients.
- [Examples](examples.html): This page lists all the examples used in this guide.
- [Downloads](downloads.html): This page provides links to downloadable artefacts including the AU PD FHIR NPM package.
- [Change Log](changes.html): This page documents the changes across versions of this guide.

### Collaboration
This guide is the product of collaborative work undertaken with participants from:

* Secure Messaging Technical Working Group
* HL7 Australia Working Groups
* Australian Digital Health Agency
* Australian FHIR Implementers Community
* HL7 Australia Members 










