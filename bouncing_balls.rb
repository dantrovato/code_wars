# A child is playing with a ball on the nth floor of a tall building. The height
# of this floor, h, is known.
# He drops the ball out of the window. The ball bounces (for example), to two-thirds
# of its height (a bounce of 0.66).
# His mother looks out of a window 1.5 meters from the ground.
# How many times will the mother see the ball pass in front of her window (including
# when it's falling and bouncing?
#
# Three conditions must be met for a valid experiment:
# Float parameter "h" in meters must be greater than 0
# Float parameter "bounce" must be greater than 0 and less than 1
# Float parameter "window" must be less than h.
# If all three conditions above are fulfilled, return a positive integer, otherwise
# return -1.
#
# Note:
# The ball can only be seen if the height of the rebounding ball is stricty greater
# than the window parameter.
#
# Example:
# - h = 3, bounce = 0.66, window = 1.5, result is 3
#
# - h = 3, bounce = 1, window = 1.5, result is -1
#
# (Condition 2) not fulfilled).

=begin
input: hight of floor, bounce, window
- req:
  - return -1 unless height of floor > 0, bounce > 0 && < 1,
    window < height of floor
  -
output: digit - the num of times the ball goes past the window

- hi lev
  - loop height * bounce until height < window
  - keep track of number of executions. bounces are one less
=end
#p 3 * 0.66 * 0.66

require 'pry'
require 'pry-byebug'



p bouncingBall(3, 0.66, 1.5) == 3
p bouncingBall(30, 0.66, 1.5) == 15
p bouncingBall(30, 0.75, 1.5) == 21
p bouncingBall(30, 0.4, 10) == 3
p bouncingBall(40, 1, 10) == -1
p bouncingBall(-5, 0.66, 1.5) == -1


# MY SLUSH

# def bouncingBall(height, bounce, window)
#   return -1 if bounce >= 1 || bounce <= 0 || height <= 0 || height <= window
#
#   complete_bounces = 0
#   loop do
#     break if height < window
#     height *= bounce
#     complete_bounces += 2
#   end
#   complete_bounces - 1
# end
