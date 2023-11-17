# Cycle 1 Modelling
# Retrieve total for correct and not correct answers for each run
#
run1_total_correct = run1_qr %>%
    group_by(correct) %>%
    count(correct) %>%
    pivot_wider(names_from = correct, values_from = n) %>%
    rename("Not correct" = "FALSE", "Correct" = "TRUE") %>%
    pivot_longer(cols = c("Not correct", "Correct"), names_to = "Response", values_to = "count") %>%
    mutate(percentage = round(count / sum(count)*100, 2))

run2_total_correct = run2_qr %>%
    group_by(correct) %>%
    count(correct) %>%
    pivot_wider(names_from = correct, values_from = n) %>%
    rename("Not correct" = "FALSE", "Correct" = "TRUE") %>%
    pivot_longer(cols = c("Not correct", "Correct"), names_to = "Response", values_to = "count") %>%
    mutate(percentage = round(count / sum(count)*100, 2))

run3_total_correct = run3_qr %>%
    group_by(correct) %>%
    count(correct) %>%
    pivot_wider(names_from = correct, values_from = n) %>%
    rename("Not correct" = "FALSE", "Correct" = "TRUE") %>%
    pivot_longer(cols = c("Not correct", "Correct"), names_to = "Response", values_to = "count") %>%
    mutate(percentage = round(count / sum(count)*100, 2))

run4_total_correct = run4_qr %>%
    group_by(correct) %>%
    count(correct) %>%
    pivot_wider(names_from = correct, values_from = n) %>%
    rename("Not correct" = "FALSE", "Correct" = "TRUE") %>%
    pivot_longer(cols = c("Not correct", "Correct"), names_to = "Response", values_to = "count") %>%
    mutate(percentage = round(count / sum(count)*100, 2))

run5_total_correct = run5_qr %>%
    group_by(correct) %>%
    count(correct) %>%
    pivot_wider(names_from = correct, values_from = n) %>%
    rename("Not correct" = "FALSE", "Correct" = "TRUE") %>%
    pivot_longer(cols = c("Not correct", "Correct"), names_to = "Response", values_to = "count") %>%
    mutate(percentage = round(count / sum(count)*100, 2))

run6_total_correct = run6_qr %>%
    group_by(correct) %>%
    count(correct) %>%
    pivot_wider(names_from = correct, values_from = n) %>%
    rename("Not correct" = "FALSE", "Correct" = "TRUE") %>%
    pivot_longer(cols = c("Not correct", "Correct"), names_to = "Response", values_to = "count") %>%
    mutate(percentage = round(count / sum(count)*100, 2))

run7_total_correct = run7_qr %>%
    group_by(correct) %>%
    count(correct) %>%
    pivot_wider(names_from = correct, values_from = n) %>%
    rename("Not correct" = "FALSE", "Correct" = "TRUE") %>%
    pivot_longer(cols = c("Not correct", "Correct"), names_to = "Response", values_to = "count") %>%
    mutate(percentage = round(count / sum(count)*100, 2))

# Pie Chart
#
run1_pie_chart = ggplot(run1_total_correct, aes(x = "", y = count, fill = Response)) +
    geom_bar(stat = "identity", color = "black", width = 1) +
    coord_polar("y", start = 0) +
    theme_void() +
    scale_fill_manual(values = c("Not correct" = "orange", "Correct" = "#ADD8E6")) +
    geom_text(aes(label = paste0(percentage, "%")), position = position_stack(vjust = 0.5)) +
    labs(title = "Run 1 of 'Not correct' and 'Correct' answers")

run2_pie_chart = ggplot(run2_total_correct, aes(x = "", y = count, fill = Response)) +
    geom_bar(stat = "identity", color = "black", width = 1) +
    coord_polar("y", start = 0) +
    theme_void() +
    scale_fill_manual(values = c("Not correct" = "orange", "Correct" = "#ADD8E6")) +
    geom_text(aes(label = paste0(percentage, "%")), position = position_stack(vjust = 0.5)) +
    labs(title = "Run 2 of 'Not correct' and 'Correct' answers")

run3_pie_chart = ggplot(run3_total_correct, aes(x = "", y = count, fill = Response)) +
    geom_bar(stat = "identity", color = "black", width = 1) +
    coord_polar("y", start = 0) +
    theme_void() +
    scale_fill_manual(values = c("Not correct" = "orange", "Correct" = "#ADD8E6")) +
    geom_text(aes(label = paste0(percentage, "%")), position = position_stack(vjust = 0.5)) +
    labs(title = "Run 3 of 'Not correct' and 'Correct' answers")

