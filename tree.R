library(tidyverse)
library(BiocManager)
library(ggtree)
# BiocManager::install("ggtree")

tas1r3 <- read.tree("Jamestown_2022_11_23_tipdates_strict_HKYIG_constant_250m_noarctic_logcombo_MCMC.newick")


# TAS1R3 Tree
TAS1R3_tree <- ggtree(tas1r3) + geom_tiplab(as_ylab=TRUE, color='firebrick')
TAS1R3_tree
ggsave("new_tree.png")
