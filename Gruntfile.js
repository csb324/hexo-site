
module.exports = function(grunt) {

  grunt.initConfig({

    watch: {
      options: { livereload: true },
      theme: {
        files: ['**/*.swig'],
        tasks: ['hexo']
      },
      styles: {
        files: ['themes/**/*.scss'],
        tasks: ['sass']
      },
      content: {
        files: ['source/**/*.md'],
        tasks: ['hexo']
      }
    },

    sass: {
      theme: {
        files: {
          "themes/theme2/source/css/theme.css":"themes/theme2/source/css/theme2.scss"
        }
      }
    },


    hexo: {
      clean: {
        options: {
          root: '/',
          cliCmd: 'clean'
        }
      },
      generate: {
        options: {
          root: '/',
          cliCmd: 'generate'
        }
      },
    },
  });

  require('jit-grunt')(grunt);
  
  grunt.registerTask('default', ['hexo', 'watch']);

};