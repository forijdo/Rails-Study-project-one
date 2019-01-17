class PagesController < ApplicationController

    def index
        #logger.info request.env

        console

        @http_request_params = request.env.select{ |k,v| k.include?('HTTP') }
        @remote_addr         = request.env['REMOTE_ADDR']
    end

end
