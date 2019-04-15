def leap_year?(year)
  # is_leap = false
  # if year is evenly divided 4, it is a leap year
  # if year is evenly divided by 100, it is NOT a leap year
  # if year is evenly divided by 400, it is a leap year

  if (year % 4 == 0) && !(year % 100 == 0) || (year % 400 == 0)
    return true
  else
    return false
  end
end
