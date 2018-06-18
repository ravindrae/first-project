# -*- encoding: utf-8 -*-

require 'spec_helper'
require './models/ability'

describe Ability do

  # TODO: auto-generated
  describe '#new' do
    it 'works' do
      user = double('user')
      result = Ability.new(user)
      expect(result).not_to be_nil
    end
  end

end
