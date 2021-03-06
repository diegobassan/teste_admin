# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_paper_trail_whodunnit

  protected

  def user_for_paper_trail
    user_signed_in? ? current_user.try(:id) : 'Unknown user'
  end
end
