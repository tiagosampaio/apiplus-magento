<?php

/**
 * Tiago Sampaio
 *
 * Do not edit this file if you want to update this module for future new versions.
 *
 * @category  TS
 * @package   TS_ApiPlus
 *
 * @copyright Copyright (c) 2016 Tiago Sampaio. (http://tiagosampaio.com)
 * @license   https://opensource.org/licenses/MIT The MIT License
 *
 * @author    Tiago Sampaio <tiago@tiagosampaio.com>
 */
class TS_ApiPlus_Model_Http_Response
{
    
    /** 2XX Codes - Successful */
    const HTTP_OK                               = 200;
    const HTTP_CREATED                          = 201;
    const HTTP_ACCEPTED                         = 202;
    const HTTP_NON_AUTHORITATIVE_INFORMATION    = 203;
    const HTTP_NO_CONTENT                       = 204;
    const HTTP_RESET_CONTENT                    = 205;
    const HTTP_PARTIAL_CONTENT                  = 206;
    
    /** 3XX Codes - Redirection */
    const HTTP_MULTIPLE_CHOICES                 = 300;
    const HTTP_MOVED_PERMANENTLY                = 301;
    const HTTP_FOUND                            = 302;
    const HTTP_SEE_OTHER                        = 303;
    const HTTP_NOT_MODIFIED                     = 304;
    const HTTP_USED_PROXY                       = 305;
    const HTTP_TEMPORARY_REDIRECT               = 307;
    
    /** 4XX Codes - Client Error*/
    const HTTP_BAD_REQUEST                      = 400;
    const HTTP_UNAUTHORIZED                     = 401;
    const HTTP_PAYMENT_REQUIRED                 = 402;
    const HTTP_FORBIDDEN                        = 403;
    const HTTP_NOT_FOUND                        = 404;
    const HTTP_METHOD_NOT_ALLOWED               = 405;
    const HTTP_NOT_ACCEPTABLE                   = 406;
    const HTTP_PROXY_AUTHENTICATION_REQUIRED    = 407;
    const HTTP_REQUEST_TIMEOUT                  = 408;
    const HTTP_CONFLICT                         = 409;
    const HTTP_GONE                             = 410;
    const HTTP_LENGTH_REQUIRED                  = 411;
    const HTTP_PRECONDITION_FAILED              = 412;
    const HTTP_REQUEST_ENTITY_TOO_LARGE         = 413;
    const HTTP_REQUEST_URI_TOO_LONG             = 414;
    const HTTP_UNSUPPORTED_MEDIA_TYPE           = 415;
    const HTTP_REQUESTED_RANGE_NOT_SATISFIABLE  = 416;
    const HTTP_EXPECTATION_FAILED               = 417;
    
    /** 5XX Codes - Server Error */
    const HTTP_INTERNAL_SERVER_ERROR            = 500;
    const HTTP_NOT_IMPLEMENTED                  = 501;
    const HTTP_BAD_GATEWAY                      = 502;
    const HTTP_SERVICE_UNAVAILABLE              = 503;
    const HTTP_GATEWAY_TIMEOUT                  = 504;
    const HTTP_HTTP_VERSION_NOT_SUPPORTED       = 505;
    
}
