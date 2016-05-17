class StoriesController < ApplicationController
	def index
		@stories = Story.all.order("created_at DESC")
	end

	def show
	end

	def new
		@story = Story.new
	end

	def create
		@story = Story.new(story_params)
		if @story.save
			redirect_to @story
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		@story.update(story_params)
		if @story.save
			redirect_to @story
		else
			render 'edit'
		end
	end

	def destroy
		@story.destroy
		redirect_to stories_path
	end

	private
		def get_story
			@story = Story.find(params[:id])
		end

		def story_params
			params.require(:stories).permit(:source,:title,:body,:genre_id)
		end
end
