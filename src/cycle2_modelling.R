# Cycle 2 Modelling
#
# date_range = range(merged_enrolment_data$submitted_at)
#
# ggplot(merged_enrolment_data, aes(x = submitted_at, y = total_percentage_correct_per_question)) +
#     geom_point() +
#     labs(title = "Scatterplot with Time Series X-axis", x = "Date", y = "Y") +
#     scale_x_datetime(limits = date_range, date_labels = "%Y-%m-%d %H:%M:%S", date_breaks = "2 month") +
#     theme_minimal()

# boxplot_enrol = ggplot(merged_enrolment_data %>%
#                            mutate("Purchase Certificate" = purchase_certificate),
#                        aes(x = purchase_certificate,
#                            y = total_percentage_correct_per_participant,
#                            fill = `Purchase Certificate`)) +
#     geom_boxplot() +
#     labs(title = "Boxplot of percentage of correct value per participant",
#          y = "Total correct per participant (%)",
#          x = "Purchase Certificate") +
#     theme_minimal()

# Create a heatmap with count using geom_bin2d
heatmap_enrol = ggplot(merged_enrolment_data, aes(x = purchase_certificate, y = correct)) +
    geom_bin2d(aes(fill = after_stat(!!str2lang("count"))), color = "black") +
    scale_fill_gradient(low = "lightgray", high = "darkblue") +
    labs(title = "Heatmap for Purchase Certificate against Answer Correct",
         x = "Purchase Certificate",
         y = "Answer Correct",
         fill = "Participants Count") +
    theme_minimal()

summary_of_heatmap_enrol = merged_enrolment_data %>%
    group_by(purchase_certificate, correct) %>%
    summarize(count = n()) %>%
    mutate(count = format(count, big.mark = ",")) %>%
    rename("Purchase Certificate" = purchase_certificate,
           "Answer Correct" = correct,
           "Participants Count" = count)
