/*global jQuery */
jQuery(function ($) {
  'use strict';

  $('#toggle-all, .toggle').on('change', function(){
    $(this).parent().submit();
  });
  $('.edit').on('focusout', function(){
    $(this).parent().submit();
  });
});
