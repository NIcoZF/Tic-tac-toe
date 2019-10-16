# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('lib', __dir__)
require 'game'

class BoardCase
  attr_accessor :value, :id

  def initialize(id)
    @value = '.' # can be . X 0
    @id = id
  end
end
