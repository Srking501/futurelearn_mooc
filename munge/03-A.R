# Cycle 1
#
# Quick Data murging
# Merge all enrolments dataset runs into one
combined_runs_enrolments = bind_rows(cyber.security.1_enrolments,
                                     cyber.security.2_enrolments,
                                     cyber.security.3_enrolments,
                                     cyber.security.4_enrolments,
                                     cyber.security.5_enrolments,
                                     cyber.security.6_enrolments,
                                     cyber.security.7_enrolments)
