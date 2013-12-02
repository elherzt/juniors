%w(
Chocolate\ Chip
Double\ Chocolate\ Chip
Chocolate\ Chip\ Pecan
Chocolate\ Chip\ Mint
Double\ Chocolate\ Chip\ Mint
Snickerdoodle
Peanut\ Butter
Peanut\ Butter\ Chocolate\ Chip
Oatmeal
Oatmeal\ Raisin
Oatmeal\ Chocolate\ Chip
Oatmeal\ Nut
Macadamia\ White\ Chocolate
Almond\ Crunch
Butter\ Pecan
Butterscotch
Plain\ Sugar
Iced\ Sugar
Double\ Chocolate\ Raspberry\ Cream
Banana\ Nut\ Cream
Kid's\ Delight
).each do |cookie_name|
  CookieType.create name: cookie_name
end
