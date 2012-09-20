{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{def $state=array( 'old', 'new' )
     $counter=0
     $item_object=null()}
{foreach array( $diff.old_content, $diff.new_content ) as $attr}
    <div class="attribute-view-diff-{$state[$counter]}">
    {set $counter=inc( $counter )}
    <label>{'Version %ver'|i18n( 'design/standard/content/datatype',, hash( '%ver', $attr.version ) )}:</label>
    {if $attr.content.relation_list}
            <table class="list" cellspacing="0">
            <tr>
                <th class="tight">{'Priority'|i18n( 'design/standard/content/datatype' )}</th>
                <th class="tight">{'Related object ID'|i18n( 'design/standard/content/datatype' )}</th>
                <th class="tight">{'Object version'|i18n( 'design/standard/content/datatype' )}</th>
                <th>{'Object name'|i18n( 'design/standard/content/datatype' )}</th>
                <th>{'Type'|i18n( 'design/standard/content/datatype' )}</th>
                <th>{'Creator'|i18n( 'design/standard/content/datatype' )}</th>
                <th>{'Modified'|i18n( 'design/standard/content/datatype' )}</th>
            </tr>
            {foreach $attr.content.relation_list as $item
                     sequence array( 'bglight', 'bgdark' ) as $seq}
            {set $item_object=fetch( content, object, hash( object_id, $item.contentobject_id, object_version, $item.contentobject_version ) )}

                <tr class="{$seq}">
                    <td>{$item.priority}</td>
                    <td>{$item.contentobject_id}</td>
                    <td>{$item.contentobject_version}</td>
                    <td>{$item_object.name|wash}</td>
                    <td>{$item_object.class_name|wash}</td>
                    <td>{$item_object.current.creator.name|wash}</td>
                    <td>{$item_object.modified|l10n( 'shortdatetime' )}</td>
                </tr>
            {/foreach}
            </table>
    {else}
       {'No relation'|i18n( 'design/standard/content/datatype' )}
    {/if}
    </div>
{/foreach}
