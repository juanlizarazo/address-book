$ ->
  # Sticky footer with jquery
  doc_height = $(window).height()
  footer_height = $('#footer').height()
  footer_top = $('#footer').position().top + footer_height

  if (footer_top < doc_height)
    $('#footer').css('margin-top', 10+ (doc_height - footer_top) + 'px')
