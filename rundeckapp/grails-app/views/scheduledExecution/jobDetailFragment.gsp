<%@ page import="rundeck.Execution" %>
<%--
  Copyright 2011 DTO Labs, Inc. (http://dtolabs.com)

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
 
 --%>
 <%--
    jobDetailFragment.gsp
    
    Author: Greg Schueler <a href="mailto:greg@dtosolutions.com">greg@dtosolutions.com</a>
    Created: Jan 7, 2011 2:21:36 PM
 --%>

<!--Display job details-->
<div class="left">
    <div class="right">
        <table width="100%" cellpadding="0" cellspacing="0">
            <tr>
                <td>
                    <g:render template="/execution/execDetails" model="[execdata:scheduledExecution]"/>
                </td>
            </tr>
            <tbody class="section">
            <tr>
                <td style="" class="jobbuttons ">
                    <div class="right">
                        <g:render template="/scheduledExecution/renderJobStats" model="${[scheduledExecution: scheduledExecution]}"/>
                    </div>
                </td>
            </tr>
            </tbody>
            <g:if test="${scheduledExecution.uuid}">
                <tbody class="section">
                    <tr>
                       <td>
                           <span class="desc">UUID: ${scheduledExecution.uuid.encodeAsHTML()}</span>
                        </td>
                    </tr>
                </tbody>
            </g:if>
        </table>
    </div>
</div>
