class MoviesController < ApplicationController
include Refiner::Query
# before_action :beautify_search_url, only: [:index]

#   def index
#    search  = Movie.search(params[:q],fields: [:id, :name, :synopsis, :year, :country, :language, :runtime, :review],aggs: [:crews_name, :genres_name])
#    byebug
#   # search  = Movie.custom_search(segmented_query)
#   # @aggs   = search.aggregations.map { |a| AggregationPresenter.new(a) }
#   @movies = search.results
# end
def index
    query = params[:q].presence || "*"
     conditions = {}
    conditions[:genres_name] = params[:genres_name] if params[:genres_name].present?
    conditions[:crews_name] = params[:crews_name] if params[:crews_name].present?
    # conditions[:start_date] = params[:start_date] if params[:start_date].present?
    @movies = Movie.search(query,
      page: params[:page], per_page: 10,
      fields: [:id, "name^10", :synopsis, :year, :country, :language, :runtime, :review],
       where: conditions, aggs: [:genres_name, :crews_name],
       smart_aggs: false,
       includes: [:genres,:crews,:roles])
    # @aggs   = @movies.aggs
    #byebug

end


def search

end

def show
@movie = Movie.find(params[:id])
end


private
def beautify_search_url
  redirect_to search_movies_path(query: "keyword/#{params[:q]}") if params[:q].present?
end
def segmented_query
    segment_refiner_query_by("crews", "keyword", "genres")
  end
helper_method :segmented_query

end
