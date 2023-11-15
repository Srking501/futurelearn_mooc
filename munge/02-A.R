# Data cleaning
# Remove duplicates and incomplete `learner_id` towards `quiz_question`
run1_qr = run1_qr %>% distinct(learner_id, quiz_question, .keep_all = TRUE) %>%
    group_by(learner_id) %>%
    filter(n_distinct(quiz_question) == n_distinct(run1_qr$quiz_question))
run2_qr = run2_qr %>% distinct(learner_id, quiz_question, .keep_all = TRUE) %>%
    group_by(learner_id) %>%
    filter(n_distinct(quiz_question) == n_distinct(run2_qr$quiz_question))
run3_qr = run3_qr %>% distinct(learner_id, quiz_question, .keep_all = TRUE) %>%
    group_by(learner_id) %>%
    filter(n_distinct(quiz_question) == n_distinct(run3_qr$quiz_question))
run4_qr = run4_qr %>% distinct(learner_id, quiz_question, .keep_all = TRUE) %>%
    group_by(learner_id) %>%
    filter(n_distinct(quiz_question) == n_distinct(run4_qr$quiz_question))
run5_qr = run5_qr %>% distinct(learner_id, quiz_question, .keep_all = TRUE) %>%
    group_by(learner_id) %>%
    filter(n_distinct(quiz_question) == n_distinct(run5_qr$quiz_question))
run6_qr = run6_qr %>% distinct(learner_id, quiz_question, .keep_all = TRUE) %>%
    group_by(learner_id) %>%
    filter(n_distinct(quiz_question) == n_distinct(run6_qr$quiz_question))
run7_qr = run7_qr %>% distinct(learner_id, quiz_question, .keep_all = TRUE) %>%
    group_by(learner_id) %>%
    filter(n_distinct(quiz_question) == n_distinct(run7_qr$quiz_question))
