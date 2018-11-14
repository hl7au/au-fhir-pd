-----------
**Read: HealthcareService**

Read identified healthcare service resource content.

`GET [base]/HealthcareService/[id]`

*Example:* `GET [base]/HealthcareService/1234`

*Support:*

* MUST support read HealthcareService

*Implementation Notes:*  [[(how to read resource)]

-----------
**Search: Active Status**

Search based on active status of the healthcare service record.

`GET [base]/HealthcareService?active=[status]`

*Example:* `GET [base]/HealthcareService?active=true`

*Support:* MUST support search HealthcareService by active status (true \| false).

*Implementation Notes:* [(how to search by token)]

-----------
**Search: Name**

Search for a healthcare service by name.

`GET [base]/HealthcareService?name=[string]`

*Example:* `GET [base]/HealthcareService?name=southern%20clinic`

*Support:*

* MUST support search by HealthcareService name.

*Implementation Notes:* [(how to search by string)]

-----------
**Search: Organisation Provider of Healthcare Service Name**

Chained search (via Organisation) based on text name.

`GET [base]/HealthcareService?organization.name=[string]`

*Example:* `GET [base]/HealthcareService?organization.name=clinigroup`

*Support:*

* MUST support search by Organization name.

*Implementation Notes:* [(how to search by string)]

-----------
**Search: Healthcare Service offered Specialties**

Search for healthcare service based on specialties offered

`GET [base]/HealthcareService?specialty=[system]|[code]`

*Example:* `GET [base]/HealthcareService?specialty=http://snomed.info/sct|3471000175103`

*Support:*

* MUST support search by HealthcareService specialty offered.

*Implementation Notes:* [(how to search by token)]

-----------
**Search: Organisation provider of Healthcare Service HPI-O**

Chained search (via Organisation) based on identifier token.

`GET [base]/HealthcareService?organization.identifier=[system]|[value]`

*Example:* `GET [base]/HealthcareService?organization.identifier=http://ns.electronichealth.net.au/id/hi/hpio/1.0|8003627500000328`

*Support:*

* MUST support search by HPI-O.

*Implementation Notes:* [(how to search by token)]

-----------
**Search: HPI-O**
Search based on identifier token. Direct HPI-O allocation to the service; may be different than the providing organisation but within the HPI-O hierarchy (networked HPI-O).

`GET [base]/HealthcareService?identifier=[system]|[value]`

*Example:* `GET [base]/HealthcareService?identifier=http://ns.electronichealth.net.au/id/hi/hpio/1.0|8003627500000328`

*Support:*

* MUST support search by HPI-O.

*Implementation Notes:* [(how to search by token)]

-----------
**Search: Location Address Parts**

Chained search (via Location) based on address parts for postcode, suburb, and state.

`GET [base]/HealthcareService?location.address-postalcode=[postcode]`

`GET [base]/HealthcareService?location.address-city=[suburb]`

`GET [base]/HealthcareService?location.address-state=[state]`

*Example:* 

`GET [base]/HealthcareService?location.address-postalcode=3101`

`GET [base]/HealthcareService?location.address-city=Bundaberg`

`GET [base]/HealthcareService?location.address-state=VIC`

*Support:*

* MUST support search PractitionerRole by location address parts address-postalcode, address-city, address-state.
* MUST support basic **param=[string]** search which is case and accent-insensitive search;  field equals or starts with the string value.

*Implementation Notes:* 
[(how to search by token)]

-----------
**Search: Location Distance**

Chained search (via Location) for a location within a nominated distance.

`GET [base]/HealthcareService?location.near=[latitude]:[longitude]&location.near-distance=[prefix][value]|[units-system]|[units]`

*Example:* `GET [base]/HealthcareService?location.near=-83.694810:42.256500&location.near-distance=le10.0|http://unitsofmeasure.org|km`

*Support:*

* SHOULD support search PractitionerRole by location within a distance.
* SHOULD support:
[prefix] fixed 'le' is less than or equal to distance
[value] is a decimal quantity number
[units-system] fixed 'http://unitsofmeasure.org' identifies standard distance units are used
[units] distance units must support 'km' or 'm'

*Implementation Notes:* 
[(how to search by token)] and [(how to search by quantity)]

-----------
**Search: Connection Type (Service Interface)**

Chained search (via Endpoint) based on token for a protocol to be used to connnect to the endpoint.
 
`GET [base]/HealthcareService?endpoint.connection-type=[system]|[code]`

*Example:* `GET [base]/HealthcareService?endpoint.connection-type=http://hl7.org.au/fhir/CodeSystem/smd-interfaces|http://ns.electronichealth.net.au/smd/intf/SealedMessageDelivery/TLS/2010`

*Support:*

* MUST support search by HealthcareService by endpoint connection type.

*Implementation Notes:* [(how to search by token)]

-----------
**Search: Payload Type (Service Category)**

Chained search (via Endpoint) based on token for the type of content supported by the endpoint.
 
`GET [base]/HealthcareService?endpoint.payload-type=[system]|[code]`

*Example:* `GET [base]/HealthcareService?endpoint.payload-type=http://hl7.org.au/fhir/CodeSystem/smd-interfaces|http://ns.hl7.org.au/hl7v2/profiles/HL7AU-OO-REF-SIMPLIFIED-201706`

*Support:*

* MUST support search HealthcareService by endpoint payload type.

*Implementation Notes:* [(how to search by token)]

-----------
**Search: Active Practitioner Role by Identifier Exists**

Reverse chained search<sup>[1](http://hl7.org/fhir/stu3/search.html#has)</sup> based on token to ensure practitioner role with specific identifier is active and is referring to this HealthcareService.
 
`GET [base]/HealthcareService?_has:PractitionerRole:service:identifier=[system]|[value]&_has:PractitionerRole:service:active=[status]`

*Example:* `GET [base]/HealthcareService?_has:PractitionerRole:service:identifier=http://ns.electronichealth.net.au/id/medicare-provider-number|444455AA&_has:PractitionerRole:service:active=true`

*Support:*

* MAY support search HealthcareService for existence of active practitioner role with specific identifier.

*Implementation Notes:* [(how to search by token)], [(how to check for existence of referring resource)]

-----------
**Search: Include References**

The [_include](http://hl7.org/fhir/search.html#include) argument allows the automatic inclusion of referenced resources in the response for a search; based on search parameters defined for this resource type<sup>[1](http://hl7.org/fhir/STU3/healthcareservice.html#search)</sup>.

*Example:* `GET [base]/HealthcareService?_include=HealthcareService:organization&_include=HealthcareService:endpoint&_include=HealthcareService:location`

*Support:*

* MUST support _include HealthcareService references *location* (Location), *organization* (Organization), *endpoint* (Endpoint).

-----------
**Search: Combination**

* Searches MUST be able to be perfomed in a single request using logical AND for criteria. e.g specialty cardiologist in post code 4846

-----------

 [(how to search by reference)]: http://hl7.org/fhir/search.html#reference
 [(how to search by token)]: http://hl7.org/fhir/search.html#token
 [(how to search by date)]: http://hl7.org/fhir/search.html#date
 [(how to search by string)]: http://hl7.org/fhir/search.html#string
 [(how to search by quantity)]: http://hl7.org/fhir/search.html#quantity
 [(how to read resource)]: http://hl7.org/fhir/http.html#read
 [(how to check for existence of referring resource)]: http://hl7.org/fhir/stu3/search.html#has

