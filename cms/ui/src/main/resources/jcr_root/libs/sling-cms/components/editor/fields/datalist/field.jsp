<%-- /*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */ --%>
 <%@include file="/libs/sling-cms/global.jsp"%>
<input type="text" name="${properties.name}" value="${editProperties[properties.name]}" ${required} ${disabled} list="${resource.name}" />
<datalist id="${resource.name}">
	<c:forEach var="item" items="${sling:findResources(resourceResolver,properties.query,properties.queryLanguage)}">
		<c:if test="${item.valueMap[properties.valueProperty] != null and item.valueMap[properties.labelProperty] != null}">
			<option value="${sling:encode(item.valueMap[properties.valueProperty],'HTML_ATTR')}"><sling:encode value="${item.valueMap[properties.labelProperty]}" mode="HTML" /></option>
		</c:if>
	</c:forEach>
</datalist>