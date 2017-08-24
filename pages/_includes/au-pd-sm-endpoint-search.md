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
 
`GET [base]/Endpoint?connection-type=[system]|[value]`

*Example:* `GET [base]/Endpoint?connection-type=http://hl7.org.au.fhir/ValueSet/au-serviceinterfaces|http://ns.electronichealth.net.au/smd/intf/SealedMessageDelivery/TLS/2010`

*Support:* SHOULD support search by Connection Type.

*Implementation Notes:* [(how to search by token)]

-----------
**Search: Payload Type (Service Category)**

Search based on token for the type of content supported by the endpoint.
 
`GET [base]/Endpoint?payload-type=[system]|[value]`

*Example:* `GET [base]/Endpoint?payload-type=http://hl7.org.au.fhir/ValueSet/valueset-au-endpoint-payload-type|http://ns.hl7.org.au/hl7v2/profiles/HL7AU-OO-REF-SIMPLIFIED-201706`

*Support:* SHOULD support search by Payload Type.

*Implementation Notes:* [(how to search by token)]

-----------

 [(how to search by reference)]: http://hl7.org/fhir/search.html#reference
 [(how to search by token)]: http://hl7.org/fhir/search.html#token
 [(how to search by date)]: http://hl7.org/fhir/search.html#date
 [(how to search by string)]: http://hl7.org/fhir/search.html#string
 [(how to search by quantity)]: http://hl7.org/fhir/search.html#quantity
 [(how to read resource)]: http://hl7.org/fhir/http.html#read


