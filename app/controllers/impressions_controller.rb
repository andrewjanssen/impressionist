class ImpressionsController < ActionController::Base
  def end_now
    if impression = Impression.find_by(request_hash: params[:request_hash])
      impression.end!
      head :ok
    else
      logger.debug "Couldn't find Impression #{params[:request_hash]}."
      head :not_found
    end
  end
end
