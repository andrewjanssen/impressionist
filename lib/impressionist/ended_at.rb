module Impressionist
  module EndedAt

    def end!
      self.ended_at = Time.now
      save!
    end

  end
end
