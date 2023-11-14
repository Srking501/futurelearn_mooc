# Data Inclusion / Exclusion
# Keeps `learner_id`, `quiz_question` and `correct` columns and removes
# the rest
run1_qr = cyber.security.1_question.response %>% select(learner_id,
                                                        quiz_question,
                                                        correct)
run2_qr = cyber.security.2_question.response %>% select(learner_id,
                                                        quiz_question,
                                                        correct)
run3_qr = cyber.security.3_question.response %>% select(learner_id,
                                                        quiz_question,
                                                        correct)
run4_qr = cyber.security.4_question.response %>% select(learner_id,
                                                        quiz_question,
                                                        correct)
run5_qr = cyber.security.5_question.response %>% select(learner_id,
                                                        quiz_question,
                                                        correct)
run6_qr = cyber.security.6_question.response %>% select(learner_id,
                                                        quiz_question,
                                                        correct)
run7_qr = cyber.security.7_question.response %>% select(learner_id,
                                                        quiz_question,
                                                        correct)
