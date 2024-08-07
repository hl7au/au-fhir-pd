### Release TBD

- Expected Publication date: ??
- Expected Publication status: Working Standard
- Based on FHIR version: 4.0.1

The changes in this update are in progress and yet to be balloted.

To help implementers, only the more significant changes are listed here.

#### Changes in this version
<ul>
    <li><a href="variance.html">AU Variance Statement</a> page added as required HL7 AU IG Content</li> 
    <li><a href="license.html">Licence and Legal</a> page added as required HL7 AU IG Content</li> 
    <li>Changed HL7 AU implementation guide publication structure and format to better align to current HL7 practices.</li>
    <li>Updated dependency on au-fhir-base version '4.1.0', from version '4.1.0-ballot'. Refer to <a href="http://hl7.org.au/fhir/4.1.0/changes.html#release-410">au-fhir-base detailed change log</a>. The specific changes impacting this IG are:
        <ul>
            <li>Changed <a href="http://hl7.org.au/fhir/4.1.0/CodeSystem-au-location-physical-type.html">Location Type (Physical) AU</a> to deprecate concept 'vi'. This code has been deprecated as it has been replaced by an equivalent term provided by HL7 international.</li>
        </ul>
    </li>
    <li>Profile: <a href="StructureDefinition-au-pd-vdi.html">AU Vendor Directory Identifier</a> - <strong>new</strong>
        <ul>
            <li>refactored from the in-line Identifier definitions in <a href="StructureDefinition-au-pd-healthcareservice.html">AU PD Healthcare Service</a> and <a href="StructureDefinition-au-pd-practitionerrole.html">AU PD Practitioner Role</a>, thereby amalgamating the respective definitions into a single datatype profile</li>
            <li>constraints follow other HL7AU Base IG Identifier profiles, such as using <code>patternCodeableConcept</code> for <code>type.coding</code>, and not mandating <code>type.text</code></li>
        </ul>
    </li>
    <li>Profile: <a href="StructureDefinition-au-pd-smdtargetidentifier.html">PD Secure Messaging Delivery Target Identifier</a> - <strong>new</strong>
        <ul>
            <li>refactored from the in-line Identifier definitions in <a href="StructureDefinition-au-pd-sm-endpoint.html">AU PD Secure Messaging Endpoint</a></li>
        </ul>
    </li>
    <li>Profile: <a href="StructureDefinition-au-pd-healthcareservice.html">AU PD Healthcare Service</a>
        <ul>
            <li>based on FHIR version 4.0.1 instead of 4.0.0</li>
            <li>mandated at least one of the known and defined Identifier types (invariant <code>au-pd-hs-01</code>), i.e. <a href="https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-hpio.html">AU HPI-O</a>, <a href="https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-residentialagedcareserviceidentifier.html">AU Residential Aged Care Service Identifier</a> or <a href="StructureDefinition-au-pd-vdi.html">AU Vendor Directory Identifier</a> - <strong>breaking change</strong></li>
            <li>removed in-line identifier definitions for <code>pdvendor</code> and instead reference the new <a href="StructureDefinition-au-pd-vdi.html">AU Vendor Directory Identifier</a> profile. The impact of this change on representations of vendor directory identifiers is that:
                <ul>
                    <li><code>type.coding.system</code> value is now <code>http://terminology.hl7.org.au/CodeSystem/v2-0203</code> (instead of <code>http://terminology.hl7.org/CodeSystem/v2-0203</code>) - <strong>breaking change</strong></li>
                    <li><code>type.text</code> value is no longer mandatory</li>
                </ul>            
            </li>
            <li>the identifier slice discriminator has been updated to be <code>pattern:type</code></li>
            <li>the inheritance from the updated AU Base HealthcareService includes explicit Identifier types for all of the applicable organisation identifiers (i.e. HPI-O and AU Residential Aged Care Service Identifier)</li>
            <li>the inheritance from the updated AU Base HealthcareService allows the <a href="http://hl7.org.au/fhir/4.1.0/StructureDefinition-au-assigningauthority.html">HL7 V2 Assigning Authority Identifier extension</a> on all Identifier slices</li>
            <li>the inheritance from the updated AU Base HealthcareService introduces the <a href="http://hl7.org.au/fhir/4.1.0/StructureDefinition-identifier-routability.html">Identifier Routability Identifier extension</a> on all Identifier slices</li>
            <li>HealthcareService.endpoint must only be a reference to an <a href="StructureDefinition-au-pd-sm-endpoint.html">AU PD Secure Messaging Endpoint</a></li>
            <li>HealthcareService.availableTime.availableStartTime and HealthcareService.availableTime.availableStartTime both include the <a href="http://hl7.org.au/fhir/4.1.0/StructureDefinition-au-timezone.html">Australian Time Zone extension</a> with its required binding to the <a href="http://hl7.org.au/fhir/4.1.0/ValueSet-au-timezone.html">AU Time Zone ValueSet</a></li>
        </ul>
    </li>
    <li>Profile: <a href="StructureDefinition-au-pd-location.html">AU PD Location</a>
        <ul>
            <li>based on FHIR version 4.0.1 instead of 4.0.0</li>
            <li>at least one of the known and defined Identifier types should be present (invariant <code>au-pd-loc-01</code>), i.e. <a href="https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-locationspecificpracticenumber.html">AU Location Specific Practice Number</a> or <a href="https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-natasitenumber.html">AU NATA Site Number</a></li>
            <li>Location.identifier is now must support = true</li>
            <li>the inheritance from the updated AU Base Location includes <a href="http://hl7.org.au/fhir/4.1.0/StructureDefinition-au-address.html">AustralianAddress</a> as an allowed Location.address type </li>
            <li>the inheritance from the updated AU Base Location includes <a href="http://hl7.org.au/fhir/4.1.0/StructureDefinition-au-locationspecificpracticenumber.html">AU Location Specific Practice Number</a> as an allowed Location.identifier type </li>
        </ul>
    </li>
    <li>Profile: <a href="StructureDefinition-au-pd-organisation.html">AU PD Organisation</a>
        <ul>
            <li>based on FHIR version 4.0.1 instead of 4.0.0</li>
            <li>mandated at least one of the known and defined Identifier types (invariant <code>au-pd-org-01</code>), i.e. <a href="https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-hpio.html">AU HPI-O</a>, <a href="https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-paioidentifier.html">AU PAI-O Identifier</a>, <a href="https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-cspregistrationnumber.html">AU CSP Registration Number</a>, <a href="https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-australianbusinessnumber.html">AU Australian Business Number</a>, <a href="https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-australiancompanynumber.html">AU Australian Company Number</a>, <a href="https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-australianregistredbodynumber.html">AU Australian Registered Body Number</a>, <a href="https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-nataaccreditationnumber.html">AU NATA Accreditation Number</a> or <a href="https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-pharmacyapprovalnumber.html">AU Pharmacy Approval Number</a>
 - <strong>breaking change</strong></li>
            <li>the slicing discriminator on Organization.identifier is now <code>pattern:type</code></li>
            <li>Organization.identifier is now must support = true</li>
            <li>the inheritance from the updated AU Base Organisation includes explicit Identifier types for all of the applicable organisation identifiers (i.e. HPI-O, ACN, ABN etc)</li>       
        </ul>
    </li>
    <li>Profile: <a href="StructureDefinition-au-pd-practitioner.html">AU PD Practitioner</a>
        <ul>
            <li>based on FHIR version 4.0.1 instead of 4.0.0</li>
            <li>mandated at least one of the known and defined Identifier types (invariant <code>au-pd-prac-01</code>), i.e. <a href="https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-hpii.html">AU HPI-I</a>, <a href="https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-pbsprescribernumber.html">AU PBS Prescriber Number</a>, <a href="https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-careagencyemployeeidentifier.html">AU Care Agency Employee Identifier</a> or<a href="https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-ahpraregistrationnumber.html">AU Ahpra Registration Number</a> - <strong>breaking change</strong></li>
            <li>the Practitioner.identifier element has been updated to have slicing discriminator of <code>pattern:type</code>, must support = true and the HPI-I identifier datatype profile properly referenced</li>
            <li>the inheritance from the updated AU Base Practitioner includes explicit Identifier types for all of the applicable practitioner identifiers (i.e. HPI-I, PBS prescriber number etc)</li>
        </ul>
    </li>
    <li>Profile: <a href="StructureDefinition-au-pd-practitionerrole.html">AU PD Practitioner Role</a>
        <ul>
            <li>based on FHIR version 4.0.1 instead of 4.0.0</li>
            <li>mandated at least one of the known and defined Identifier types (invariant <code>au-pd-pracrole-01</code>), i.e. <a href="https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-medicareprovidernumber.html">AU Medicare Provider Number</a>, <a href="https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-nationalprovideridentifieratorganisation.html">AU National Provider Identifier At Organisation</a>, <a href="https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-employeenumber.html">AU Employee Number</a> or <a href="StructureDefinition-au-pd-vdi.html">AU Vendor Directory Identifier</a> - <strong>breaking change</strong></li>
            <li>removed in-line identifier definitions for <code>vendorAssignedDirectoryIdentifier</code> and instead reference the new <a href="StructureDefinition-au-pd-vdi.html">AU Vendor Directory Identifier</a> profile. The impact of this change on representations of vendor directory identifiers is that:
                <ul>
                    <li><code>type</code> value is now mandatory - <strong>breaking change</strong></li>
                    <li><code>type.coding.system</code> is now mandatory with a fixed value of <code>http://terminology.hl7.org.au/CodeSystem/v2-0203</code> - <strong>breaking change</strong></li>
                    <li><code>type.coding.code</code> is now mandatory - <strong>breaking change</strong></li>
                    <li><code>type.text</code> value is no longer mandatory</li>
                    <li><code>system</code> is now mandatory - <strong>breaking change</strong></li>
                    <li><code>value</code> is now mandatory - <strong>breaking change</strong></li>
                </ul>            
            </li>
            <li>the identifier slice discriminator has been updated to be <code>pattern:type</code></li>
            <li>the inheritance from the updated AU Base PractitionerRole includes explicit Identifier types for all of the applicable practitioner role identifiers (i.e. Medicare provider number, National Provider Identifier At Organisation etc)</li>
            <li>the inheritance from the updated AU Base PractitionerRole allows the <a href="http://hl7.org.au/fhir/4.1.0/StructureDefinition-au-assigningauthority.html">HL7 V2 Assigning Authority Identifier extension</a> on all Identifier slices</li>
            <li>the inheritance from the updated AU Base PractitionerRole introduces the <a href="http://hl7.org.au/fhir/4.1.0/StructureDefinition-identifier-routability.html">Identifier Routability Identifier extension</a> on all Identifier slices</li>
            <li>PractitionerRole.location - exactly one must be present</li>
            <li>PractitionerRole.availableTime.availableStartTime and PractitionerRole.availableTime.availableStartTime both include the <a href="http://hl7.org.au/fhir/4.1.0/StructureDefinition-au-timezone.html">Australian Time Zone extension</a> with its required binding to the <a href="http://hl7.org.au/fhir/4.1.0/ValueSet-au-timezone.html">AU Time Zone ValueSet</a></li>
            <li>PractitionerRole.endpoint must only be a reference to an <a href="StructureDefinition-au-pd-sm-endpoint.html">AU PD Secure Messaging Endpoint</a></li>
        </ul>
    </li>
    <li>Profile: <a href="StructureDefinition-au-pd-sm-endpoint.html">AU PD Secure Messaging Endpoint</a>
        <ul>
            <li>based on FHIR version 4.0.1 instead of 4.0.0</li>
            <li>mandated at least one of the known and defined Identifier types (invariant <code>au-pd-ep-01</code>), i.e. <a href="StructureDefinition-au-pd-smdtargetidentifier.html">PD Secure Messaging Delivery Target Identifier</a> - <strong>breaking change</strong></li>
            <li>removed in-line identifier definitions for <code>smdtarget</code> and instead references the new <a href="StructureDefinition-au-pd-smdtargetidentifier.html">PD Secure Messaging Delivery Target Identifier</a> profile. This update does not involve any constraint changes.</li>
            <li>the identifier slice discriminator has been updated to be <code>pattern:type</code></li>
            <li>Endpoint.identifier is now must support = true</li>
        </ul>
    </li>
    <li>ValueSet: <a href="ValueSet-service-interfaces.html">Australian Service Interfaces</a>
        <ul>
            <li>the compose statement was updated to include the core specification Endpoint Connection Type valueSet</li>
        </ul>
    </li>
    <li>CodeSystem: <a href="CodeSystem-endpoint-payload-type.html">Australian Endpoint Payload Types</a>
        <ul>
            <li>4 concepts were added for HL7 v2.4 ORU, ORM, ORR and ACK messages</li>
            <li>concepts no longer have a nested hierarchy</li>
        </ul>
    </li>
    <li>Examples:
        <ul>
            <li><a href="HealthcareService-example0.html">healthcareservice-example0.xml</a>: added a snippet of the AU Vendor Directory Identifier</li>
            <li><a href="PractitionerRole-example0.html">practitionerrole-example0.xml</a>: corrected wrong system value for Medicare Provider Number identifier</li>
        </ul>
    </li>
    <li>Guidance page
        <ul>
            <li>guidance was updated</li>
        </ul>
    </li>
    <li>SearchParameter page
        <ul>
            <li>the 3 listed SearchParameters in v2.0 are no longer present in v2.1.0</li>
        </ul>
    </li>
    <li>Capability Statement page
        <ul>
            <li>the table 'Type Level Search' has introduced a differentiation of search parameters for must support vs should support</li>
        </ul>
    </li>
    <li>Federation of Directory Services page
        <ul>
            <li>requirement `FED04 Paging of directory service results` now includes explicit support for servers</li>
        </ul>
    </li>
</ul>


### Release 2.0.1
- Publication date: 2019-08-15
- Publication status: PD 2 on FHIR R4
- Based on FHIR version: 4.0.0

### Release 1.0.0
- Publication date: 2019-05-14
- Publication status: PD 1 on FHIR STU3 (no ballot)
- Based on FHIR version: 3.0.1

### Release 0.9.0
- Publication date: 2019-02-20
- Publication status: February 2019 QA Preview
- Based on FHIR version: 3.0.1

### Release 0.5.0
- Publication date: 2018-09-12
- Publication status: October 2018 Build
- Based on FHIR version: 3.0.1

### Release 0.4.0
- Publication date: 2018-03-07
- Publication status: March 2018 Build
- Based on FHIR version: 3.0.1

### Release 0.3.0
- Publication date: 2017-11-24
- Publication status: Dec 2017 Build
- Based on FHIR version: 3.0.1

### Release 0.2.0
- Publication date: 2017-09-20
- Publication status: September 2017 Build
- Based on FHIR version: 3.0.1

### Release 0.1.0
- Publication date: 2017-07-09
- Publication status: July 2017 build. First official published version of this implementation guide.
- Based on FHIR version: 3.0.1
