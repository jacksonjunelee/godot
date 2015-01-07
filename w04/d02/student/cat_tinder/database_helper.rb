module CatTinder
  class DatabaseHelper < Sinatra::Base

    def ids
      @ids
    end

    def image_url_for(id)
      @image_url_for
    end

    def votes_for(id)
      @votes_for
    end

    def upvote!(id)
      @upvote
    end



  end #ends Class
end #ends module
