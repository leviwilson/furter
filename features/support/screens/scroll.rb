class ScrollPage
  include Furter

  views('PagingViewController')
  scroll_view(:scroll_page, :label => 'scrollView')

  text(:text_first, :label => 'TextField:0')
  text(:text_second, :label => 'TextField:1')
  text(:text_third, :label => 'TextField:2')

end