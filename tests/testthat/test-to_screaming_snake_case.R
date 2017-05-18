context("to_screaming_snake_case")

test_that("examples", {
  expect_equal(to_screaming_snake_case(cases[["examples"]]),
               cases[["screaming_snake_case"]])}
)

test_that("rules",{
  examples <- cases[["examples"]]
  
  expect_equal(to_screaming_snake_case(to_snake_case(examples)),
               to_screaming_snake_case(examples)
  ) 
  expect_equal(to_screaming_snake_case(to_small_camel_case(examples)),
               to_screaming_snake_case(examples)
  ) 
  expect_equal(to_screaming_snake_case(to_big_camel_case(examples)),
               to_screaming_snake_case(examples)
  ) 
  expect_equal(to_screaming_snake_case(to_screaming_snake_case(examples)),
               to_screaming_snake_case(examples)
  ) 
  expect_equal(to_screaming_snake_case(to_parsed_case(examples)),
               to_screaming_snake_case(examples)
  ) 
})