run4_pie_chart = ggplot(run4_total_correct, aes(x = "", y = count, fill = Response)) +
    geom_bar(stat = "identity", color = "black", width = 1) +
    coord_polar("y", start = 0) +
    theme_void() +
    scale_fill_manual(values = c("Not correct" = "orange", "Correct" = "#ADD8E6")) +
    geom_text(aes(label = paste0(percentage, "%")), position = position_stack(vjust = 0.5)) +
    labs(title = "Run 4 of 'Not correct' and 'Correct' answers")

run5_pie_chart = ggplot(run5_total_correct, aes(x = "", y = count, fill = Response)) +
    geom_bar(stat = "identity", color = "black", width = 1) +
    coord_polar("y", start = 0) +
    theme_void() +
    scale_fill_manual(values = c("Not correct" = "orange", "Correct" = "#ADD8E6")) +
    geom_text(aes(label = paste0(percentage, "%")), position = position_stack(vjust = 0.5)) +
    labs(title = "Run 5 of 'Not correct' and 'Correct' answers")

run6_pie_chart = ggplot(run6_total_correct, aes(x = "", y = count, fill = Response)) +
    geom_bar(stat = "identity", color = "black", width = 1) +
    coord_polar("y", start = 0) +
    theme_void() +
    scale_fill_manual(values = c("Not correct" = "orange", "Correct" = "#ADD8E6")) +
    geom_text(aes(label = paste0(percentage, "%")), position = position_stack(vjust = 0.5)) +
    labs(title = "Run 6 of 'Not correct' and 'Correct' answers")

run7_pie_chart = ggplot(run7_total_correct, aes(x = "", y = count, fill = Response)) +
    geom_bar(stat = "identity", color = "black", width = 1) +
    coord_polar("y", start = 0) +
    theme_void() +
    scale_fill_manual(values = c("Not correct" = "orange", "Correct" = "#ADD8E6")) +
    geom_text(aes(label = paste0(percentage, "%")), position = position_stack(vjust = 0.5)) +
    labs(title = "Run 7 of 'Not correct' and 'Correct' answers")

combined_pie_chart <- plot_grid(
    run1_pie_chart, run2_pie_chart, run3_pie_chart,
    run4_pie_chart, run5_pie_chart, run6_pie_chart, run7_pie_chart,
    ncol = 4
)


# Bar Chart
#
combined_runs_correct = bind_rows(list(run1_total_correct,
                                       run2_total_correct,
                                       run3_total_correct,
                                       run4_total_correct,
                                       run5_total_correct,
                                       run6_total_correct,
                                       run7_total_correct),
                                  .id = "course_run") %>%
    mutate(course_run = case_when(
        course_run == "1" ~ "Run 1",
        course_run == "2" ~ "Run 2",
        course_run == "3" ~ "Run 3",
        course_run == "4" ~ "Run 4",
        course_run == "5" ~ "Run 5",
        course_run == "6" ~ "Run 6",
        course_run == "7" ~ "Run 7",
        TRUE ~ course_run
    )) %>%
    mutate(course_run = as.factor(course_run)) %>%
    rename("Course Run" = course_run)

only_correct_runs = combined_runs_correct %>%
    filter(Response == "Correct") %>%
    group_by(`Course Run`)

combined_bar_plot = ggplot(combined_runs_correct, aes(x = `Course Run`, y = percentage, fill = Response)) +
    geom_bar(stat = "identity", position = "stack", color = "black") +
    geom_line(data = only_correct_runs,
              aes(x = `Course Run`,
                  y = percentage, group = 1,
                  linetype = "Percentage of correct"),
              color = "black", size = 1) +
    scale_fill_manual(values = c("Not correct" = "orange",
                                 "Correct" = "#ADD8E6")) +
    labs(title = "Bar & line plot of percentage of 'Correct' and 'Not correct' answers for each course run",
         x = "Course Run",
         y = "Percentage (%)",
         fill = "Response") +
    theme_minimal() +
    theme(plot.title = element_text(size = 10))

combined_runs_correct_2 = combined_runs_correct %>%
    pivot_wider(names_from = Response, values_from = count:percentage) %>%
    rename("Total of not correct" = `count_Not correct`,
           "Total of correct" = count_Correct,
           "Percentage of not correct" = `percentage_Not correct`,
           "Percentage of correct" = percentage_Correct)

