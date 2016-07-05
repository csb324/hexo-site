var fs = require('hexo-fs');

hexo.locals.set('critical', function(){
	return fs.readFileSync('themes/theme2/source/css/critical.min.css');
});
