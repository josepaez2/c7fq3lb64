class ExpensesController < ApplicationController
  # def index
  #    @expenses = Expense.order("date DESC")
  # end

  def index
    @expenses = Expense.order("date DESC")
    if params[:concept].present? && params[:category_id].present?
      @expenses = @expenses.where("concept LIKE :q", q: "%#{params[:concept]}%")
      @expenses = @expenses.where(category_id: params[:category_id])
    elsif params[:category_id].present?
      @expenses = @expenses.where(category_id: params[:category_id])
    elsif params[:concept].present?
      @expenses = @expenses.where("concept LIKE :q", q: "%#{params[:concept]}%")
    end
    respond_to do |format|
      format.html
      format.js
      format.json { render json: @responses }
    end
  end
end
