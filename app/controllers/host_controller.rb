class HostController < ApplicationController
  def page
    @lists = List.all
  end
end
