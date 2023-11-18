# Cycle 2
#
# Data Inclusion / Exclusion
#
# Includes only `learner_id` and `purchased_statement_at`
combined_runs_enrolments_processed = combined_runs_enrolments %>%
    select(learner_id, purchased_statement_at)

# combined_runs_enrolments_processed = combined_runs_enrolments %>%
#     select(learner_id, enrolled_at, fully_participated_at, purchased_statement_at)
