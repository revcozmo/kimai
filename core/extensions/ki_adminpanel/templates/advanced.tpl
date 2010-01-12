{literal}    
    <script type="text/javascript">
        function cb() {
            $("#ap_ext_form_editadv_submit").blur();
            $("#ap_ext_output").width($(".ap_ext_panel_header").width()-22);
            $("#ap_ext_output").fadeIn(fading_enabled?500:0,function(){
                $("#ap_ext_output").fadeOut(fading_enabled?4000:0);
            });
        }
        $(document).ready(function() {
            $('#ap_ext_form_editadv').ajaxForm({target:'#ap_ext_output',success:cb}); 
        }); 
    </script>
{/literal}

<div class="content">
    
    <div id="ap_ext_output"></div>
        
    <form id="ap_ext_form_editadv" action="../extensions/ki_adminpanel/processor.php" method="post">
        
        <fieldset class="ap_ext_advanced">
            <div>
                <input type="text" name="adminmail" size="20" value="{$kga.conf.adminmail}" class="formfield"> {$kga.lang.adminmail}
            </div>
            <div>
                <input type="text" name="logintries" size="2" value="{$kga.conf.loginTries}" class="formfield"> {$kga.lang.logintries}
            </div>
            <div>
                <input type="text" name="loginbantime" size="4" value="{$kga.conf.loginBanTime}" class="formfield"> {$kga.lang.bantime}
            </div>

            <div id="ap_ext_checkupdate">
                <a href="javascript:ap_ext_checkupdate({$kga.revision});">{$kga.lang.checkupdate}</a>
            </div>

            <div>
               <input type="checkbox" name="show_sensible_data" {if $kga.show_sensible_data}checked="checked"{/if} value="1" class="formfield"> {$kga.lang.show_sensible_data}
            </div>

            <div>
               <input type="checkbox" name="show_update_warn" {if $kga.show_update_warn}checked="checked"{/if} value="1" class="formfield"> {$kga.lang.show_update_warn}
            </div>

            <div>
               <input type="checkbox" name="check_at_startup" {if $kga.check_at_startup}checked="checked"{/if} value="1" class="formfield"> {$kga.lang.check_at_startup}
            </div>

            <div>
               <input type="checkbox" name="show_daySeperatorLines" {if $kga.show_daySeperatorLines}checked="checked"{/if} value="1" class="formfield"> {$kga.lang.show_daySeperatorLines}
            </div>

            <div>
               <input type="checkbox" name="show_gabBreaks" {if $kga.show_gabBreaks}checked="checked"{/if} value="1" class="formfield"> {$kga.lang.show_gabBreaks}
            </div>

            <div>
               <input type="checkbox" name="show_RecordAgain" {if $kga.show_RecordAgain}checked="checked"{/if} value="1" class="formfield"> {$kga.lang.show_RecordAgain}
            </div>

            <div>
               <input type="checkbox" name="show_TrackingNr" {if $kga.show_TrackingNr}checked="checked"{/if} value="1" class="formfield"> {$kga.lang.show_TrackingNr}
            </div>

            <div>
               <input type="text" name="currency_name" size="8" value="{$kga.currency_name}" class="formfield"> {$kga.lang.currency_name}
            </div>

            <div>
               <input type="text" name="currency_sign" size="2" value="{$kga.currency_sign}" class="formfield"> {$kga.lang.currency_sign}
            </div>

            <div>
               <input type="text" name="date_format_2" size="8" value="{$kga.date_format.2}" class="formfield"> Format des Datums der Zeitspanne (<a href="http://php.net/manual/de/function.strftime.php" target="_blank">Notation für strftime()</a>)
            </div>

            <div>
               <input type="text" name="date_format_0" size="8" value="{$kga.date_format.0}" class="formfield"> Format des Datums in dem Feld unterhalb der Zeitspanne (<a href="http://php.net/manual/de/function.strftime.php" target="_blank">Notation für strftime()</a>)
            </div>

            <div>
               <input type="text" name="date_format_1" size="8" value="{$kga.date_format.1}" class="formfield"> Format des Datums in den Tabellen (<a href="http://php.net/manual/de/function.strftime.php" target="_blank">Notation für strftime()</a>)
            </div>
        
            <input name="axAction" type="hidden" value="sendEditAdvanced" />
        
            <div id="formbuttons">
                <input id="ap_ext_form_editadv_submit" class='btn_ok' type='submit' value='{$kga.lang.save}' />
            </div>
        
        </fieldset>
        
    </form>

</div>