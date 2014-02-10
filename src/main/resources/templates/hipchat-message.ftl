<p>
  <#compress>
    <#if trigger == "start">
      ${executionData.context.job.username?capitalize} started
    </#if>

    <#if executionData.job.group?has_content>
      ${executionData.job.group}/${executionData.job.name}
    <#else>
      ${executionData.job.name}
    </#if>

    <a href="${executionData.href}">#${executionData.context.job.execid}</a>
  </#compress>

  <#if trigger == "start">
    with these parameters:<br/>
    <#list executionData.context.option?keys as prop>
      ${prop}: ${executionData.context.option[prop]},
    </#list>
  <#elseif trigger == "failure">
    has failed
  <#elseif trigger == "success">
    has succeeded
  </#if>
</p>
