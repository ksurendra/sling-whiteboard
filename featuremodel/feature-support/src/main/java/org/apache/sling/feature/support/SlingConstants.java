/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements. See the NOTICE file distributed with this
 * work for additional information regarding copyright ownership. The ASF
 * licenses this file to You under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */
package org.apache.sling.feature.support;

import java.util.Collections;

import org.apache.sling.feature.OSGiRequirement;
import org.osgi.resource.Requirement;

public abstract class SlingConstants {

    /** Common extension name to specify the repoinit part for Apache Sling. */
    public static final String EXTENSION_NAME_REPOINIT = "repoinit";

    /** Common extension name to specify the content packages for Apache Sling. */
    public static final String EXTENSION_NAME_CONTENT_PACKAGES = "content-packages";

    public static final String REQUIRE_REPOINIT_CAPABILITY =
            "osgi.implementation;filter:=\"(&(osgi.implementation=org.apache.sling.jcr.repoinit)(version>=1.0)(!(version>=2.0)))\"";

    public static final Requirement REQUIREMENT_REPOINIT = new OSGiRequirement("osgi.implementation", null,
            Collections.singletonMap("filter", "(&(osgi.implementation=org.apache.sling.jcr.repoinit)(version>=1.0)(!(version>=2.0)))"));
}
