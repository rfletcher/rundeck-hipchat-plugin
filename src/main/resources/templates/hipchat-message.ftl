<p>
  <#compress>
    <#if trigger == "start">
      ${executionData.context.job.username?capitalize} started
    </#if>

    <a href="${executionData.href}">
      <#if executionData.job.group?has_content>${executionData.job.group}/</#if><#--
      -->${executionData.job.name}<#--
    --></a>

    #${executionData.context.job.execid}

    <#if trigger == "start">
      with these parameters:<br/>&nbsp;&nbsp;&nbsp;&nbsp;
      <#list executionData.context.option?keys?sort as prop>
        ${prop}: ${executionData.context.option[prop]}<#if prop_has_next>;</#if>
      </#list>
    <#elseif trigger == "failure">
      has failed
    <#elseif trigger == "success">
      has succeeded
    </#if>
  </#compress>
</p>
