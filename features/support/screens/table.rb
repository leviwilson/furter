class TablesPage
  include Furter

  label(:label_selected,:label => 'selectedLabel')
  table(:table_elements, :label => 'testTableView')
  views('TablesViewController')


end