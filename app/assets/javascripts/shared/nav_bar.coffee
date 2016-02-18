$(window).scroll =>
  $('#navBar').css 'top', $(this).scrollTop() + "px"

$(document).on 'page:load', =>
  $(document).foundation()
