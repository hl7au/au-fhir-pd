# {{ page.title }}
{:.no_toc}

<!-- TOC -->

* Do not remove this line (it will not be displayed)
{:toc}


## Provider Directory Core Entity Relationships

For directory service profiles the PractitonerRole resource has constrained relationships to Location, Organization, and Practitioner resource types.
<div>
<img src="assets/images/erd1.jpg"/>
</div>
<br/>
<br/>

For directory service profiles the HealthcareService resource has constrained relationships to Location, and Organization resource types.
<div>
<img src="assets/images/erd2.jpg"/>
</div>
<br/>
<br/>

## Simplified Provider Directory Sequence for Secure Messaging

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
