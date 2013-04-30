class ScrollPage
  include Furter

  views('PagingViewController')
  scroll_view(:scroll_view, :label=>'scrollView')



end