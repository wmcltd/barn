<?php
#-------------------------------------------------------------------------
# Module: Showtime
# Moduledemo's URI: http://www.web2do.be/cms/showtime
# Description:Display images as animated slideshow. 
# Choose among several smooth transition effects. ShowTime requires Adobe Flash player 10 or higher.
#
# Version: 1.0
# author: Peter Orije
# Author URI: http://www.web2do.be
/*
    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
*/
# Module based on Wordpress plugin from: Paul Schroeder URI: http://youtag.lu/showtime-wp-plugin/
#-------------------------------------------------------------------------

class Showtime extends CMSModule{
    function GetName(){                         return 'Showtime';}
    function GetFriendlyName(){                 return $this->Lang('friendlyname');}
    function GetVersion(){                      return '3.3';}
    function GetHelp() {           
            global $gCms;
            $config = $this->GetConfig();
            $help = str_replace('[root_url]',$config["root_url"], $this->Lang('help'));
            return $help;
    }
    function GetAuthor() {                      return 'Peter Orije';}
    function GetAuthorEmail()  {                return 'info@web2do.be';}
    function GetChangeLog()  {                  return $this->Lang('changelog');}
    function IsPluginModule() {                 return true;}
    function HasAdmin() {                       return true;}
    function GetAdminSection() {                return 'content';}
    function GetAdminDescription(){             return $this->Lang('admindescription');}
    function VisibleToAdminUser() {             return $this->CheckPermission('Use Showtime');}
    function CheckAccess($perm = 'Use Showtime'){return $this->CheckPermission($perm);}
    function GetDependencies() {                return array();}
    function MinimumCMSVersion()  {             return "1.0.1";}

    function DisplayErrorPage($id, &$params, $return_id, $message=''){
            $this->smarty->assign('title_error', $this->Lang('error'));
            $this->smarty->assign_by_ref('message', $message);
            echo $this->ProcessTemplate('error.tpl');
    }
	
    function GetEventDescription ( $eventname ){return $this->Lang('event_info_'.$eventname );}
    function GetEventHelp ( $eventname ){       return $this->Lang('event_help_'.$eventname );}
    function InstallPostMessage(){              return $this->Lang('postinstall');}
    function UninstallPostMessage(){            return $this->Lang('postuninstall');}
    function UninstallPreMessage(){             return $this->Lang('really_uninstall'); }
	
    function SetParameters(){
            $this->RegisterModulePlugin();
            $this->RestrictUnknownParams();
            $this->CreateParameter('show', '', 'Showtime id');
            $this->SetParameterType('show',CLEAN_STRING);
    }

    /**
    * DoEvent methods
    */
    function DoEvent( $originator, $eventname, &$params ){
            if ($originator == 'Core' && $eventname == 'ContentPostRender'){
                    $pos = stripos($params["content"],"</head");
                    if( $pos !== FALSE && isset($this->SWFMetadata)){
                            $params["content"] = substr($params["content"], 0, $pos) .  
                            $this->SWFMetadata . substr($params["content"], $pos);
                    }
                    if( $pos !== FALSE && isset($this->JQMetadata)){
                            $params["content"] = substr($params["content"], 0, $pos) .  
                            $this->JQMetadata . substr($params["content"], $pos);
                    }
                    if( $pos !== FALSE && isset($this->CSSMetadata)){
                            $params["content"] = substr($params["content"], 0, $pos) .  
                            $this->CSSMetadata . substr($params["content"], $pos);
                    }

            }
    }


    /**
    * Register TinyMCE plugin
    */

    function RegisterTinyMCEPlugin(){
            $gCms = cmsms();
            $config = $this->GetConfig();
            $db =& $this->GetDB();
            $plugin1 = "
    tinymce.create('tinymce.plugins.picker', {
            createControl: function(n, cm) {
                    switch (n) {
                            case 'picker':
                                    var c = cm.createMenuButton('picker', {
                                            title : 'Add Showtime',
                                            image : '".$config["root_url"]."/modules/Showtime/images/icon_TinyMCE.gif',
                                            icons : false
                                    });
                                    c.onRenderMenu.add(function(c, m) {
                    ";

                            $query = 'SELECT * FROM '.cms_db_prefix().'module_showtime_name';
                            $dbresult = $db->Execute($query);	
                            if ( $dbresult && $dbresult->RecordCount() > 0 ){			
                                    while( $dbresult && ($row = $dbresult->FetchRow()) ){
                                            $showname=addcslashes($row['show_name'],"\\\'\"&\n\r<>"); 
                                            $plugin1 .= "
                                                    m.add({title : 'Showtime : ".$showname." (".$row['st_animationtype'].")', onclick : function() {
                                                            tinyMCE.activeEditor.execCommand('mceInsertContent', false, '{Showtime show=\'".$row['show_id']."\'}');
                                                    }});
                                                    m.addSeparator();
                                            ";
                                    }
                            }else{
                                            $plugin1 .= "
                                                    m.add({title : 'Add Show first in Showtime!', onclick : function() {
                                                            tinyMCE.activeEditor.execCommand('mceInsertContent', false, '');
                                                    }});
                                                    m.addSeparator();
                                            ";

                            }

                    $plugin1 .= "
                                    });
                                    // Return the new menu button instance
                                    return c;
                    }

                    return null;
            }
    });
            ";

            return array(array('picker',$plugin1,'Showtime: (add also [showtime_picker,] to your Profiles toolbars)'));
    }
  
} //end class
?>
