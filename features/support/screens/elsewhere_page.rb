class ElsewherePage
  include Furter

  def active?
    has_text? 'You are now elsewhere.'
  end
end