# Scatter plot with boxplot
#
run1_total_correct_per_question = run1_qr %>%
    group_by(quiz_question) %>%
    count(correct) %>%
    pivot_wider(names_from = correct, values_from = n) %>%
    rename("Not correct" = "FALSE", "Correct" = "TRUE") %>%
    pivot_longer(cols = c("Not correct", "Correct"), names_to = "Response", values_to = "count") %>%
    mutate_all(~ifelse(is.na(.), 0, .)) %>%
    mutate(percentage = round(count / sum(count)*100, 2))

run2_total_correct_per_question = run2_qr %>%
    group_by(quiz_question) %>%
    count(correct) %>%
    pivot_wider(names_from = correct, values_from = n) %>%
    rename("Not correct" = "FALSE", "Correct" = "TRUE") %>%
    pivot_longer(cols = c("Not correct", "Correct"), names_to = "Response", values_to = "count") %>%
    mutate_all(~ifelse(is.na(.), 0, .)) %>%
    mutate(percentage = round(count / sum(count)*100, 2))

run3_total_correct_per_question = run3_qr %>%
    group_by(quiz_question) %>%
    count(correct) %>%
    pivot_wider(names_from = correct, values_from = n) %>%
    rename("Not correct" = "FALSE", "Correct" = "TRUE") %>%
    pivot_longer(cols = c("Not correct", "Correct"), names_to = "Response", values_to = "count") %>%
    mutate_all(~ifelse(is.na(.), 0, .)) %>%
    mutate(percentage = round(count / sum(count)*100, 2))

run4_total_correct_per_question = run4_qr %>%
    group_by(quiz_question) %>%
    count(correct) %>%
    pivot_wider(names_from = correct, values_from = n) %>%
    rename("Not correct" = "FALSE", "Correct" = "TRUE") %>%
    pivot_longer(cols = c("Not correct", "Correct"), names_to = "Response", values_to = "count") %>%
    mutate_all(~ifelse(is.na(.), 0, .)) %>%
    mutate(percentage = round(count / sum(count)*100, 2))

run5_total_correct_per_question = run5_qr %>%
    group_by(quiz_question) %>%
    count(correct) %>%
    pivot_wider(names_from = correct, values_from = n) %>%
    rename("Not correct" = "FALSE", "Correct" = "TRUE") %>%
    pivot_longer(cols = c("Not correct", "Correct"), names_to = "Response", values_to = "count") %>%
    mutate_all(~ifelse(is.na(.), 0, .)) %>%
    mutate(percentage = round(count / sum(count)*100, 2))

run6_total_correct_per_question = run6_qr %>%
    group_by(quiz_question) %>%
    count(correct) %>%
    pivot_wider(names_from = correct, values_from = n) %>%
    rename("Not correct" = "FALSE", "Correct" = "TRUE") %>%
    pivot_longer(cols = c("Not correct", "Correct"), names_to = "Response", values_to = "count") %>%
    mutate_all(~ifelse(is.na(.), 0, .)) %>%
    mutate(percentage = round(count / sum(count)*100, 2))

run7_total_correct_per_question = run7_qr %>%
    group_by(quiz_question) %>%
    count(correct) %>%
    pivot_wider(names_from = correct, values_from = n) %>%
    rename("Not correct" = "FALSE", "Correct" = "TRUE") %>%
    pivot_longer(cols = c("Not correct", "Correct"), names_to = "Response", values_to = "count") %>%
    mutate_all(~ifelse(is.na(.), 0, .)) %>%
    mutate(percentage = round(count / sum(count)*100, 2))

combined_runs_correct_per_question = bind_rows(list(run1_total_correct_per_question,
                                                    run2_total_correct_per_question,
                                                    run3_total_correct_per_question,
                                                    run4_total_correct_per_question,
                                                    run5_total_correct_per_question,
                                                    run6_total_correct_per_question,
                                                    run7_total_correct_per_question),
                                               .id = "course_run") %>%
    mutate(course_run = case_when(
        course_run == "1" ~ "Run 1",
        course_run == "2" ~ "Run 2",
        course_run == "3" ~ "Run 3",
        course_run == "4" ~ "Run 4",
        course_run == "5" ~ "Run 5",
        course_run == "6" ~ "Run 6",
        course_run == "7" ~ "Run 7",
        TRUE ~ course_run
    )) %>%
    mutate(course_run = as.factor(course_run)) %>%
    rename("Course Run" = course_run)
