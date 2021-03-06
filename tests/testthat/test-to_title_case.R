context("to_title_case")

test_that("title case", {
  expect_equal(
    to_title_case(c("on_andOn", "AndON", " and on", "and so on", "seems like it works", "also abbreviations ETC"), abbreviations = "ETC"),
    c("On and on", "And on", "And on", "And so on", "Seems Like it Works", "Also Abbreviations ETC") 
  )
})


test_that("title case and abbreviations", {
  expect_equal(
    to_title_case("so sieht es aus", abbreviations = "ES"),
    "So Sieht ES Aus" 
  )
})