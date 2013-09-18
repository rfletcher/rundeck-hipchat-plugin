<p>${executionData.job.project} - Execution of job
<a href="${executionData.job.href}">
<#if executionData.job.group?has_content>${executionData.job.group}/</#if>${executionData.job.name}</a>
<#if trigger == "start">
    <b>started</b>
<#elseif trigger == "failure">
    <b>failed</b>
<#elseif trigger == "success">
    <b>succeeded</b>
</#if>
</p>
<ul>
<#if trigger == "start">
  <#if executionData.context.option?has_content>
    <li>Params: 
    <#list executionData.context.option?keys as prop>
      ${prop} = ${executionData.context.option[prop]}
    </#list>
    </li>
  </#if>
</#if>
    <li>User: ${executionData.context.job.username}</li>
    <li>ExecId: ${executionData.context.job.execid}</li>
</ul>
<p><a href="${executionData.href}">View Output</a></p>