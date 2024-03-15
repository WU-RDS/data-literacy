## Exercise 1
## Define a function with arguments a, b
whose_greater <- function(a, b) {
  ## If lengths do not match return immediatelly
  if (length(a) != length(b)) {
    return(NA)
  }
  ## Iterate over elements
  for (i in 1:length(a)) {
    ## Check which eleemnt is bigger
    if (a[i] > b[i]) {
      print(paste(i, "a is bigger"))
    } else if (a[i] < b[i]) {
      print(paste(i, "b is bigger"))
    } else if (a[i] == b[i]) {
      print(paste(i, "equal"))
    }
  }
}
a<-c(1,13221,3)
b <-c(1,2,4)
whose_greater(a,b)

## Exercise 2
set.seed(42)
df <- data.frame(x = runif(10), y = rnorm(10))
df$z <- ifelse(df$x>df$y, 1, 0)
str(df)
df2 <- df[ df$z == 1, ]
df2$z <- NULL
str(df2)

## Exercise 3
readr::read_csv("data/penguins/penguins_raw.csv", comment = "#")
