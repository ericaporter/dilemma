module ChartHelper

  def piechart_data(solutions)
    solution_array = Array.new
    solutions.each do |solution|
      solution_array << [solution.title, solution.votes.count]
    end
    solution_array
  end
end