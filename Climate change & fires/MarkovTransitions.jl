using SDDP

# =========================
# Choose climate transition
# =========================

# Baseline (moderate persistence, 5-year step)
P = [
    [0.88 0.12 0.00 0.00 0.00;
     0.03 0.84 0.13 0.00 0.00;
     0.00 0.03 0.84 0.13 0.00;
     0.00 0.00 0.03 0.84 0.13;
     0.00 0.00 0.00 0.02 0.98]
]

# High persistence (slower climate change)
# Uncomment this block to switch
# P = [
#     [0.92 0.08 0.00 0.00 0.00;
#      0.02 0.90 0.08 0.00 0.00;
#      0.00 0.02 0.90 0.08 0.00;
#      0.00 0.00 0.02 0.90 0.08;
#      0.00 0.00 0.00 0.01 0.99]
# ]

# =========================
# Build policy graph
# =========================

model = SDDP.MarkovianPolicyGraph(
    transition_matrices = P,
    stages = T,   # your horizon
) do sp, node
    # your JuMP model here
end