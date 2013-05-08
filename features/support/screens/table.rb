class TablesPage
  include Furter

  label(:label_selected,:label => 'selectedLabel')
  table(:table_elements, :label => 'testTableView')
  table(:table_multiple, :label => 'tableMultipleSections')
  views('TablesViewController')


end