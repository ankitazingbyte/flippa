class WelcomeController < ApplicationController
	def index
  		@websites = Website.all
  		@apps = App.all
    	@domains = Domain.all
        @search = Website.search(params[:q])
        @websites = @search.result
    end

    def website
        @websites = Website.all
        @apps = App.all
        @domains = Domain.all
    end

    def app
        @websites = Website.all
        @apps = App.all
        @domains = Domain.all
    end
    
    def domain
        @websites = Website.all
        @apps = App.all
        @domains = Domain.all
    end
end
