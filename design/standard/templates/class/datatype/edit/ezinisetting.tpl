<div class="block">

<div class="element">
  <label>{"Ini file"|i18n("design/standard/class/datatype")}</label><div class="labelbreak"></div>
  <input class="halfbox" type="text" name="ContentClass_ezinisetting_file_{$class_attribute.id}" value="{$class_attribute.data_text1}" size="30" maxlength="50">
</div>

<div class="element">
  <label>{"Ini Section"|i18n("design/standard/class/datatype")}</label><div class="labelbreak"></div>
  <input class="halfbox" type="text" name="ContentClass_ezinisetting_section_{$class_attribute.id}" value="{$class_attribute.data_text2}" size="30" maxlength="50">
</div>

<div class="element">
  <label>{"Ini Parameter"|i18n("design/standard/class/datatype")}</label><div class="labelbreak"></div>
  <input class="halfbox" type="text" name="ContentClass_ezinisetting_parameter_{$class_attribute.id}" value="{$class_attribute.data_text3}" size="30" maxlength="50">
</div>

</div>

<div class="block">

<div class="element">
  <label>{"Ini file location"|i18n("design/standard/class/datatype")}</label><div class="labelbreak"></div>
  <select name="ContentClass_ezinisetting_ini_instance_{$class_attribute.id}[]" size="5" multiple="multiple" >  
    {let selectedSiteAccess=$class_attribute.data_text4|explode(";")}
      {section name=SiteAccess loop=$class_attribute.data_text5|explode(";")}
        <option value="{$:index}" {section show=$selectedSiteAccess|contains($:index)}selected="selected"{/section}>
	  {$:item|wash}
	</option>
      {/section}
    {/let}
  </select>
</div>

<div class="element">
  <label>{"Ini setting type"|i18n("design/standard/class/datatype")}</label><div class="labelbreak"></div>
  <select name="ContentClass_ezinisetting_type_{$class_attribute.id}">
    <option value="1" {section show=$class_attribute.data_int1|eq(1)}selected="selected"{/section}>{"Text"|i18n("design/standard/class/datatype")}</option>
    <option value="2" {section show=$class_attribute.data_int1|eq(2)}selected="selected"{/section}>{"Enable/Disable"|i18n("design/standard/class/datatype")}</option>
    <option value="3" {section show=$class_attribute.data_int1|eq(3)}selected="selected"{/section}>{"True/False"|i18n("design/standard/class/datatype")}</option>
    <option value="4" {section show=$class_attribute.data_int1|eq(4)}selected="selected"{/section}>{"Integer"|i18n("design/standard/class/datatype")}</option>
    <option value="5" {section show=$class_attribute.data_int1|eq(5)}selected="selected"{/section}>{"Float"|i18n("design/standard/class/datatype")}</option>
    <option value="6" {section show=$class_attribute.data_int1|eq(5)}selected="selected"{/section}>{"Array"|i18n("design/standard/class/datatype")}</option>
  </select>
</div>

</div>
