# Data Cleaning

# Removing empty `learned_id` rows
run1_qr = run1_qr %>% filter(learner_id != "")
run2_qr = run2_qr %>% filter(learner_id != "")
run3_qr = run3_qr %>% filter(learner_id != "")
run4_qr = run4_qr %>% filter(learner_id != "")
run5_qr = run5_qr %>% filter(learner_id != "")
run6_qr = run6_qr %>% filter(learner_id != "")
run7_qr = run7_qr %>% filter(learner_id != "")
