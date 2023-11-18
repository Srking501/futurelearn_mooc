# Cycle 2
#
# Data format
# Convert `learner_id` as a factor data type
combined_runs_enrolments_processed = combined_runs_enrolments_processed %>%
    mutate(learner_id = as.factor(learner_id))

# Convert `purchase_statement_at` as a logical data type as the business needs
# only needs to know if a participant purchased a certificate or not
combined_runs_enrolments_processed = combined_runs_enrolments_processed %>%
    mutate(purchased_statement_at = !str_detect(purchased_statement_at, "^$")) %>%
    rename("purchase_certificate" = purchased_statement_at)

# Convert the `enrolled_at` and `fully_participated_at` as POSIXct data types
# to capture the time series of it
# combined_runs_enrolments_processed = combined_runs_enrolments_processed %>%
#     mutate(enrolled_at = as.POSIXct(enrolled_at,
#                                     format = "%Y-%m-%d %H:%M:%S",
#                                     tz = "UTC"),
#            fully_participated_at = as.POSIXct(fully_participated_at,
#                                               format = "%Y-%m-%d %H:%M:%S",
#                                               tz = "UTC"))
