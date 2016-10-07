<?php

abstract class AbstractTest extends PHPUnit_Framework_TestCase
{

    protected $jobs      = array();
    protected $schedules = array();


    protected function setUp()
    {
        parent::setUp();
        require_once(MAGENTO_ROOT . '/app/Mage.php' );

        Mage::app();
    }


    public function tearDown()
    {
        return parent::tearDown();
    }

}
