class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    search = params[:member]
    @members = ["Jordan", "Sophie", "Emil", "Freya"]

    if search.present?
      @members = @members.select { |name| name.downcase == search.downcase }
    end
  end
end
