class CoursesController < ApplicationController
    before_action :set_course, only: [:show, :destroy, :update, :edit]

    def index
        @courses = Course.order(id: "ASC")
    end
    
    def new
        @institution = Institution.find(params[:institution_id])
        @major = Major.find(params[:major_id])

        # must assign the course with a belong_to relationship with major
        @course = @major.courses.new
        @course.institution_id = params[:institution_id]
    end

    def create
        @course = Course.new(course_params)
        @institution = Institution.find(@course.institution_id)
        @major = Major.find(@course.major_id)

        @course.save
        if @course.save
            flash[:success] = "New course has been created"
            redirect_to course_path(@course)
        else 
            render 'new'
        end
    end

    def show
        @institution = Institution.find(@course.institution_id)
        @major = Major.find(@course.major_id)

        # Retrieving difficuly score from nested attributes
        @score1 = @course.reviews.where(difficulty: 1).count
        @score2 = @course.reviews.where(difficulty: 2).count
        @score3 = @course.reviews.where(difficulty: 3).count
        @score4 = @course.reviews.where(difficulty: 4).count
        @score5 = @course.reviews.where(difficulty: 5).count
        @challenge_score = {"1 - Very Easy" => @score1, "2 - Somewhat Easy" => @score2, "3 - Average" => @score3, "4 - Challenging" => @score4, "5 - Very Difficult" => @score5}

        @career1 = @course.reviews.where(benefit: "1").count
        @career2 = @course.reviews.where(benefit: "2").count
        @career3 = @course.reviews.where(benefit: "3").count
        @career4 = @course.reviews.where(benefit: "4").count
        @career5 = @course.reviews.where(benefit: "5").count
        @career_benefit = {"1 - Not Beneficial" => @career1, "2 - Hardly Beneficial" => @career2, "3 - Somewhat Beneficial" => @career3, "4 - Beneficial" => @career4, "5 - Very Beneficial" => @career5}

        @time1 = @course.reviews.where(time_spent: "1-3").count
        @time2 = @course.reviews.where(time_spent: "4-6").count
        @time3 = @course.reviews.where(time_spent: "7-9").count
        @time4 = @course.reviews.where(time_spent: "10-12").count
        @time5 = @course.reviews.where(time_spent: "13-15").count
        @time_spent = {"1-3 hours" => @time1, "4-6 hours" => @time2, "7-9 hours" => @time3, "10-12 hours" => @time4, "13-15 hours" => @time5}
    end

    def destroy
        @course = Course.find(params[:id])
        @major = Major.find(@course.major_id)
        @course.destroy
        
        flash[:danger] = "Course was deleted"
        redirect_to major_path(@major)
    end

    def edit
        @institution = Institution.find(@course.institution_id)
        @major = Major.find(@course.major_id)
    end

    def update
        @course = Course.find(params[:id])
        if @course.update(course_params)
            flash[:success] = "Course was Updated"
            redirect_to course_path(@course)
        else
            render 'edit'
        end
    end

    private
    
    def set_course
        @course = Course.find(params[:id])
    end

    def course_params
        params.require(:course).permit(
            :coursename, 
            :course_content, 
            :prerequisite, 
            :proctoredexams, 
            :groupwork, 
            :textbook,
            :institution_id, 
            :major_id,
            reviews_attributes: [:reviews_content, :difficulty, :benefit, :time_spent],
        )
    end 
end