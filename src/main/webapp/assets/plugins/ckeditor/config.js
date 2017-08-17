/**
 * @license Copyright (c) 2003-2014, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	
	// 图片上传配置
	config.filebrowserUploadUrl = 'upload?type=File';
	config.filebrowserImageUploadUrl = 'upload?type=Image';
	config.filebrowserFlashUploadUrl = 'upload?type=Flash';
	
	// 图片浏览配置
	config.filebrowserImageBrowseUrl = 'browerServer.do?type=image';
	

	 config.uiColor = '#14B8C4';
	 config.font_defaultLabel = '宋体';
	 config.fontSize_defaultLabel = '五号';
	 
	 config.font_names = '宋体/宋体;黑体/黑体;仿宋/仿宋;华文中宋/华文中宋;楷体/楷体;华文行楷/华文行楷;隶书/隶书;幼圆/幼圆;微软雅黑/微软雅黑;方正舒体/方正舒体;方正姚体/方正姚体;' + config.font_names;	
	 config.fontSize_sizes = '初号/42pt;小初/36pt;一号/26pt;小一/24pt;二号/22pt;小二/18pt;三号/16pt;小三/15pt;四号/14pt;小四/12pt;五号/10.5pt;小五/9pt;六号/7.5pt;小六/6.5pt;七号/5.5pt;八号/5pt;' + config.fontSize_sizes;
	 
	 config.fontSize_style = {
		element : 'span',
		styles : {
			'font-size' : '#(size)'
		},
		overrides : [ {
			element : 'font',
			attributes : {
				'size' : null
			}
		} ]
	};
	 
	 config.toolbar= [
					{ name: 'styles', items: ['Format', 'Font', 'FontSize' ] },
					{ name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ], items: [ 'Bold', 'Italic', 'Underline', 'Strike'] },
					{ name: 'colors', items: [ 'TextColor', 'BGColor' ] },
					{ name: 'paragraph', items: ['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock', '-', 'BidiLtr', 'BidiRtl'] },
					{ name: 'tools', items: ['Preview', 'Maximize'] },
					'/',
					{ name: 'clipboard', groups: [ 'clipboard', 'undo' ], items: [ 'insertcode','Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Undo', 'Redo' ] },
					{ name: 'paragraph', groups: [ 'list', 'indent', 'blocks', 'align', 'bidi' ], items: [ 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote'] },
					{ name: 'links', items: [ 'Link', 'Unlink', 'Anchor' ] },
					{ name: 'insert', items: [ 'Image', 'flvPlayer', 'Table', 'HorizontalRule', 'Smiley', 'SpecialChar'] },
					{ name: 'editing', groups: [ 'find', 'selection', 'spellchecker' ], items: [ 'Find', 'Replace', '-', 'SelectAll'] }	
	 			];
	 config.extraPlugins = 'insertcode';  
	 
	
};
