{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{*?template charset=latin1?*}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="no" lang="no">

<head>
{section name=JavaScript loop=ezini( 'JavaScriptSettings', 'JavaScriptList', 'design.ini' ) }
<script language="JavaScript" type="text/javascript" src={concat( 'javascript/',$:item )|ezdesign}></script>
{/section}

    <link rel="stylesheet" type="text/css" href={"stylesheets/core.css"|ezdesign} />
    <link rel="stylesheet" type="text/css" href={"stylesheets/debug.css"|ezdesign} />
<style type="text/css">
{section var=css_file loop=ezini( 'StylesheetSettings', 'CSSFileList', 'design.ini' )}
    @import url({concat( 'stylesheets/',$css_file )|ezdesign});
{/section}
</style>

{include uri="design:page_head.tpl"}

</head>

<body style="background: url(/design/standard/images/grid-background.gif);">

{* Top box START *}

{include uri="design:page_topbox.tpl"}

{* Top box END *}

<table class="layout" width="100%" cellpadding="0" cellspacing="0" border="0">
<tr>
    <td class="pathline" colspan="2">

{* Main path START *}

{include uri="design:page_toppath.tpl"}

{* Main path END *}

    </td>
</tr>
<tr>
    <td colspan="2">

{* Toolbar START *}

{include uri="design:page_toptoolbar.tpl"}

{* Toolbar END *}
    
    </td>
</tr>
<tr>
    <td width="120" valign="top" style="padding-right: 4px;">

{* Left menu START *}

{include uri="design:left_menu.tpl"}

{* Left menu END *}

    </td>
    <td class="mainarea" width="99%" valign="top">

{* Main area START *}

{include uri="design:page_mainarea.tpl"}

{* Main area END *}

    </td>
</tr>
</table>

{include uri="design:page_copyright.tpl"}

<!--DEBUG_REPORT-->

</body>
</html>
