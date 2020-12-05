#' sim_mean_sd
#'
#' This function produces a sample from a normal distribution and returns the sample mean and sample SD.
#'
#' @param n the sample size
#' @param mu the true mean
#' @param sigma the true SD
#'
#' @return a tibble with sample mean and SD
#'
#' @importFrom magrittr "%>%"
#' @import dplyr
#'
#' @export
#'
#' @examples
#'
#' sim_mean_sd(30)
#'
sim_mean_sd = function(n, mu = 2, sigma = 3) {

  sim_data = tibble::tibble(
    x = rnorm(n, mean = mu, sd = sigma),
  )

  sim_data %>%
    summarize(
      mu_hat = mean(x),
      sigma_hat = sd(x)
    )
}
