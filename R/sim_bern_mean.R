#' sim_bern_mean
#'
#' Simulate data from a Bernoulli with some probability of success and return the estimated probability.
#'
#' @param n the sample size
#' @param prob true probability of success
#'
#' @return a tibble with the estimated probability of success
#'
#' @importFrom magrittr "%>%"
#' @import dplyr
#'
#' @export
#'
#' @examples
#'
#' sim_bern_mean(30)
#'
sim_bern_mean = function(n, prob = .5) {

  sim_data = tibble::tibble(
    x = rbinom(n, 1, prob)
  )

  sim_data %>%
    summarize(p_hat = mean(x))
}
