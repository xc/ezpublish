{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{def $error=$persistent_data.error}
<div id="package">

{*PD: {$persistent_data|attribute(show)*}
<h2>{'Uninstalling package'|i18n('design/standard/package')} '{$package.name}'.</h2>

{def $path=concat( 'package/uninstall/', $package.name )}
<form method="post" action={$path|ezurl}>
{if is_set($error.description)}
    <h3>{$error.description}</h3>
    {if is_set($error.actions)}
        <p>{'Please choose action:'|i18n('design/standard/package')|break}</p>

        <div class="actionlist">
        <ul>
        {def $i=0}
        {foreach $error.actions as $action_id => $action}
            <li><input class="radiobutton" id="{$action_id}" type="radio" name="ActionID" value="{$action_id}" {if eq($i, 0)}checked="checked"{/if} />{$action|wash}</li>
            {set $i=inc($i)}
        {/foreach}
        </ul>
        <label for="RememberAction"><input class="checkbox" id="RememberAction" type="checkbox" name="RememberAction"/>{'Use this choice for all items'|i18n('design/standard/package')}</label>
        </div>
    {else}
        <p>Element with ID '{$error.element_id}' will not be uninstalled.</p>
    {/if}
{else}
    <h3>{'Unhandled uninstallation error has occurred.'|i18n('design/standard/package')}</h3>
{/if}
    <div class="buttonblock">
        <input class="button" type="submit" name="HandleError" value="{'Continue'|i18n('design/standard/package')}" />
        <input class="button" type="submit" name="SkipPackageButton" value="{'Cancel uninstallation'|i18n('design/standard/package')}" />
    </div>
</form>

</div>
