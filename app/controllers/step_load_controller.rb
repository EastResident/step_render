# frozen_string_literal: true
class StepLoadController < ApplicationController
  layout false
  def partial
    @options = ActiveJob::Arguments.deserialize(Marshal.load(cookies.signed[params[:key]]))
    render inline: "<%= render *@options %>"
  end
end
