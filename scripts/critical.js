var fs = require('hexo-fs');

hexo.locals.set('critical', function(){
	console.log("DOING CRITICAL CSS");
	return fs.readFileSync('themes/theme2/source/css/critical.min.css');
});
