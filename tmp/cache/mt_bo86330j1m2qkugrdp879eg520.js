
		//Creates a new plugin class and a custom listbox
		tinymce.create('tinymce.plugins.CMSLinkerPlugin', {
		createControl: function(n, cm) {
			switch (n) {
				case 'cmslinker':
					var c = cm.createMenuButton('cmslinker', {
						title : 'CMSMS Linker',
						image : 'http://localhost/barn/modules/MicroTiny/images/cmsmslink.gif',
						icons : false
					});

					c.onRenderMenu.add(function(c, m) {
							var mm = m.addMenu({title : '1 Home'});
		
						mm.add({title : '1 Home', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Home';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='home'}\">"+sel+"</a>");
						}});
							mm.addSeparator();
		
						mm.add({title : '1.1 Fireplace Lounge', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Fireplace Lounge';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='fireplace-lounge'}\">"+sel+"</a>");
						}});
		
						mm.add({title : '1.2 Barn Loft', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Barn Loft';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='barn-loft'}\">"+sel+"</a>");
						}});
		
						mm.add({title : '1.3 Deck and Patio', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Deck and Patio';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='deck-and-patio'}\">"+sel+"</a>");
						}});
		
						mm.add({title : '1.4 Outdoor Space', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Outdoor Space';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='outdoor-space'}\">"+sel+"</a>");
						}});
		
						mm.add({title : '1.5 More Amenities', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='More Amenities';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='more-ammenities'}\">"+sel+"</a>");
						}});
							var mm = m.addMenu({title : '2 Events'});
		
						mm.add({title : '2 Events', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Events';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='events'}\">"+sel+"</a>");
						}});
							mm.addSeparator();
		
						mm.add({title : '2.1 Weddings', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Weddings';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='weddings'}\">"+sel+"</a>");
						}});
		
						mm.add({title : '2.2 Holiday Parties', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Holiday Parties';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='holiday-parties'}\">"+sel+"</a>");
						}});
		
						mm.add({title : '2.3 Reunions', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Reunions';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='reunions'}\">"+sel+"</a>");
						}});
		
						mm.add({title : '2.4 Holiday Parties', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Holiday Parties';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='holiday-parties-2'}\">"+sel+"</a>");
						}});
		
						mm.add({title : '2.5 Conferences &amp; Meetings', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Conferences &amp; Meetings';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='conferences-meetings'}\">"+sel+"</a>");
						}});
		
						m.add({title : '3 History', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='History';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='history'}\">"+sel+"</a>");
						}});
		
						m.add({title : '4 Contact us', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Contact us';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='contact-us'}\">"+sel+"</a>");
						}});
		
						m.add({title : '5.1 Templates and stylesheets', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Templates and stylesheets';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='templates-and-stylesheets'}\">"+sel+"</a>");
						}});
		
						m.add({title : '5.2 Pages and navigation', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Pages and navigation';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='pages-and-navigation'}\">"+sel+"</a>");
						}});
		
						m.add({title : '5.3 Content', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Content';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='content_types'}\">"+sel+"</a>");
						}});
		
						m.add({title : '5.4 Menu Manager', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Menu Manager';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='menu-manager'}\">"+sel+"</a>");
						}});
		
						m.add({title : '5.5 Extensions', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Extensions';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='extensions'}\">"+sel+"</a>");
						}});
		
						m.add({title : '5.6 Event Manager', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Event Manager';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='event-manager'}\">"+sel+"</a>");
						}});
		
						m.add({title : '5.7 Workflow', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Workflow';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='workflow'}\">"+sel+"</a>");
						}});
		
						m.add({title : '5.8 Where do I get help?', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Where do I get help?';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='where-do-i-get-help'}\">"+sel+"</a>");
						}});
		
						m.add({title : '6.1 CMSMS tags in the template &#133;', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='CMSMS tags in the templates';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='cmsms_tags'}\">"+sel+"</a>");
						}});
		
						m.add({title : '6.2 Left simple navigation + 1 &#133;', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Left simple navigation + 1 column';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='navleft'}\">"+sel+"</a>");
						}});
		
						m.add({title : '6.3 Top simple navigation + le &#133;', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Top simple navigation + left subnavigation + 1 column';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='top_left'}\">"+sel+"</a>");
						}});
		
						m.add({title : '6.4 CSSMenu top + 2 columns', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='CSSMenu top + 2 columns';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='cssmenu_horizontal'}\">"+sel+"</a>");
						}});
		
						m.add({title : '6.5 CSSMenu left + 1 column', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='CSSMenu left + 1 column';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='cssmenu_vertical'}\">"+sel+"</a>");
						}});
		
						m.add({title : '6.6 Minimal template', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Minimal template';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='minimal-template'}\">"+sel+"</a>");
						}});
							var mm = m.addMenu({title : '6.7 Higher End'});
		
						mm.add({title : '6.7 Higher End', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Higher End';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='higher-end'}\">"+sel+"</a>");
						}});
							mm.addSeparator();
		
						mm.add({title : '6.7.1 NCleanBlue', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='NCleanBlue';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='ncleanblue'}\">"+sel+"</a>");
						}});
		
						mm.add({title : '6.7.2 ShadowMenu Tab + 2 colum &#133;', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='ShadowMenu Tab + 2 columns';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='shadowmenu-tab-2-columns'}\">"+sel+"</a>");
						}});
		
						mm.add({title : '6.7.3 ShadowMenu left + 1 colu &#133;', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='ShadowMenu left + 1 column';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='shadowmenu-left-1-column'}\">"+sel+"</a>");
						}});
		
						mm.add({title : '6.8 Simplex Theme', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Simplex Theme';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='simplex-theme'}\">"+sel+"</a>");
						}});
							var mmm = mm.addMenu({title : '7.1 Modules'});
		
						mmm.add({title : '7.1 Modules', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Modules';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='modules'}\">"+sel+"</a>");
						}});
							mmm.addSeparator();
		
						mmm.add({title : '7.1.1 News', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='News';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='news'}\">"+sel+"</a>");
						}});
		
						mmm.add({title : '7.1.2 Menu Manager', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Menu Manager';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='menu-manager-2'}\">"+sel+"</a>");
						}});
		
						mmm.add({title : '7.1.3 Theme Manager', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Theme Manager';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='theme-manager'}\">"+sel+"</a>");
						}});
		
						mmm.add({title : '7.1.4 MicroTiny', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='MicroTiny';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='microtiny'}\">"+sel+"</a>");
						}});
		
						mmm.add({title : '7.1.5 Search', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Search';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='search'}\">"+sel+"</a>");
						}});
		
						mmm.add({title : '7.1.6 Module Manager', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Module Manager';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='module-manager'}\">"+sel+"</a>");
						}});
							var mmm = mm.addMenu({title : '7.2 Tags'});
		
						mmm.add({title : '7.2 Tags', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Tags';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='tags'}\">"+sel+"</a>");
						}});
							mmm.addSeparator();
		
						mmm.add({title : '7.2.1 Tags in the core', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Tags in the core';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='tags-in-the-core'}\">"+sel+"</a>");
						}});
		
						mmm.add({title : '7.2.2 User Defined Tags', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='User Defined Tags';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='user-defined-tags'}\">"+sel+"</a>");
						}});
		
						m.add({title : '8 Directions', onclick : function() {
							var sel=tinyMCE.activeEditor.selection.getContent();
							if (sel=='') sel='Directions';
							tinyMCE.activeEditor.execCommand('mceInsertContent', false, "<a href=\"{cms_selflink href='directions'}\">"+sel+"</a>");
						}});
		
					});

					// Return the new menu button instance
					return c;
			}

			return null;
		}
		});

		// Register plugin with a short name
		tinymce.PluginManager.add('cmslinker', tinymce.plugins.CMSLinkerPlugin);

		 tinyMCE.init({ 
  
  mode : "exact",
  elements : "mt_content_en",
  body_class : "CMSMSBody",
      content_css : "http://localhost/barn/tmp/cache/stylesheet_combined_809462ab2c497d24fde011322cd72950.css",
    
  entity_encoding : "raw",
  button_tile_map : true, 

		
  theme : "advanced",
  skin : "o2k7",
  skin_variant : "black",
  theme_advanced_toolbar_location : "top",
  theme_advanced_toolbar_align : "left",
  visual : true,
	      
  accessibility_warnings : false,

  forced_root_block : '',      			
  fix_list_elements : true,
  verify_html : true,
  verify_css_classes : false,
  
  plugins : "paste,inlinepopups,cmslinker",
  
  paste_auto_cleanup_on_paste : true,
  paste_remove_spans : true,
  paste_remove_styles : true,
  theme_advanced_buttons1 : "undo,|,bold,italic,underline,|,cut,copy,paste,pastetext,removeformat,|,justifyleft,justifycenter,justifyright,justifyfull,|,bullist,numlist,|,cmslinker,link,unlink,|,image,|,formatselect",
  theme_advanced_buttons2 : "",
  theme_advanced_buttons3 : "",
  

  theme_advanced_blockformats : "p,div,h1,h2,h3,h4,h5,h6,blockquote,code",
  document_base_url : "http://localhost/barn/",

  relative_urls : true,
  remove_script_host : true,
  language: "en",
  dialog_type: "modal",
  apply_source_formatting : true  
	 

  ,file_browser_callback : 'CMSMSFilePicker'
  
});
  

function toggleMicroTiny(id) {
  if (!tinyMCE.getInstanceById(id))
    tinyMCE.execCommand('mceAddControl', false, id);
  else
    tinyMCE.execCommand('mceRemoveControl', false, id);
}
	
    
function CMSMSFilePicker (field_name, url, type, win) {
     
  var cmsURL = "http://localhost/barn/admin/moduleinterface.php?mact=MicroTiny,,filepicker,0&_sx_=e713a7d6&type="+type+"&showtemplate=false";
  
  tinyMCE.activeEditor.windowManager.open({
  
    file : cmsURL,
    title : 'File picker',
    width : '800',
    height : '500',
    resizable : "yes",
    scrollbars : "yes",
    inline : "yes",  
    close_previous : "no"
  
  }, {
    window : win,
    input : field_name
  });
  return false;
}

