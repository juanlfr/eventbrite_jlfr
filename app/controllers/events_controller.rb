class EventsController < ApplicationController
  def index

    

  end

  def show

    @event = Event.find(params[:id])

  end

  def new

    @event = Event.new

  end

  def create

    @user = current_user

    @event = Event.new(title: params[:title])
  end
  

end
