<?php
#-------------------------------------------------------------------------
# Module: Album - This module allows you to add photo albums to your website.
# Version: 1.0-beta3
# (c) 2011 Robert Campbell <calguy1000@cmsmadesimple.org>
#
#-------------------------------------------------------------------------
# CMS - CMS Made Simple is (c) 2006 by Ted Kulp (wishy@cmsmadesimple.org)
# This project's homepage is: http://www.cmsmadesimple.org
#
# This file originally created by ModuleMaker module, version 0.2
# Copyright (c) 2006 by Samuel Goldstein (sjg@cmsmadesimple.org) 
#
#-------------------------------------------------------------------------
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
# Or read it online: http://www.gnu.org/licenses/licenses.html#GPL
#
#-------------------------------------------------------------------------
if( !isset($gCms) ) exit;

if( !is_array($this->__usedtemplates) || count($this->__usedtemplates) == 0 )
  {
    // nothing to do.
    return;
  }

$tmp = array();
foreach( $this->__usedtemplates as $one )
{
  $tmp[] = $db->qstr($one);
}
$query = 'SELECT metadata FROM '.cms_db_prefix().'module_album_templateextra WHERE template_name IN ('.implode(',',$tmp).')';
$tmp = $db->GetCol($query);
if( is_array($tmp) && count($tmp) )
  {
    foreach( $tmp as $one )
      {
	echo $one."\n";
      }
  }

#
# EOF
#
?>