class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    @movies = Movie.all

end

def show
  @review = Review.find(params[:id])
  @reviews = Review.all
  @movies = Movie.all
end

def new
  @review = Review.new
  @reviews = Review.all
  # @comments = Comment.all

end

def create

  Review.create(review_params)   #see the team_params from the private method below
  redirect_to(reviews_path)

end


def destroy
  review = Review.find(params[:id])  #doesn't need @ since it is not exposed - only being deleted
  review.destroy
  redirect_to(reviews_path)
end

def edit
  @review = Review.find(params[:id])
  @movies = Movie.all
  # @comments = Comment.all
 
end


def update
  review = Review.find(params[:id]) #again - the data does not need to be exposed - no @
  review.update(review_params) #from the private method below - whitelist check
  # redirect_to(recipes_path)
  redirect_to(reviews_path)
end  

def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end

private
def review_params
  # allows these params to be accessed by the methods above
  params.require(:review).permit(:user_id, :title, :content, :movie_id, :venue, :posted_time, :up_votes, :down_votes)

    # comment_ids:[])
end

end