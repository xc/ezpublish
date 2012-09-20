{* DO NOT EDIT THIS FILE! Use an override template instead. *}
<form action={concat("/shop/archivelist")|ezurl} method="post" name="Archivelist">
<div class="maincontentheader">
  <h1>{"Archive list"|i18n("design/standard/shop")}</h1>
</div>

{'Sort Result by'|i18n('design/standard/shop')}: <select name="SortField">
     <option value="created" {switch match=$sort_field}{case match="created"} selected="selected"{/case}{case}{/case}{/switch}>{'Order Time'|i18n('design/standard/shop')}</option>
     <option value="user_name" {switch match=$sort_field}{case match="user_name"} selected="selected"{/case}{case}{/case}{/switch}>{'User Name'|i18n('design/standard/shop')}</option>
     <option value="order_nr" {switch match=$sort_field}{case match="order_nr"} selected="selected"{/case}{case}{/case}{/switch}>{'Order ID'|i18n('design/standard/shop')}</option>
</select>
<img src={"asc-transp.gif"|ezimage} alt="{'Ascending'|i18n('design/standard/shop')}" title="{'Sort ascending'|i18n('design/standard/shop')}" /><input type="radio" name="SortOrder" value="asc" {if eq($sort_order,"asc")}checked="checked"{/if} />
<img src={"desc-transp.gif"|ezimage} alt="{'Descending'|i18n('design/standard/shop')}" title="{'Sort descending'|i18n('design/standard/shop')}" /><input type="radio" name="SortOrder" value="desc" {if eq($sort_order,"desc")}checked="checked"{/if} />
{include uri="design:gui/button.tpl" name=Sort id_name=SortButton value="Sort"|i18n("design/standard/shop")}

{section show=$archive_list}
<table class="list" width="100%" cellspacing="0" cellpadding="0" border="0">
<tr>
    <th width="1">
    &nbsp;
    </th>
	<th>
	{"ID"|i18n("design/standard/shop")}
	</th>
	<th>
	{"Date"|i18n("design/standard/shop")}
	</th>
	<th>
	{"Customer"|i18n("design/standard/shop")}
	</th>
	<th>
	{"Total ex. VAT"|i18n("design/standard/shop")}
	</th>
	<th>
	{"Total inc. VAT"|i18n("design/standard/shop")}
	</th>
    <th>
	</th>
</tr>
{section name="Order" loop=$archive_list sequence=array(bglight,bgdark)}
<tr>
    <td class="{$Order:sequence}">
	<input type="checkbox" name="OrderIDArray[]" value="{$Order:item.id}" />
	</td>
	<td class="{$Order:sequence}">
	{$Order:item.order_nr}
	</td>
	<td class="{$Order:sequence}">
	{$Order:item.created|l10n(shortdatetime)}
	</td>
	<td class="{$Order:sequence}">
    <a href={concat("/shop/customerorderview/",$Order:item.user_id,"/",$Order:item.account_email)|ezurl}>{$Order:item.account_name}</a>
	</td>
	<td class="{$Order:sequence}">
	{$Order:item.total_ex_vat|l10n(currency)}
	</td>
	<td class="{$Order:sequence}">
	{$Order:item.total_inc_vat|l10n(currency)}
	</td>
	<td class="{$Order:sequence}">
	<a href={concat("/shop/orderview/",$Order:item.id,"/")|ezurl}>[ view ]</a>
	</td>
</tr>
{/section}
</table>
{section-else}

<div class="feedback">
  <h2>{"The order list is empty"|i18n("design/standard/shop")}</h2>
</div>

{/section}

<div class="button">
<input type="submit" name="UnarchiveButton" value="{'Unarchive'|i18n('design/standard/shop')}" />
</div>

{include name=navigator
         uri='design:navigator/google.tpl'
         page_uri='/shop/archivelist'
         item_count=$archive_list_count
         view_parameters=$view_parameters
         item_limit=$limit}
</form>
