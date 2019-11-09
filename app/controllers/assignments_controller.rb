class AssignmentsController < ApplicationController
  def new
    @assignments = Assignment.new
  end

  def create
    @assignments = Assignment.new(assign_params)
    if @assignments.save
      redirect_to root_path, notice: 'El trabajador ha sido asignado'
    else
      redirect_to root_path, notice: 'El trabajador no ha podido ser asignado'
    end
  end

  def destroy
    
    @assignments = Assignment.find(assign_params)
    if @assignments.destroy
      redirect_to assignments_, notice: 'El trabajador ha sido removido'
    else
      redirect_to assignments_new, notice: 'El trabajador no ha sido removido'
    end
  end

  private
  def assign_params
    params.require(:assignment).permit(:person_id,:project_id)
  end
end
