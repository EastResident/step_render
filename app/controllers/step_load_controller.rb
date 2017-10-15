# frozen_string_literal: true
class StepLoadController < ApplicationController
  layout false
  def partial
    @options = ActiveJob::Arguments.deserialize(Marshal.load(CGI.unescape(params[:key])))
    render inline: "<%= render *@options %>"
  end

  def fetch
    if params[:key]
      render inline: "<%= cache '#{params[:key]}', skip_digest: true do %><% end %>"
    else
      render nothing: true unless params[:key]
    end
  end
end
