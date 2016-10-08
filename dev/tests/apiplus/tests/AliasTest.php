<?php

class AliasTest extends AbstractTest
{
    
    public function testHelperAlias()
    {
        $helper = Mage::helper('ts_apiplus');
        $this->assertInstanceOf('TS_ApiPlus_Helper_Data', $helper);
    }


    public function testModelConfig()
    {
        $model = Mage::getModel('ts_apiplus/config');
        $this->assertInstanceOf('TS_ApiPlus_Model_Config', $model);
    }


    public function testModelServerHandler()
    {
        $model = Mage::getModel('ts_apiplus/server_handler');
        $this->assertInstanceOf('TS_ApiPlus_Model_Server_Handler', $model);
    }


    public function testModelHttpRequest()
    {
        $model = Mage::getConfig()->getModelClassName('ts_apiplus/http_request');
        $this->assertEquals('TS_ApiPlus_Model_Http_Request', $model);
    }


    public function testModelHttpResponse()
    {
        $model = Mage::getModel('ts_apiplus/http_response');
        $this->assertInstanceOf('TS_ApiPlus_Model_Http_Response', $model);
    }

}
