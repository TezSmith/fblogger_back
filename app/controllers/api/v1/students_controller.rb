module Api
 module V1
   class StudentsController < ApplicationController
      def index
        @students = Student.all
        render json: @students.to_json
      end
    end
  end
end
