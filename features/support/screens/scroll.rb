class ScrollPage
  include Furter

  views('PagingViewController')
  scroll_view(:scroll_page, :label => 'scrollView')

  label(:label_first, :label => 'TextField:0')
  label(:label_second, :label => 'TextField:1')
  label(:label_third, :label => 'TextField:2')

end