<?php

class AliasTest extends AbstractTest
{

    /**
     * @test
     */
    public function helperAlias()
    {
        $helper = Mage::helper('ts_apiplus');
        $this->assertInstanceOf('TS_ApiPlus_Helper_Data', $helper);
    }

}
