<%--
  ~ Copyright 2000-2014 Eugene Petrenko
  ~
  ~ Licensed under the Apache License, Version 2.0 (the "License");
  ~ you may not use this file except in compliance with the License.
  ~ You may obtain a copy of the License at
  ~
  ~ http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing, software
  ~ distributed under the License is distributed on an "AS IS" BASIS,
  ~ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  ~ See the License for the specific language governing permissions and
  ~ limitations under the License.
  --%>

<%@ include file="/include-internal.jsp"%>
<jsp:useBean id="ctx" class="com.jonnyzzz.teamcity.virtual.FormBean"/>
<jsp:useBean id="propertiesBean" scope="request" type="jetbrains.buildServer.controllers.BasePropertiesBean" />

<c:set var="vm" value="${propertiesBean.properties[ctx.vm]}"/>
<c:forEach var="it" items="${ctx.vms}">
  <c:if test="${vm eq it.name}">
    <jsp:include page="${it.view}" />
  </c:if>
</c:forEach>

<div class="parameter">
  <props:displayValue name="${ctx.script}" showInPopup="${true}"/>
</div>