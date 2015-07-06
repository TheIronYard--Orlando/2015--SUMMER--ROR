// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(function(){
  $('#main').on('change', 'input[type="checkbox"]', function(){
    $(this).parent().submit();
  });
  $('#todo-list').on('dblclick', 'a', function(){
    $(this).parents('li').addClass('editing');
  });
  $('html').click(function(){
    $('li.editing').removeClass('editing');
  });
  $('#todo-list').click(function(){
    event.stopPropagation();
  })
  $('#filters a').click(function(){
    if($(this).hasClass('selected'))
      return false;
    switch($(this).attr('href')){
      case '/':
        $('#todo-list li').show();
        break;
      case '/active':
        $('#todo-list li.completed').hide();
        $('#todo-list li').not('.completed').show();
        break;
      case '/completed':
        $('#todo-list li.completed').show();
        $('#todo-list li').not('.completed').hide();
        break;
    }
    $('#filters a').removeClass('selected');
    $(this).addClass('selected');
    return false
  });
});