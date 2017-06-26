
-----------

`GET [base]/Organization?name=[string]`

**Example:** GET [base]/Organization?name=clinigroup

*Support:* Mandatory to support search by Organization name.

*Implementation Notes:* Search based on Organization name

-----------

`GET [base]/Organization?identifier=[system]|[code]&endpoint.connection-type=[system]|[code]&endpoint.payload-type=[system]|[code]&_include=Organization:organization&_include=Organization:endpoint`

**Example:** GET [base]/Organization?identifier=HPI-O&connection-type=[todo]\|[todo]&payload-type=[todo]\|[todo]

*Support:* Mandatory to support search by HPI-O, connection type (service interface) and payload type (service category).

*Implementation Notes:* Equivalent to ELS listInteractions for organisation.


-----------

 [(how to search by reference)]: http://hl7.org/fhir/search.html#reference
 [(how to search by token)]: http://hl7.org/fhir/search.html#token
 [(how to search by date)]: http://hl7.org/fhir/search.html#date
 [(how to search by string)]: http://hl7.org/fhir/search.html#string
