package com.revature.features;

import org.junit.platform.suite.api.ConfigurationParameter;
import org.junit.platform.suite.api.IncludeEngines;
import org.junit.platform.suite.api.SelectClasspathResource;
import org.junit.platform.suite.api.Suite;

@Suite
@IncludeEngines("cucumber")
@SelectClasspathResource("com/revature/features")
@ConfigurationParameter(key = "cucumber.glue", value = "com.revature.tests")
public class TestRunner {

}
