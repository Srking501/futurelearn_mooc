# Data formatting
# Changing data types
run1_qr = run1_qr %>% mutate(learner_id = as.factor(learner_id),
                             quiz_question = as.factor(quiz_question),
                             correct = as.logical(correct))
run2_qr = run2_qr %>% mutate(learner_id = as.factor(learner_id),
                             quiz_question = as.factor(quiz_question),
                             correct = as.logical(correct))
run3_qr = run3_qr %>% mutate(learner_id = as.factor(learner_id),
                             quiz_question = as.factor(quiz_question),
                             correct = as.logical(correct))
run4_qr = run4_qr %>% mutate(learner_id = as.factor(learner_id),
                             quiz_question = as.factor(quiz_question),
                             correct = as.logical(correct))
run5_qr = run5_qr %>% mutate(learner_id = as.factor(learner_id),
                             quiz_question = as.factor(quiz_question),
                             correct = as.logical(correct))
run6_qr = run6_qr %>% mutate(learner_id = as.factor(learner_id),
                             quiz_question = as.factor(quiz_question),
                             correct = as.logical(correct))
run7_qr = run7_qr %>% mutate(learner_id = as.factor(learner_id),
                             quiz_question = as.factor(quiz_question),
                             correct = as.logical(correct))
