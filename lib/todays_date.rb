# require 'date'

module TodaysDate

  def create_date
    date = Date.today.to_s
  end

  def date_split(date)
    date.split(/-/)
  end

  def date_slice(date)
    date[0].slice!(0,2)
    return date
  end

  def todays_date
    date = create_date
    split_date = date_split(date)
    final_date = date_slice(split_date)
    final_date.reverse.join
  end
end
