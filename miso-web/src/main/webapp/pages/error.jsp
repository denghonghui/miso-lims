<%@ include file="../header.jsp" %>

<%--
  ~ Copyright (c) 2012. The Genome Analysis Centre, Norwich, UK
  ~ MISO project contacts: Robert Davey @ TGAC
  ~ **********************************************************************
  ~
  ~ This file is part of MISO.
  ~
  ~ MISO is free software: you can redistribute it and/or modify
  ~ it under the terms of the GNU General Public License as published by
  ~ the Free Software Foundation, either version 3 of the License, or
  ~ (at your option) any later version.
  ~
  ~ MISO is distributed in the hope that it will be useful,
  ~ but WITHOUT ANY WARRANTY; without even the implied warranty of
  ~ MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  ~ GNU General Public License for more details.
  ~
  ~ You should have received a copy of the GNU General Public License
  ~ along with MISO.  If not, see <http://www.gnu.org/licenses/>.
  ~
  ~ **********************************************************************
  --%>
<%@ page import="uk.ac.bbsrc.tgac.miso.webapp.context.ApplicationContextProvider" %>

<div id="maincontent">
  <div id="contentcolumn">
    <h1>Error</h1>
    <c:if test="${misoBugUrl != null}">
      Please copy the URL in the address bar and the <b>full</b> text below and raise a
      <a href="${misoBugUrl}" target="_blank">ticket</a>, describing what you were
      trying to do when this error occurred.<br/><br/>
    </c:if>

    <h2>${pageContext.exception.message}</h2><br/>
    <ul>
      <c:forEach items="${pageContext.exception.stackTrace}" var="trace">
        <li>${trace}</li>
      </c:forEach>
    </ul>
  </div>
</div>

<%@ include file="adminsub.jsp" %>

<%@ include file="../footer.jsp" %>