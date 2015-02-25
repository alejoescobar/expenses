class ExpensesController < ApplicationController

  def index
    @expenses = Expense.all
  end

  def show
    @expense = Expense.find(params[:id])
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.new(expense_params)
    
    @expense.save   
    redirect_to @expense
  end

  private

  def expense_params
    params.require(:expense).permit(:date, :concept, :amount, :category_id)
  end
end
