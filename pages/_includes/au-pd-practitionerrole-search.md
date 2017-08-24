
-----------
**Read: PractitionerRole**

Read identified practitioner role resource content.

`GET [base]/PractitionerRole/[id]`

*Example:* `GET [base]/PractitionerRole/1234`

*Support:* MUST support read PractitionerRole

*Implementation Notes:*  [[(how to read resource)]

-----------
**Search: Provider Practitioner Name**

Chained search (via Practitioner) based on family, given and/or any name.

`GET [base]/PractitionerRole?practitioner.family=[string]`

`GET [base]/PractitionerRole?practitioner.family=[string]&practitioner.given=[string]`

`GET [base]/PractitionerRole?practitioner.name=[string]`

*Example:* 

`GET [base]/PractitionerRole?practitioner.family=Smith`

`GET [base]/PractitionerRole?practitioner.family=Smith&practitioner.given=John`

`GET [base]/PractitionerRole?practitioner.name=Smith`

*Support:* MUST support search by Practitioner family, given and name.

*Implementation Notes:*  [(how to search by string)]

-----------
**Search: Provider Specialty**

Search based on specialty code.

`GET [base]/PractitionerRole?specialty=[system]|[code]`

*Example:* `GET [base]/PractitionerRole?specialty=http://snomed.info/sct|17561000`

*Support:* MUST support search PractitionerRole by specialty.

*Implementation Notes:* [(how to search by token)]

-----------
**Search: Provider Managing Organisation HPI-O**

Chained search (via Organisation) based on identifier token.

`GET [base]/PractitionerRole?organization.identifier=[system]|[value]`

*Example:* `GET [base]/PractitionerRole?organization.identifier=http://ns.electronichealth.net.au/id/hi/hpio/1.0|8003627500000328`

*Support:* MUST support search by HPI-O.

*Implementation Notes:* [(how to search by token)]

-----------
**Search: Provider Practitioner HPI-I**

Chained search (via Practitioner) based on identifier token.
 
`GET [base]/PractitionerRole?practitioner.identifier=[system]|[value]`

*Example:* `GET [base]/PractitionerRole?practitioner.identifier=http://ns.electronichealth.net.au/id/hi/hpii/1.0|8003610833334085`

*Support:* MUST support search PractitionerRole by HPI-I.

*Implementation Notes:* [(how to search by token)]


-----------
**Search: Provider Number**

Search based on identifier.

`GET [base]/PractitionerRole?identifier=[system]|[value]`

*Example:* `GET [base]/PractitionerRole?identifier=http://ns.electronichealth.net.au/id/medicare-provider-number|2426621B`

*Support:* MUST support search PractitionerRole by Provider Number.

*Implementation Notes:* [(how to search by token)]

-----------
**Search: National Provider at Organisation Identifier**

Search based on identifier. Note NPIO format is [HPI-I]@[HPI-O].

`GET [base]/PractitionerRole?identifier=[system]|[value]`

*Example:* `GET [base]/PractitionerRole?identifier=http://ns.electronichealth.net.au/id/npio|8003610833334085@8003627500000328`

*Support:* MUST support search PractitionerRole by National Provider at Organisation Identifier.

*Implementation Notes:* [(how to search by token)]

-----------
**Search: Location Address Parts**

Chained search (via Location) based on address parts for postcode, suburb, and state.

`GET [base]/PractitionerRole?location.address-postalcode=[postcode]`

`GET [base]/PractitionerRole?location.address-city=[suburb]`

`GET [base]/PractitionerRole?location.address-state=[state]`

*Example:* 

`GET [base]/PractitionerRole?location.address-postalcode=3101`

`GET [base]/PractitionerRole?location.address-city=Bundaberg`

`GET [base]/PractitionerRole?location.address-state=VIC`

*Support:* MUST support search PractitionerRole by location address parts address-postalcode, address-city, address-state.

*Implementation Notes:* 
[(how to search by token)]

-----------
**Search: Location Distance**

Chained search (via Location) for a location within a nominated distance.

`GET [base]/PractitionerRole?location.near=[latitude]:[longitude]&location.near-distance=[prefix][value]|[units-system]|[units]`

*Example:* `GET [base]/PractitionerRole?location.near==-83.694810:42.256500&location.near-distance=le10.0|http://unitsofmeasure.org|km`

*Support:* SHOULD support search PractitionerRole by location within a distance.

*Implementation Notes:* 
[(how to search by token)] and [(how to search by quantity)]

[prefix] fixed 'le' is less than or equal to distance
[value] is a decimal quantity number
[units-system] fixed 'http://unitsofmeasure.org' identifies standard distance units are used
[units] distance units must support 'km' or 'm'

-----------
**Search: Connection Type (Service Interface)**

Chaned search (via Endpoint) based on token for a protocol to be used to connnect to the endpoint.
 
`GET [base]/PractitionerRole?endpoint.connection-type=[system]|[value]`

*Example:* `GET [base]/PractitionerRole?endpoint.connection-type=http://hl7.org.au.fhir/ValueSet/au-serviceinterfaces|http://ns.electronichealth.net.au/smd/intf/SealedMessageDelivery/TLS/2010`

*Support:* MUST support search by PractitionerRole by endpoint connection type.

*Implementation Notes:* [(how to search by token)]

-----------
**Search: Payload Type (Service Category)**

Chaned search (via Endpoint) based on token for the type of content supported by the endpoint.
 
`GET [base]/PractitionerRole?endpint.payload-type=[system]|[value]`

*Example:* `GET [base]/PractitionerRole?endpoint.payload-type=http://hl7.org.au.fhir/ValueSet/valueset-au-endpoint-payload-type|http://ns.hl7.org.au/hl7v2/profiles/HL7AU-OO-REF-SIMPLIFIED-201706`

*Support:* MUST support search PractitionerRole by endpoint payload type.

*Implementation Notes:* [(how to search by token)]

-----------
**Search: Include References**

The [_include](http://hl7.org/fhir/search.html#include) argument allows the automatic inclusion of referenced resources in the response for a search; based on search parameters defined for this resource type.

*Example:* `GET [base]/PractitionerRole?_include=PractitionerRole:organization&_include=PractitionerRole:endpoint&_include=PractitionerRole:location`

*Support:* MUST support _include PractitionerRole references location, organization, endpoint.

-----------
**Search: Combination**

* Searches MUST be able to be perfomed  in a single request using logical AND for criteria. e.g specialty cardiologist in post code 4846

-----------

 [(how to search by reference)]: http://hl7.org/fhir/search.html#reference
 [(how to search by token)]: http://hl7.org/fhir/search.html#token
 [(how to search by date)]: http://hl7.org/fhir/search.html#date
 [(how to search by string)]: http://hl7.org/fhir/search.html#string
 [(how to search by quantity)]: http://hl7.org/fhir/search.html#quantity
 [(how to read resource)]: http://hl7.org/fhir/http.html#read
