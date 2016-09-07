Impressionist::Engine.routes.draw do
  post "/impressions/end/:request_hash", to: "impressions#end_now"
end
