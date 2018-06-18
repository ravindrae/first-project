# -*- encoding: utf-8 -*-

require 'spec_helper'
require './controllers/users_controller'

describe UsersController do

  # TODO: auto-generated
  describe '#show' do
    it 'works' do
      users_controller = UsersController.new
      result = users_controller.show
      expect(result).not_to be_nil
    end
  end

  # TODO: auto-generated
  describe '#show_prof' do
    it 'works' do
      users_controller = UsersController.new
      result = users_controller.show_prof
      expect(result).not_to be_nil
    end
  end

end
