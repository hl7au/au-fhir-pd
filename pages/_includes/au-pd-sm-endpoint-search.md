-----------
**Read: Endpoint**
Read identified endpoint resource content.

`GET [base]/Endpoint/[id]`

*Example:* 
`GET [base]/Endpoint/1234`

*Support:* MUST support read Endpoint

*Implementation Notes:*  [[(how to read resource)]

-----------
**Search: Connection Type (Service Interface)**

Search based on token for a protocol to be used to connnect to the endpoint.
 
`GET [base]/Endpoint?connection-type=[system]|[code]`

*Example:* `GET [base]/Endpoint?connection-type=http://hl7.org.au/fhir/CodeSystem/smd-interfaces|http://ns.electronichealth.net.au/smd/intf/SealedMessageDelivery/TLS/2010`

*Support:* MUST support search by Connection Type.

*Implementation Notes:* [(how to search by token)]

-----------
**Search: Payload Type (Service Category)**

Search based on token for the type of content supported by the endpoint.
 
`GET [base]/Endpoint?payload-type=[system]|[code]`

*Example:* `GET [base]/Endpoint?payload-type=http://hl7.org.au/fhir/CodeSystem/smd-interfaces|http://ns.hl7.org.au/hl7v2/profiles/HL7AU-OO-REF-SIMPLIFIED-201706`

*Support:* MUST support search by Payload Type.

*Implementation Notes:* [(how to search by token)]

-----------
**Search: Receiving Facility Extension Elements (Custom)**

Search based string element content in the au-receivingfacility extension. (namespace-id, universal-id, universal-id-type)
 
`GET [base]/Endpoint?au-receivingfacility-namespace-id=[string]&au-receivingfacility-universal-id=[string]&au-receivingfacility-universal-id-type=[string]`

*Example:* `GET [base]/Endpoint?au-receivingfacility-namespace-id=Buderim Medical Center&au-receivingfacility-universal-id=877F9695-1298-4E6A-B432-0FDD46AD80B8&au-receivingfacility-universal-id-type=GUID`

*Support:* MUST support search by Receiving Facility Extension Elements.

*Implementation Notes:* [(how to search by string)]

* For searching explicitly for empty elements use *:missing=true*  e.g. au-receivingfacility-universal-id-type:missing=true
* Definition: au-receivingfacility-namespace-id search extension('http://hl7.org.au/fhir/StructureDefinition/au-receivingfacility').extension('namespace-id').value	(MSH-6.1)
* Definition: au-receivingfacility-universal-id	search extension('http://hl7.org.au/fhir/StructureDefinition/au-receivingfacility').extension('universal-id').value	(MSH-6.2)
* Definition: au-receivingfacility-universal-id-type search extension('http://hl7.org.au/fhir/StructureDefinition/au-receivingfacility').extension('universal-id-type').value (MSH-6.3)

-----------

 [(how to search by reference)]: http://hl7.org/fhir/search.html#reference
 [(how to search by token)]: http://hl7.org/fhir/search.html#token
 [(how to search by date)]: http://hl7.org/fhir/search.html#date
 [(how to search by string)]: http://hl7.org/fhir/search.html#string
 [(how to search by quantity)]: http://hl7.org/fhir/search.html#quantity
 [(how to read resource)]: http://hl7.org/fhir/http.html#read


