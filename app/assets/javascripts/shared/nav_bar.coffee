$(window).scroll =>
  $('#navBar').css 'top', $(this).scrollTop() + "px"
