# API Plus for Magento

[![Build Status](https://travis-ci.org/tiagosampaio/ApiPlus.svg?branch=master)](https://travis-ci.org/tiagosampaio/ApiPlus)
[![GitHub license](https://img.shields.io/badge/version-0.1.0.1-blue.svg)](#)
[![GitHub issues](https://img.shields.io/github/issues/tiagosampaio/ApiPlus.svg)](https://github.com/tiagosampaio/ApiPlus/issues)
[![GitHub forks](https://img.shields.io/github/forks/tiagosampaio/ApiPlus.svg)](https://github.com/tiagosampaio/ApiPlus/network)
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/tiagosampaio/ApiPlus/master/LICENSE.txt)

Rather than using (slow) SOAP to make calls to Magento's API why not to simply send a *POST* to an endpoint provinding your authentication data in request header and a JSON-encoded body with the resource name you want to consume and arguments needed for the call?

API Plus for Magento is a module that improves how Magendo API can be consumed by third party applications. By using API Plus in your Magento store you make the API connection much eaiser but with the same abstraction layer and providing the same flexibility and security that Magento platform already provides for all its community.

## NOTE

This documentation is not complete but I'm working on it to improve and make it better everytime I have a little free time.

## Features

- **Much easier!**: API Plus is much, much, much easier to be used in your Magento platform. By using it you don't need to make SOAP calls anymore.
- **Flexibility**: API Plus uses the Magento API's abstraction so, the same flexibility is provided by API Plus.
- **Security**: API Plus is as secure as Magento's authentication system.
- **Performance**: By using API Plus your API connections and results will be much faster then using the default SOAP calls.

## Authors, contributors and maintainers

Author:
- [Tiago Sampaio](http://tiagosampaio.com)

## Compability

- PHP: 
  - 5.4
  - 5.5
  - 5.6
- Magento CE: 
  - 1.6.x
  - 1.7.x
  - 1.8.x
  - 1.9.x
- Magento EE: 
  - 1.11.x
  - 1.12.x
  - 1.13.x
  - 1.14.x

## Documentation

### Basic

It's quite simple! Rather then using SOAP process described in [Magento Webservice Documentation](http://devdocs.magento.com/guides/m1x/api/soap/introduction.html) all you need to do is to send a POST request to:

[https://www.yourmagentohost.com/`api/json`](#)

Providing the following authentication parameters in request header:

Parameter Key | Parameter Value
--- | ---
`apiUsername` | [Your Magento's API Username]
`apiKey` | [Your Magento's API Secret Key]

And the body in JSON format:

```json
{
  "resource": "catalog_product.list"
}
```

If you need to send any arguments, like you do in SOAP request for some resources, you simply add a new node called `args` in the JSON request body:

```json
{
  "resource": "catalog_product.list",
  "args": {
    "complex_filter": [
      {
        "key": "type",
        "value": {
          "key": "in",
          "value": "configurable,grouped"
        }
      }
    ]
  }
}
```


## License

[MIT License](LICENSE.txt)

## Links

[Novo Módulo Magento para Integração com API: API Plus!](http://tiagosampaio.com/novo-modulo-magento-para-integracao-com-api-api-plus/)
