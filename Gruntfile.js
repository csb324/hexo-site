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
        tasks: ['styles']
      },
      content: {
        files: ['source/**/*.md'],
        tasks: ['hexo']
      }
    },

    sass: {
      theme: {
        files: {
          "themes/theme2/source/css/theme.css":"themes/theme2/source/css/theme2.scss",
          "themes/theme2/source/css/critical.css":"themes/theme2/source/css/critical.scss"
        }
      }
    },

    cssmin: {
      target: {
        files: [{
          expand: true,
          cwd: "themes/theme2/source/css",
          dest: "themes/theme2/source/css",
          src: ['*.css', '!*.min.css'],
          ext: '.min.css'
        }]
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
    }

  });

  require('jit-grunt')(grunt);
  
  grunt.registerTask('styles', ['sass', 'cssmin']);

  grunt.registerTask('default', ['styles','hexo', 'watch']);

};