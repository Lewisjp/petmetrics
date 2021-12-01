class PagesController < ApplicationController
  def homepage
  end

  def about
    # create array from sql query
    @resultsql = ActiveRecord::Base.connection.execute("select cats.id, cats.name, cats.sex, cats.breed, cats.origin, cats.dead, cats.causeofdeath , diseases.dateofdiagnosis, diseases.condition, diseases.conditionform, diseases.conditionrelapse, diseases.remission, treatments.totalweeks, treatments.medicine, treatments.dose, treatments.treatmentcomplete, observationbiometrics.Day0TempF, observationbiometrics.Day1TempF, observationbiometrics.Day2TempF, observationbiometrics.Day3TempF, observationbiometrics.Day4TempF, observationbiometrics.Day5TempF, observationbiometrics.Week0WhiteBlood, observationbiometrics.Week1WhiteBlood, observationbiometrics.Week2WhiteBlood, observationbiometrics.Week3WhiteBlood, observationbiometrics.Week4WhiteBlood, observationbiometrics.Week5WhiteBlood, observationbiometrics.Week6WhiteBlood, observationbiometrics.Week7WhiteBlood, observationbiometrics.Week8WhiteBlood, observationbiometrics.Week9WhiteBlood, observationbiometrics.Week10WhiteBlood, observationbiometrics.Week11WhiteBlood, observationbiometrics.Week12WhiteBlood, observationbiometrics.Week0lymphocytes, observationbiometrics.Week1lymphocytes, observationbiometrics.Week2lymphocytes, observationbiometrics.Week3lymphocytes, observationbiometrics.Week4lymphocytes, observationbiometrics.Week5lymphocytes, observationbiometrics.Week6lymphocytes, observationbiometrics.Week7lymphocytes, observationbiometrics.Week8lymphocytes, observationbiometrics.Week9lymphocytes, observationbiometrics.Week10lymphocytes, observationbiometrics.Week11lymphocytes, observationbiometrics.Week12lymphocytes, observationbiometrics.Week1PCV, observationbiometrics.Week2PCV, observationbiometrics.Week3PCV, observationbiometrics.Week4PCV, observationbiometrics.Week5PCV, observationbiometrics.Week6PCV, observationbiometrics.Week7PCV, observationbiometrics.Week8PCV, observationbiometrics.Week9PCV, observationbiometrics.Week10PCV, observationbiometrics.Week11PCV, observationbiometrics.Week12PCV from cats join diseases on diseases.cat_id = cats.id join treatments on treatments.disease_id = diseases.id join observationbiometrics on observationbiometrics.treatment_id = treatments.id")
  
    @test = ActiveRecord::Base.connection.execute("select * from cats join diseases on diseases.cat_id = cats.id join treatments on treatments.disease_id = diseases.id join observationbiometrics on observationbiometrics.treatment_id = treatments.id")

#wb
    CSV.open("public/outgoing/allrecords.csv", "w") do |csv|
      csv << @resultsql.first.keys # adds the attributes name on the first line
        @resultsql.each do |hash|
            csv << hash.values
        end
        @createcsvstatus = "Successfully created a CSV from relevant datapoints at #{DateTime.now().in_time_zone('US/Eastern')}."
    end

  end

  # def self.to_csv
  #   CSV.generate do |csv|
  #     csv << column_names
  #     all.each do |company| 
  #       csv  << company.attributes.values_at(*column_names)
  #     end
  #   end
  # end


end
