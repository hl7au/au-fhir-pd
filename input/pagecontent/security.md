### Secure Messaging Certificate Usage

''Vendor'' refers to a secure messaging vendor

```
SEC01 If NASH certificate available it SHOULD be used for encryption and signing
```

```
SEC02 Vendors WILL BE responsible for their directory entries including certificate and identity quality assurance.
```

```
SEC03 Trust of vendor provider directory entries MUST be agreed between vendors implementing secure message exchange capability.
```

```
SEC04 Vendor allocated certificates MAY be used in Endpoint encrypting certificate extension content
```

```
SEC05 Vendor certificate allocation written policy statement SHOULD be made available for users of these certificates.
```

```
SEC06 Vendor certificates allocated to an Endpoint MUST contain a URL matching one of the Endpoint.identifier (Secure Messaging Target Identifier) values in the associated Endpoint instance
```

```
SEC07 Vendor allocated Endpoint.identifier (Secure Messaging Target Identifier) values (URL) must be assigned in domain under the vendor's control.
```

```
SEC08 Endpoint published vendor encrypting certificates MUST be issued by a CA where trust chain can be checked
```

```
SEC09 Vendor certificate secure message signed payload MUST provide a certificate where CA trust chain can be checked
```

```
SEC10 Secure message metadata sender Organisation (URI) MUST be present in the signing certificate Subject Alternative Names property
```
