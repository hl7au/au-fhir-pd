
-----------
**Read: Location**

Read identified location resource content.

`GET [base]/Location/[id]`

*Example:*  `GET [base]/Location/1234`

*Support:*
* MUST support read Location

*Implementation Notes:*  [(how to read resource)]

-----------

**Search: Location Address Parts**

Search based on address parts for postcode, suburb, and state.

`GET [base]/Location?address-postalcode=[postcode]`

`GET [base]/Location?address-city=[suburb]`

`GET [base]/Location?address-state=[state]`

*Example:* 

`GET [base]/Location?address-postalcode=3101`

`GET [base]/Location?address-city=Bundaberg`

`GET [base]/Location?address-state=VIC`

*Support:*
* SHOULD support search Location by address parts address-postalcode, address-city, address-state.
* SHOULD support basic **param=[string]** search which is case and accent-insensitive search;  field equals or starts with the string value.

*Implementation Notes:* 
[(how to search by token)]

-----------
**Search: Location Distance**

Search based on address within a nominated distance.

`GET [base]/Location?location.near=[latitude]:[longitude]&location.near-distance=[prefix][value]|[units-system]|[units]`

*Example:* `GET [base]/Location?near=-83.694810:42.256500&near-distance=le10.0|http://unitsofmeasure.org|km`

*Support:* 
* SHOULD support search Location within a distance.
* SHOULD support:
[prefix] fixed 'le' is less than or equal to distance
[value] is a decimal quantity number
[units-system] fixed 'http://unitsofmeasure.org' identifies standard distance units are used
[units] distance units must support 'km' or 'm'

*Implementation Notes:* 
[(how to search by token)] and [(how to search by quantity)]


-----------
**Search: Combination**

* The following searches MUST be able to be perfomed together in a single request using logical AND for criteria. e.g in postcode within 2km

-----------

 [(how to search by reference)]: http://hl7.org/fhir/search.html#reference
 [(how to search by token)]: http://hl7.org/fhir/search.html#token
 [(how to search by date)]: http://hl7.org/fhir/search.html#date
 [(how to search by string)]: http://hl7.org/fhir/search.html#string
 [(how to search by quantity)]: http://hl7.org/fhir/search.html#quantity
 [(how to read resource)]: http://hl7.org/fhir/http.html#read
