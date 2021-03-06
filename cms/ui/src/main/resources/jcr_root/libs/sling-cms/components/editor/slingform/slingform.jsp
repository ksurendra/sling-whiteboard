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
<form method="post" action="${slingRequest.requestPathInfo.suffix}${properties.actionSuffix}" enctype="multipart/form-data" class="Form-Ajax" data-add-date="${properties.addDate != false}">
	<fieldset class="Form-Ajax__wrapper">
		<input type="hidden" name="_charset_" value="utf-8" />
		<sling:include path="fields" resourceType="sling-cms/components/general/container" />
		<div class="Field-Group">
			<button type="submit" class="btn btn-success" title="<sling:encode value="${properties.button}" mode="HTML_ATTR" />">
				<sling:encode value="${properties.button}" mode="HTML" />
			</button>
		</div>
	</fieldset>
</form>