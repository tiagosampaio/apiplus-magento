<?php

class DataTest extends AbstractTest
{
    
    public function testDataReturnFaults()
    {
        /** @var TS_ApiPlus_Model_Config $config */
        $config = Mage::getModel('ts_apiplus/config');
        $faults = $config->getFaults();

        $this->assertInternalType('array', $faults, 'Faults must be an array.');
    }

}
