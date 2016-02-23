$(window).scroll =>
  $('#navBar').css 'top', $(this).scrollTop() + "px"

# Reapply foundation manually. Turbolinks break foundation's auto run.
$(document).on 'page:load', =>
  $(document).foundation()
