module Api
 module V1
   class CohortsController < ApplicationController
      def index
        @cohorts = Cohort.all
        render json: @cohorts
      end

      def show
        @cohort = Cohort.find(params[:id])
        render json: @cohort
      end
    end
  end
end
