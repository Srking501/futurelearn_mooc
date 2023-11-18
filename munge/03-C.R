# Cycle 2
#
# Data merging
#
# Added `submitted_at` for time series data for `run1_qr` to `run7_qr`
# run1_qr_with_submit = cyber.security.1_question.response %>%
#     filter(learner_id != "") %>%
#     mutate(learner_id = as.factor(learner_id), quiz_question = as.factor(quiz_question)) %>%
#     distinct(learner_id, quiz_question, .keep_all = TRUE) %>%
#     group_by(learner_id) %>%
#     filter(n_distinct(quiz_question) == n_distinct(run1_qr$quiz_question)) %>%
#     mutate(submitted_at = as.POSIXct(submitted_at, tz = "UTC")) %>%
#     select(learner_id, quiz_question, submitted_at) %>%
#     inner_join(run1_qr, cyber.security.1_question.response, by = c("learner_id", "quiz_question"))
#
# run2_qr_with_submit = cyber.security.2_question.response %>%
#     filter(learner_id != "") %>%
#     mutate(learner_id = as.factor(learner_id), quiz_question = as.factor(quiz_question)) %>%
#     distinct(learner_id, quiz_question, .keep_all = TRUE) %>%
#     group_by(learner_id) %>%
#     filter(n_distinct(quiz_question) == n_distinct(run1_qr$quiz_question)) %>%
#     mutate(submitted_at = as.POSIXct(submitted_at, tz = "UTC")) %>%
#     select(learner_id, quiz_question, submitted_at) %>%
#     inner_join(run2_qr, cyber.security.2_question.response, by = c("learner_id", "quiz_question"))
#
# run3_qr_with_submit = cyber.security.3_question.response %>%
#     filter(learner_id != "") %>%
#     mutate(learner_id = as.factor(learner_id), quiz_question = as.factor(quiz_question)) %>%
#     distinct(learner_id, quiz_question, .keep_all = TRUE) %>%
#     group_by(learner_id) %>%
#     filter(n_distinct(quiz_question) == n_distinct(run1_qr$quiz_question)) %>%
#     mutate(submitted_at = as.POSIXct(submitted_at, tz = "UTC")) %>%
#     select(learner_id, quiz_question, submitted_at) %>%
#     inner_join(run3_qr, cyber.security.3_question.response, by = c("learner_id", "quiz_question"))
#
# run4_qr_with_submit = cyber.security.4_question.response %>%
#     filter(learner_id != "") %>%
#     mutate(learner_id = as.factor(learner_id), quiz_question = as.factor(quiz_question)) %>%
#     distinct(learner_id, quiz_question, .keep_all = TRUE) %>%
#     group_by(learner_id) %>%
#     filter(n_distinct(quiz_question) == n_distinct(run1_qr$quiz_question)) %>%
#     mutate(submitted_at = as.POSIXct(submitted_at, tz = "UTC")) %>%
#     select(learner_id, quiz_question, submitted_at) %>%
#     inner_join(run4_qr, cyber.security.4_question.response, by = c("learner_id", "quiz_question"))
#
# run5_qr_with_submit = cyber.security.5_question.response %>%
#     filter(learner_id != "") %>%
#     mutate(learner_id = as.factor(learner_id), quiz_question = as.factor(quiz_question)) %>%
#     distinct(learner_id, quiz_question, .keep_all = TRUE) %>%
#     group_by(learner_id) %>%
#     filter(n_distinct(quiz_question) == n_distinct(run1_qr$quiz_question)) %>%
#     mutate(submitted_at = as.POSIXct(submitted_at, tz = "UTC")) %>%
#     select(learner_id, quiz_question, submitted_at) %>%
#     inner_join(run5_qr, cyber.security.5_question.response, by = c("learner_id", "quiz_question"))
#
# run6_qr_with_submit = cyber.security.6_question.response %>%
#     filter(learner_id != "") %>%
#     mutate(learner_id = as.factor(learner_id), quiz_question = as.factor(quiz_question)) %>%
#     distinct(learner_id, quiz_question, .keep_all = TRUE) %>%
#     group_by(learner_id) %>%
#     filter(n_distinct(quiz_question) == n_distinct(run1_qr$quiz_question)) %>%
#     mutate(submitted_at = as.POSIXct(submitted_at, tz = "UTC")) %>%
#     select(learner_id, quiz_question, submitted_at) %>%
#     inner_join(run6_qr, cyber.security.6_question.response, by = c("learner_id", "quiz_question"))
#
# run7_qr_with_submit = cyber.security.7_question.response %>%
#     filter(learner_id != "") %>%
#     mutate(learner_id = as.factor(learner_id), quiz_question = as.factor(quiz_question)) %>%
#     distinct(learner_id, quiz_question, .keep_all = TRUE) %>%
#     group_by(learner_id) %>%
#     filter(n_distinct(quiz_question) == n_distinct(run1_qr$quiz_question)) %>%
#     mutate(submitted_at = as.POSIXct(submitted_at, tz = "UTC")) %>%
#     select(learner_id, quiz_question, submitted_at) %>%
#     inner_join(run7_qr, cyber.security.7_question.response, by = c("learner_id", "quiz_question"))
#
#
# # combined data for run1_qr to run7_qr
# combined_runs_qr = bind_rows(run1_qr_with_submit,
#                              run2_qr_with_submit,
#                              run3_qr_with_submit,
#                              run4_qr_with_submit,
#                              run5_qr_with_submit,
#                              run6_qr_with_submit,
#                              run7_qr_with_submit)

# combined data for run1_qr to run7_qr
combined_runs_qr = bind_rows(run1_qr,
                             run2_qr,
                             run3_qr,
                             run4_qr,
                             run5_qr,
                             run6_qr,
                             run7_qr)

# Combined the enrolments data and `combined_runs_qr` into one using
# a inner_join()
merged_enrolment_data = inner_join(combined_runs_enrolments_processed,
                                   combined_runs_qr,
                                   by = "learner_id")
