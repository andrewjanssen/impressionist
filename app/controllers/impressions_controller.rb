class ImpressionsController < ActionController::Base
  def end_now
    if impression = Impression.find_by(request_hash: params[:request_hash])
      impression.end!
      render nothing: true, status: 200
    else
      logger.debug "Couldn't find Impression #{params[:request_hash]}."
      render nothing: true, status: 404
    end
  end
end
