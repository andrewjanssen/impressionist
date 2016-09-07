class ImpressionsController < ActionController::Base
  def end_now
    Impression.find_by(request_hash: params[:request_hash]).end!
    render nothing: true, status: 200
  end
end
