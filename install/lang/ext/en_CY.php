<?php
$lang['detected'] = 'Detected';
$lang['docroot_leaveblank'] = 'Leave this blank to use the system default';
$lang['test_xmlreader_class'] = 'Checking if the XMLReader class exists';
$lang['test_xmlreader_failed'] = 'The XMLReader class is not enabled in your php install.  You can still use the system but will not be able to use any of the remote module installation functions.';
$lang['test_check_xml_failed'] = 'XML support is not compiled into your php install. You can still use the system, but will not be able to use any of the remote module installation functions.';
$lang['installed_module'] = 'Module Installed';
$lang['automatedtask_success'] = 'Automated Task Succeeded';
$lang['ip_addr'] = 'IP Address';
$lang['install_admin_pwsalt_note'] = 'If you choose to enable password salts, there is absolutely no way to reset lost admin passwords, other than through the lost password functionality.   It is critical that you associate an email address with each admin account';
$lang['admin_salt'] = 'Salt Admin Passwords';
$lang['setup_flat_urls'] = 'Mae URL&#039;s flat wedi eu gosod';
$lang['install_timezone'] = 'Nid yw rhai gweinyddwyr yn rhedeg php 5.3 wedi gosod y Cylchfa amser yn gywir. Dewiswch y gylchfa amser priodol o&#039;r rhestr o&#039;r blaen. Os nad yw hyn yn angenrheidiol ar eich gweinydd efallai y byddwch yn dewis &quot;Dim&quot;, Fe allwch newid y gosodiad hwn yn y ffeil config.php ar unrhyw adeg yn y dyfodol.';
$lang['timezone'] = 'Cylchfa amser';
$lang['none'] = 'Dim';
$lang['test_error_estrict'] = 'Profi error_reporting i sicrhau bod E_STRICT wedi eu diffodd.';
$lang['test_estrict_failed'] = 'Mae E_STRICT wedi eu troi ymlaen';
$lang['info_estrict_failed'] = 'Nid yw rhai o&#039;r llyfrgelloedd y mae CMSMS yn defnyddio yn gweithio&#039;n dda gyda E_STRICT. Os gwelwch yn dda diffoddwch E_STRICT cyn parhau.';
$lang['test_error_edeprecated'] = 'Profi error_reporting i sicrhau bod E_DEPRECATED wedi eu diffodd';
$lang['test_edeprecated_failed'] = 'Mae E_DEPRECATED wedi eu troi ymlaen';
$lang['info_edeprecated_failed'] = 'Os ydy E_DEPRECATED wedi ei alluogi yn eich adroddwr camgymeriadau fydd  defnyddwyr yn gweld llawer o negeseuon rhybuddio a allai effeithio ar arddangos a gweithriediad y wefan.';
$lang['invalidemail'] = 'Mae&#039;r cyfeiriad e-bost a gofrestrwyd yn annilys';
$lang['empty_query'] = 'Ymholiad Gwag?? % S';
$lang['no_db_driver'] = 'Doedd Dim yrwyr cronfa ddata sy&#039;n cyd-fynd o hyd';
$lang['test_check_output_buffering'] = 'Gwirio allbwn glustogu';
$lang['test_check_output_buffering_failed'] = 'Cynnyrch glustog yn anabl. Mae&#039;n debyg na fyddwch yn gallu defnyddio unrhyw rai o&#039;r swyddogaethau sy&#039;n gofyn am hwn';
$lang['phpinfo'] = 'Dangoswch Gwybodaeth PHP';
$lang['mod_security'] = 'Diogelwch Weinyddiaeth Amddiffyn Apache (Mod_security)';
$lang['test_check_tempnam'] = 'Gwirio am Swyddogaeth tempnam';
$lang['test_check_db_drivers'] = 'gyrwyr DB';
$lang['test_check_db_drivers_failed'] = 'Dim yrwyr DB o hyd';
$lang['test_check_register_globals'] = 'Gwirio newidynnau gofrestr PHP';
$lang['test_check_register_globals_failed'] = 'newidynnau gofrestr PHP yn weithredol. Am resymau diogelwch, dylai hyn fod yn anabl.';
$lang['test_check_disable_functions'] = 'Gwirio swyddogaethau analluogu PHP';
$lang['test_check_disable_functions_failed'] = 'Rhybudd: mae hwn yn rhestr o swyddogaethau anabl ar eich gweinyddwr.';
$lang['install_admin_db_port'] = 'Porthladd Cronfa Ddata';
$lang['install_admin_db_port_info'] = 'Os nad ydych yn gwybod, gadewch hwn yn wag i&#039;w defnyddio gosodiadau diofyn.';
$lang['install_admin_db_socket'] = 'Soced Cronfa Data';
$lang['install_admin_db_socket_info'] = 'DIM CEFNOGAETH';
$lang['install_admin_frontendlang'] = 'Iaith diofyn ar gyfer y blaen y wefan. Mae hyn yn addasu&#039;r locale a ddefnyddir ar gyfer gwahanol swyddogaethau trin dyddiadau, ac ati';
$lang['install_default_encoding'] = 'Ym mron pob achos, dylsai default_encoding defnyddio utf-8.';
$lang['installer_done'] = '[Wedi Cwbwlhau]';
$lang['installer_failed'] = '[Wedi Methu]';
$lang['create_permission'] = 'Creu caniat&acirc;d ...';
$lang['add_column_sql'] = 'Ychwanegu colofn i tabl %s ....';
$lang['update_table_sql'] = 'Diweddaru tabl %s ...';
$lang['installing_module'] = 'Wrthi yn gosod modiwl %s ...';
$lang['updating_schema_version'] = 'Diweddaru sgema fersiwn %s ... ';
$lang['upgrade_config'] = 'Uwchraddio config.php';
$lang['upgrade_config_info'] = 'uwchraddio config';
$lang['upgrade_failed_again'] = 'Mae un neu fwy o prosesau uwchraddio wedi methu. Cywirwch y broblem a chliciwch y botwm isod i ailwirio.';
$lang['upgrade_cache_dirs'] = 'Glanhau cyfeiriaduron cache';
$lang['cannot_clean_cache_dirs'] = 'Methu glanhau cyfeiriaduron cache! ';
$lang['upgrade_schema'] = 'Uwchraddio sgema';
$lang['need_upgrade_schema'] = 'Mae angen uwchraddio&#039;r CMS. <br /> Rdych bellach yn rhedeg sgema fersiwn %s ac mae angen i chi uwchraddio i fersiwn %s';
$lang['schema_ok'] = 'Mae&#039;r gronfa ddata CMS yn gyfredol. Gan ddefnyddio sgema fersiwn %s';
$lang['noneed_upgrade_schema'] = 'Mae&#039;r gronfa ddata CMS yn gyfredol. Gan ddefnyddio sgema fersiwn %s ';
$lang['upgrade_modules'] = 'Uwchraddio modiwlau';
$lang['noneed_upgrade_modules'] = 'Mae&#039;r modiwlau craidd yn gyfoes ';
$lang['upgrade_sql_module_from_to'] = 'Upgrading SQL of &quot;%s&quot; module from %s to %s ...';
$lang['upgrade_event_module_from_to'] = 'Upgrading Events of &quot;%s&quot; module from %s to %s ...';
$lang['sitedown_not_removed'] = 'Could not remove the tmp/cache/SITEDOWN file. Please remove manually or you will continue to show a &quot;Site Down for Maintainence&quot; message on your site';
$lang['upgrade_ok'] = 'Please review config.php, modify any new settings as necessary and then reset it&#039;s permissions back to a locked state. You should also check that all of your modules are up to date, by going to the Extensions -> Modules page and looking for any listed as &quot;Needs Upgrade&quot;';
$lang['upgrade_complete'] = 'Broses Uwchraddio wedi cwblhau ';
$lang['upgrade_end'] = 'Mae CMS yn gyfredol. Cliciwch %s i fynd at eich safle CMS neu gallwch %s.';
$lang['here'] = 'Fan hyn';
$lang['go_to_admin'] = 'Ewch i&#039;r Panel Rheolu';
$lang['errorfilenot'] = 'Nid oedd y ffeil ar gael!';
$lang['errorfilenotwritable'] = 'Nid oes modd ysgrifennu i&#039;r ffeil!';
$lang['nofiles'] = 'Nid ywr cymhwyster yma yn bodoli!';
$lang['is_directory'] = 'Mae&#039;r adnodd hwn yn gyfeiriadur!';
$lang['is_readable_false'] = 'Nid oes modd darllen y ffeil!';
$lang['checksum_match'] = 'Mae&#039;r Checksum yn cywyr!';
$lang['checksum_not_match'] = 'Nid ywr Checksum yn gywir!';
$lang['not_checksum'] = 'Nid oes modd adfer y checksum!';
$lang['format_datetime'] = '%c';
$lang['upload_err_ini_size'] = 'Mae&#039;r ffeil llwytho i fyny yn fwy na&#039;r gyfarwyddeb lwytho&#039;r yn php.ini! ';
$lang['upload_err_form_size'] = 'Mae&#039;r ffeil llwytho i fyny yn fwy na&#039;r gyfarwyddeb MAX_FILE_SIZE a bennir yn y ffurf HTML.';
$lang['upload_err_partial'] = 'Rhoedd y ffeil a lwythwyd i fyny ond wedi eu llwytho i fyny yn rhannol.';
$lang['upload_err_no_file'] = 'Nid oedd unrhyw ffeil wedi eu llwytho i fynnu.';
$lang['upload_err_no_tmp_dir'] = 'Mae&#039;r folder dros dro ar goll.';
$lang['upload_err_cant_write'] = 'Wedi methu ysgrifennu ffeil i ddisg.';
$lang['upload_err_extension'] = 'Delwedd llwytho wedi eu stopio gan estyniad.';
$lang['upload_err_empty'] = 'Mae gan y ffeil maint o ddim';
$lang['upload_err_unknown'] = ' broblem Anhysbys yn llwytho ffeil.';
$lang['function_file_uploads_off'] = 'Mae gosodiad file_uploads wedi diffodd yn eich ffurfweddiad php!';
$lang['upload_file_no_readable'] = 'Nid yw&#039;r ffeil a Llwythwyd i fyny yn ddarllenadwy!';
$lang['upload_file_multiple'] = 'Ni chaniateir i chi llwytho mwy nag un ffeil ar y tro!';
$lang['test_check_magic_quotes_gpc'] = 'Magic Quotes ar gyfer gweithrediadau  GET/POST/COOKIE';
$lang['test_check_magic_quotes_gpc_failed'] = 'Pan mae magic_quotes wedi troi ymlaen, Mae pob un-Dyfynnwch, dyfynnwch dwbl a slaes yn dianc gyda slaes yn awtomatig. Gall hyn achosi llawer o broblemau yn CMS.';
$lang['test_check_magic_quotes_runtime'] = 'Magic quotes wrthi yn rhedeg';
$lang['test_check_magic_quotes_runtime_failed'] = 'Pan mae magic_quotes wedi troi ymlaen, Mae&#039;r rhan fwyaf o swyddogaethau y bydd yn dychwelyd data o unrhyw fath o ffynhonnell allanol gan gynnwys cronfeydd data a ffeiliau testun yn dianc dyfyniadau gyda slaes. Bydd hyn yn achosi problemau gyda CMSMS.';
$lang['install_admin_checksum'] = 'Gwiriwch eich gosodiad';
$lang['upgrade_admin_checksum'] = 'Gwiriwch eich system uwchraddio';
$lang['checksum'] = 'Prawf Checksum';
$lang['checksum_file'] = 'Ffeil Checksum';
$lang['install_test_checksum'] = 'Gallwch dilysu dilysrwydd eich ffeiliau CMS drwy gymharu yn erbyn checksum gwreiddiol CMS. Gall helpu i ddod o hyd i broblemau gyda Llwythiadau.';
$lang['checksum_passed'] = 'Mae pob checksum yn unol! ';
$lang['checksum_failed'] = 'Checksum yn cyd-fynd ā gwallau. Edrychwch yn yr degfennau cymorth am fwy o wybodaeth';
$lang['test_check_open_basedir'] = 'Gwiriwch am Basedir Agored PHP';
$lang['test_check_open_basedir_failed'] = 'Mae cyfyngiadau i bob pwrpas as basedir agored. Efallai eich bod yn cael anhawster gyda rhai nodweddion ychwanegol gyda&#039;r cyfyngiad hwn.';
$lang['unlimited'] = 'digyfyngedig';
$lang['test_open_basedir_session_save_path'] = 'Mae cyfyngiadau basedir Agored yn ymddangos i fod mewn gwirionedd. Os oes gennych broblemau SESIWN ac yn gweithio ini_set, gallwch geisio galluogi cwcis sesiwn gyda ychwanegu: ini_set (&#039;session.use_only_cookies&#039;, 1); i dop y config.php';
$lang['install_warn_db_createtables'] = 'Fel arfer dylai&#039;r maes hwn gael ei gwirio bob amser. Byddwch ofalus wrth analluogi nodwedd hon';
$lang['install_admin_tablesnotcreated'] = 'Mae&#039;r broses gosod wedi cwblhau, yn y tablau nad yw eich cais eu creu cronfa ddata. Fodd bynnag, y ffeil config wedi cael ei ailosod ac mae&#039;r holl brofion cyn-installation wedi mynd heibio. Diolch i chi, a dyma yw eich';
$lang['info_create_dir_and_file'] = 'Ni all y perchennog Broses HTTP greu ffeil y tu mewn i cyfeiriadur ei fod yn berchen. Mae hyn fwy na thebyg yn golygu bod y ddelw ddihangol wedi ei alluogi mewn rhyw ffordd. Mae llawer o swyddogaethau a wneir y tu mewn CMS Made Simple, ni fydd yn gweithredu yn briodol heb y gallu hwn. Nid oes modd Parhau.';
$lang['test_create_dir_and_file'] = 'Gwirio os gall y broses httpd greu ffeil tu mewn i&#039;r cyfeiriadur a greuwyd.';
$lang['cms_site'] = 'Wefan CMS';
$lang['or_greater'] = 'Neu fwy';
$lang['sitename'] = 'Enw&#039;r Wefan';
$lang['warning_safe_mode'] = '<strong> <em> RHYBUDD: </ em> </ strong>Mae Modd Diogel PHP wedi ei alluogi. Bydd hyn yn achosi anhawster gyda ffeiliau llwytho i fyny drwy gyfrwng y porwr gwe rhyngwyneb, gan gynnwys delweddau, thema a phecynnau modiwl XML. Fe&#039;ch cynghorir i gysylltu &acirc;&#039;ch gweinyddwr safle i weld am anablu&#039;n ddelw ddihangol .';
$lang['test'] = 'Prawf';
$lang['results'] = 'Cynlyniadau';
$lang['untested'] = 'Nid iw hyn wedi eu brofi';
$lang['owner'] = 'Perchennog';
$lang['permissions'] = 'Caniatadau';
$lang['off'] = 'I ffwrdd';
$lang['on'] = 'Ymlaen';
$lang['permission_information'] = 'Gwybodaeth Caniatau';
$lang['server_os'] = 'System Gweinyddu';
$lang['server_api'] = 'API y Gweinydd';
$lang['server_software'] = 'Meddalwedd y Gweinydd';
$lang['server_information'] = 'Gwybodaeth am y Gweinydd';
$lang['session_save_path'] = 'Llwybr Sesiwn Achub ';
$lang['max_execution_time'] = 'Uchafswm Amser Cyflawni';
$lang['gd_version'] = 'Fersiwn GD';
$lang['upload_max_filesize'] = 'Maint Uchafswm Llwytho ffeiliau i fyny';
$lang['post_max_size'] = 'Maint Uchafswm Postio';
$lang['memory_limit'] = 'Terfyn Cof PHP';
$lang['server_db_type'] = 'Gweinydd Cronfa Ddata';
$lang['server_db_version'] = 'Fersiwn Cronfa Ddata Y Gweinydd ';
$lang['phpversion'] = 'Fersiwn Cyfredol PHP';
$lang['safe_mode'] = 'Ddelw Ddihangol PHP';
$lang['php_information'] = 'Gwybodaeth PHP';
$lang['cms_install_information'] = ' Gwybodaeth Gosod CMS';
$lang['cms_version'] = 'Fersiwn CMS';
$lang['systeminfo_copy_paste'] = 'Os gwelwch yn dda gop&iuml;wch a gludwch y testun a ddewiswyd i mewn i&#039;ch fforwm postio';
$lang['help_systeminformation'] = 'Mae&#039;r wybodaeth a ddangosir isod yn cael ei gasglu o amrywiaeth o leoliadau, ac yn crynhoi fel y gall y byddwch yn gallu dod o hyd i peth o&#039;r wybodaeth sy&#039;n ofynnol wrth geisio helpu i wneud diagnosis o broblem neu wneud cais gyda&#039;ch gosodiad CMS Made Simple.';
$lang['systeminfo'] = 'Gwybodaeth System';
$lang['systeminfodescription'] = 'Arddangos ddarnau amrywiol o wybodaeth am eich system all fod yn ddefnyddiol wrth wneud diagnosis o broblemau';
$lang['error'] = 'Gwall';
$lang['new_version_available'] = '<em> Rhybudd: </ em> Mae fersiwn newydd o&#039;r CMS Made Simple ar gael. Rhowch wybod i &acirc;&#039;ch gweinyddwr.';
$lang['info_urlcheckversion'] = 'Os mae &amp;quot;dim&amp;quot; yw gair y URL, ni fydd unrhyw archwiliadau yn cael ei wneud. <br/> Bydd llinyn gwag yn arwain at URL diofyn yn cael ei ddefnyddio.';
$lang['urlcheckversion'] = 'Gwirio am fersiynau CMS newydd gan ddefnyddio&#039;r URL hwn';
$lang['read'] = 'Darllen';
$lang['write'] = 'Ysgrifennu';
$lang['execute'] = 'Gweithredu';
$lang['group'] = 'Grŵp';
$lang['other'] = 'Arall';
$lang['global_umask'] = 'Mask Creu Ffeiliau (umask)';
$lang['errorcantcreatefile'] = 'Doedd dim modd creu ffeil (Problem caniat&acirc;d?)';
$lang['add'] = 'Ychwanegu';
$lang['about'] = 'Gwybodaeth';
$lang['action'] = 'Gweithredu';
$lang['actionstatus'] = 'Gweithrediad/Statws';
$lang['active'] = 'Actif';
$lang['cantremove'] = 'Methu Dileu';
$lang['changepermissions'] = 'Newid Caniatadau';
$lang['changepermissionsconfirm'] = 'RHYBUDD DEFNYDD \n\n Gweithrediad sy&#039;n ceisio sicrhau bod yr holl ffeiliau sy&#039;n rhan o&#039;r modiwl yn ysgrifennadwy gan y gweinydd we. \n A ydych yn siwr eich bod am barhau?';
$lang['success'] = 'Llwyddiant';
$lang['advanced'] = 'Uwch';
$lang['back'] = 'Yn &ocirc;l i&#039;r Ddewislen';
$lang['cancel'] = 'Canslo';
$lang['cantchmodfiles'] = 'Couldn&#039;t change permissions on some files';
$lang['cantremovefiles'] = 'Problem Dileu Ffeiliau (caniat&acirc;d?)';
$lang['create'] = 'Creu';
$lang['database'] = 'Cronfa Data';
$lang['databaseprefix'] = ' Rhagddodiad  Cronfa Ddata';
$lang['databasetype'] = 'Math o Gronfa Ddata';
$lang['date'] = 'Dyddiad';
$lang['default'] = 'Default';
$lang['delete'] = 'Dileu';
$lang['deleteconfirm'] = 'A ydych yn sicr eich bod am ddileu -%s - ?';
$lang['description'] = 'Disgrifiad';
$lang['directoryexists'] = 'Mae&#039;r cyfeiriadur hwn eisoes yn bodoli.';
$lang['down'] = 'I lawr';
$lang['edit'] = 'Golygu';
$lang['email'] = 'Cyfeiriad E-bost';
$lang['errordeletingfile'] = 'Doedd dim modd dileu ffeil. Broblem Caniatadau?';
$lang['errordirectorynotwritable'] = 'Dim caniat&acirc;d i ysgrifennu yn y cyfeiriadur. Gallai hyn gael ei achosi gan hawliau  ffeil a berchnogaeth. Hefyd fe all (Safe Mode) fod ymlaen.';
$lang['cachenotwritable'] = 'Nid yw&#039;r ffolder Cache yn ysgrifenadwy. Ni fydd Clirio storfa yn gweithio. Gwnewch y ffolder tmp/cache yn llawn darllenadwy/ysgrifenedig a gweithredu caniat&acirc;d (chmod 777). Efallai y bydd rhaid i analluoga ddelw diogel.';
$lang['modulesnotwritable'] = 'Nid yw&#039;r ffolder modiwlau yn ysgrifenadwy, os hoffech chi osod fodiwlau drwy lanlwytho ffeil XML mae angen i chi wneud y ffolder modiwlau wedi llawn darllen/ysgrifennu a gweithredu caniat&acirc;d (chmod 777). Gall modd Diogel hefyd fod mewn gwirionedd.';
$lang['false'] = 'Ffug';
$lang['settrue'] = 'Gosod Gwir';
$lang['filename'] = 'Enw Ffeil';
$lang['filesize'] = 'Maint Ffeil';
$lang['help'] = 'Help';
$lang['language'] = 'Iaith';
$lang['lastname'] = 'Cyf Enw';
$lang['name'] = 'Enw';
$lang['password'] = 'Cyfrinair';
$lang['passwordagain'] = 'Cyfrinair (eto)';
$lang['remove'] = 'Dileu';
$lang['saveconfig'] = 'Cadw Ffurfweddiad';
$lang['true'] = 'Wir';
$lang['setfalse'] = 'Gosod Ffug ';
$lang['type'] = 'Math';
$lang['typenotvalid'] = 'Nid yw yn Math ddilys';
$lang['unknown'] = 'Anhysbys';
$lang['user'] = 'Defnyddiwr';
$lang['userdefinedtags'] = 'Tags Diffiniedig Defnyddiwr';
$lang['usermanagement'] = 'Rheoli Defnyddwyr';
$lang['username'] = 'Enw defnyddiwr';
$lang['usernameincorrect'] = 'Enw defnyddiwr neu gyfrinair anghywir';
$lang['version'] = 'Fersiwn';
$lang['install_title'] = '(cam% s) o llwytho a gosod CMS Made Simple';
$lang['install_system'] = 'Gosod System ';
$lang['install_thanks'] = 'Diolch am llwytho CMS Made Simple';
$lang['upgrade_title'] = '(cam s%) o  Uwchraddio CMS Made Simple';
$lang['upgrade_system'] = 'Uwchraddio System';
$lang['upgrade_thanks'] = 'Diolch am uwchraddio CMS Made Simple i';
$lang['install_please_read'] = 'Please read the <a rel="external" href="http://wiki.cmsmadesimple.org/index.php/User_Handbook/Installation/Troubleshooting">Installation Troubleshooting</a> page in the CMS Made Simple Documentation Wiki.';
$lang['install_checking'] = 'Checking permissions and PHP settings';
$lang['install_test'] = 'Test';
$lang['install_result'] = 'Result';
$lang['install_required_settings'] = 'Required settings';
$lang['install_recommended_settings'] = 'Recommended settings';
$lang['install_you_have'] = 'You have';
$lang['install_legend'] = 'Legend';
$lang['install_symbol'] = 'Symbol';
$lang['install_definition'] = 'Definition';
$lang['install_value_passed'] = 'A required test passed';
$lang['install_value_failed'] = 'A required test failed';
$lang['install_error_fragment'] = 'Info Installation Troubleshooting';
$lang['install_value_required'] = 'A setting is below a required minimum value';
$lang['install_value_recommended'] = 'A setting is above the required value, but below the recommended value<br />or... A capability that <em>may</em> be required for some optional functionality is unavailable';
$lang['install_value_exceed'] = 'A setting meets or exceeds the recommended threshhold<br />or... A capability that <em>may</em> be required for some optional functionality is available';
$lang['install_test_failed'] = 'One or more tests have failed or are in warning. You can still install the system but some functions may not work correctly.<br />Please try to correct the situation and click &quot;Try Again&quot;, or click the &quot;Continue&quot; button if are recommended only.';
$lang['install_test_passed'] = 'All tests passed (at least at a minimum level). Please click the &quot;Continue&quot; button.';
$lang['install_failed_again'] = 'One or more tests have failed. Please correct the problem and click the button below to recheck.';
$lang['install_try_again'] = 'Try Again';
$lang['install_continue'] = 'Continue';
$lang['failure'] = 'Failure';
$lang['caution'] = 'Caution';
$lang['install_admin_umask'] = 'Test File Creation Mask';
$lang['install_test_umask'] = 'Please click Test button for check the umask entered ...';
$lang['test_umask_text'] = 'umask (abbreviated from user file creation mode mask) is a function in POSIX environments which affects the default file system mode for newly created files and directories of the current process. It controls which of the file permissions will not be set for any newly created file.';
$lang['test_check_umask'] = 'Result test on file created in';
$lang['test_umask_not_given'] = 'Umask not given';
$lang['test_check_umask_failed'] = 'Test umask failed';
$lang['test_username_not_given'] = 'You must supply a Username.';
$lang['test_username_illegal'] = 'Username contains illegal characters!';
$lang['test_not_both_passwd'] = 'Please complete both password fields.';
$lang['test_passwd_not_match'] = 'Password fields do not match!';
$lang['test_email_accountinfo'] = 'E-mail accountinfo selected, but no E-mail address given!';
$lang['test_database_prefix'] = 'Database prefix contains invalid characters';
$lang['test_no_dbms'] = 'No dbms selected!';
$lang['test_could_not_connect_db'] = 'Could not connect to the database. Verify that username and password are correct, and that the user has access to the given database.';
$lang['test_could_not_drop_table'] = 'Could not drop a table. Verify that the user has privileges to drop tables in the given database.';
$lang['test_could_not_create_table'] = 'Could not create a table. Verify that the user has privileges to create tables in the given database.';
$lang['test_check_php'] = 'Checking for PHP version %s+';
$lang['test_min_recommend'] = '(minimum %s, recommend %s or greater)';
$lang['test_min_recommend_plus'] = '(min %s, recommend %s+)';
$lang['test_requires_php_version'] = 'CMS Made Simple requires a php version of 5.2.4 or greater (you have %s), but PHP %s or greater is recommended to ensure maximum compatibility with third party addons';
$lang['test_check_md5_func'] = 'Checking for md5 Function';
$lang['test_check_safe_mode'] = 'Checking for safe mode';
$lang['test_check_safe_mode_failed'] = 'PHP safe mode could create some problems with uploading files and other functions. It all depends on how strict your server safe mode settings are.';
$lang['test_check_tokenizer'] = 'Checking for tokenizer functions';
$lang['test_check_tokenizer_failed'] = 'Not having the tokenizer could cause pages to render as purely white. We required you have this installed.';
$lang['test_check_gd'] = 'Checking for GD library';
$lang['test_check_gd_failed'] = 'The GD library is mandatory for some modules and functionality.';
$lang['test_check_write'] = 'Checking write permission on';
$lang['test_may_not_exist'] = 'This file may not exist yet. If it does not, you should create an empty file with this name. Please also ensure that this file writable by the web server process.';
$lang['could_not_retrieve_a_value'] = 'Could not retrieve a value.... passing anyways.';
$lang['displaying_the_value_originally'] = '<br />Displaying the value originally set in the config file (this may not be accurate).';
$lang['test_check_xml_func'] = 'Checking for basic XML (expat) support';
$lang['test_allow_url_fopen_failed'] = 'When allow url fopen is disabled you will not be able to accessing URL object like file using the ftp or http protocol.';
$lang['test_remote_url'] = 'Test for remote URL';
$lang['test_remote_url_failed'] = 'You will probably not be able to open a file on a remote web server.';
$lang['connection_error'] = 'Outgoing http connections do not appear to work! There is a firewall or some ACL for external connections?. This will result in module manager, and potentially other functionality failing.';
$lang['remote_connection_timeout'] = 'Connection Timed Out!';
$lang['search_string_find'] = 'Connection ok!';
$lang['connection_failed'] = 'Connection failed!';
$lang['remote_response_ok'] = 'Remote response: ok!';
$lang['remote_response_404'] = 'Remote response: not found!';
$lang['remote_response_error'] = 'Remote response: error!';
$lang['test_check_file_upload'] = 'Checking file uploads';
$lang['test_check_file_failed'] = 'When file uploads are disabled you will not be able to use any of the file uploading facilities included in CMS Made Simple. If possible, this restriction should be lifted by your system admin to properly use all file management features of the system. Proceed with caution.';
$lang['test_check_memory'] = 'Checking PHP memory limit';
$lang['test_check_memory_failed'] = 'You may not have enough memory to run CMSMS correctly, or with all of your desired addons. If possible, you should try to get your system admin to raise this value. Proceed with caution.';
$lang['test_check_time_limit'] = 'Checking PHP time limit in second';
$lang['test_check_time_limit_failed'] = 'Number of seconds a script is allowed to run. If this is reached, the script returns a fatal error.';
$lang['test_check_post_max'] = 'Checking max post size';
$lang['test_check_post_max_failed'] = 'You will probably not be able to submit (larger) data. Please be aware of this restriction.';
$lang['test_check_upload_max'] = 'Checking max upload file size';
$lang['test_check_upload_max_failed'] = 'You will probably not be able to upload (larger) files using the included file management functions. Please be aware of this restriction.';
$lang['test_check_writable'] = 'Checking if %s is writable';
$lang['test_check_upload_failed'] = 'The uploads folder is not writable. You can still install the system, but you will not be able to upload files via the Admin Panel.';
$lang['test_check_images_failed'] = 'The images folder is not writable. You can still install the system, but you will not be able to upload and use images via the Admin Panel.';
$lang['test_check_modules_failed'] = 'The modules folder is not writable. You can still install the system, but you will not be able to upload modules via the Admin Panel.';
$lang['test_check_file_get_contents'] = 'Checking for file_get_contents';
$lang['test_check_file_get_contents_failed'] = 'You will probably not be able to use any of functionality that uses this function';
$lang['test_check_session_save_path'] = 'Checking if session.save_path is writable';
$lang['test_empty_session_save_path'] = 'Your session.save_path is empty. PHP will use the temporary directory of your OS. If you have SESSION problems and ini_set works you can try to enable session cookies adding: ini_set(&#039;session.use_only_cookies&#039;, 1);  on top of include.php';
$lang['test_check_session_save_path_failed'] = 'Your session.save_path is &quot;%s&quot;. Not having this as writable may make logins to the Admin Panel not work. You may want to look into making this path writable if you have trouble logging into the Admin Panel. This test may fail if safe_mode is enabled (see below).';
$lang['test_check_ini_set'] = 'Checking if ini_set works';
$lang['test_check_ini_set_failed'] = 'Although the ability to override php ini settings is not mandatory, some addon (optional) functionality uses ini_set to extend timeouts, and allow uploading of larger files, etc. You may have difficulty with some addon functionality without this capability. This test may fail if safe_mode is enabled (see below).';
$lang['install_admin_header'] = 'Admin Account Information';
$lang['install_admin_info'] = 'Select the username, password and email address for your admin account. Please make sure you record this password somewhere.';
$lang['install_admin_email'] = 'E-mail Address';
$lang['install_admin_email_info'] = 'E-Mail Account Information';
$lang['install_admin_email_note'] = '<strong>Note:</strong> This task uses the php&#039;s mail function. If you don&#039;t receive this email, it may be an indication that your server is not properly configured and that you should contact your host administrator.';
$lang['install_admin_sitename'] = 'This is the name of your site. It will be used in various places of the default templates and can be used anywhere with the {sitename} tag.';
$lang['install_admin_db'] = 'Database Information';
$lang['install_admin_db_info'] = '<p>Make sure you have created your database and granted full privileges to a user to use that database.</p>
<p>For MySQL, use the following:</p>
<p>Log in to mysql from a console and run the following commands:</p>
<ol>
<li>create database cms; (use whatever name you want here but make sure to remember it, you&#039;ll need to enter it on this page)</li>
<li>grant all privileges on cms.* to cms_user@localhost identified by &#039;cms_pass&#039;;</li>
</ol>';
$lang['install_admin_follow'] = 'Please complete the following fields';
$lang['install_admin_db_type'] = 'Database Type';
$lang['install_admin_no_db'] = 'No valid database drivers appear to be compiled into your PHP install. Please confirm that you have mysql, mysqli, and/or postgres7 support installed, and try again.';
$lang['install_admin_db_host'] = 'Database host address';
$lang['install_admin_db_name'] = 'Database name';
$lang['install_admin_db_create'] = 'Create Tables (Warning: Deletes existing data)';
$lang['install_admin_db_prefix'] = 'Table prefix';
$lang['install_admin_db_sample'] = 'Install sample content and templates';
$lang['retry'] = 'Retry';
$lang['install_admin_db_create_seq'] = 'Creating %s table sequence...';
$lang['install_admin_importing'] = 'Importing sample data...';
$lang['invalid_query'] = 'Invalid query: %s';
$lang['install_creating_table'] = '<p>Creating %s table... [%s]</p>';
$lang['install_creating_index'] = '<p>Creating index in %s table... [%s]</p>';
$lang['done'] = 'done';
$lang['failed'] = 'failed';
$lang['install_admin_error_schema'] = 'Error in retrieve SQL schema';
$lang['install_admin_set_account'] = 'Setting admin account information...';
$lang['install_admin_set_sitename'] = 'Setting sitename...';
$lang['install_admin_setup'] = 'Now let&#039;s continue to setup your configuration file, we already have most of the stuff we need. Chances are you can leave all these values alone, so when you are ready, click Continue.';
$lang['install_admin_docroot'] = 'CMS Document root (as seen from the webserver)';
$lang['install_admin_docroot_path'] = 'Llwybr at wraidd Ddogfen ';
$lang['install_admin_querystring'] = 'Ymholiad llinyn (adael hwn ei ben ei hun oni bai eich bod yn cael trafferth, yna config.php golygu &acirc; llaw)';
$lang['invalid_querys'] = 'RHYBUDD <b> <b/>: ymholiadau annilys ar eich DB!';
$lang['install_admin_sitedown'] = 'Gwall: Methwyd cael gwared ar y tmp / cache / SITEDOWN ffeil. Os gwelwch yn dda gwared &acirc; llaw. ';
$lang['install_admin_update_hierarchy'] = 'Diweddaru safleoedd hierarchaeth...';
$lang['install_admin_set_core_event'] = 'Sefydlu digwyddiadau craidd ...';
$lang['install_admin_install_modules'] = ' Gosod modiwlau... ';
$lang['install_admin_index_search'] = 'Chwilio Mynegai ... ';
$lang['install_admin_clear_cache'] = 'Clirio storfa safle (os oes un) ... ';
$lang['install_admin_emailing'] = 'Mae gwybodaeth cyfrif rheoli yn cael eu E-bostio.';
$lang['install_admin_congratulations'] = 'Llongyfarchiadau, mae popeth yn barod  - dyma eich';
$lang['could_not_connect_db'] = 'Doedd dim modd cysylltu &acirc;&#039;r gronfa ddata. Gwiriwch fod enw defnyddiwr a chyfrinair yn gywir, a bod y defnyddiwr yn cael mynediad i&#039;r gronfa ddata a roddir.';
$lang['cannot_write_config'] = 'Gwall: Nid oes modd ysgrifennu i %s.';
$lang['email_accountinfo_subject'] = 'Cyfrif Gwybodaeth Gweinyddiaeth CMS Made Simple';
$lang['email_accountinfo_message'] = 'Diolch i chi am osod CMS Made Simple.

Dyma eich wybodaeth cyfrif newydd:
enw defnyddiwr: %s
cyfrinair: %s

Log i mewn i&#039;r safle admin yma: %s';
$lang['utma'] = '156861353.34608955.1340622751.1340622751.1340622751.1';
$lang['utmz'] = '156861353.1340622751.1.1.utmccn=(direct)|utmcsr=(direct)|utmcmd=(none)';
$lang['utmb'] = '156861353';
$lang['utmc'] = '156861353';
?>