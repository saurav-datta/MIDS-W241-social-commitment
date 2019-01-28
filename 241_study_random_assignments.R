set.seed(92)

# pilot
treatments <- c(1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,6,6,6)

assignment <- sample(treatments)
assignment
#  1 4 2 4 4 6 6 2 1 5 3 6 5 3 3 2 5 1

# full
treatments <- c(
  rep(1, 12),
  rep(2, 13),
  rep(3, 12),
  rep(4, 13),
  rep(5, 12),
  rep(6, 13)
)

assignment <- sample(treatments)
assignment
# should start with 3 6 2 2 6 1 ...

# random assignment of awards
# 60 respondents across pilot and final study, 20 total winners
winners <- sample(seq(from = 1, to = 60, by = 1), size = 20, replace = FALSE)
sort(winners)
# 8 10 11 12 13 19 20 28 29 33 35 37 41 43 51 54 55 56 57 60