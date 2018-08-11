require 'green_shoes'
require 'time_difference'

deadline = Time.new(2019,02,04,12)

textstyle = {
  justify: false,
  size: 20,
  align: 'center',
  family: 'ubuntu,sans-serif',
}

Shoes.app height: 160, width: 1000, title: 'carpe diem' do
  background 'seashell'
  stack margin: [20,20,20,20] do
    para 'Time to thesis deadline:', textstyle.merge({weight: 'semibold'})
    countdown = para '', textstyle
    animate do
      countdown.text = TimeDifference.between(Time.now, deadline).humanize
    end
  end
end
