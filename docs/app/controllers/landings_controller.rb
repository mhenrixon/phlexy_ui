# frozen_string_literal: true

class LandingsController < ApplicationController
  def show
    render Landings::ShowView.new
  end
end
