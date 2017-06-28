class SequencesController < ApplicationController
  def index
  end

  def new
    sequence = Sequence.new

    render "sequences/new", locals: { sequence: sequence }
  end

  def create
    sequence = Sequence.create(sequence_params)

    redirect_to sequence
  end

  def show
    sequence = Sequence.find(params[:id])

    render "sequences/show", locals: { sequence: sequence }
  end

  private

  def sequence_params
    params.require(:sequence).permit(:name)
  end
end
