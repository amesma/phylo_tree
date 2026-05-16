#Generates a phylogenetic tree in R from a distance matrix .DIST file

library(ape)
dist_table <- read.table("output.dist", skip=1, header=FALSE)

#colnames(dist_table) <- dist_table[,1]
#due to visualization issues row names are used
colnames(dist_table) <-rownames(dist_table)
dist_table <- dist_table[,-1]
dist_table <- as.dist(dist_table)
nj_tree <- nj(dist_table)
plot(nj_tree)

library(ape)
dist_table <- read.table("spike_filtered_omega.dist", skip=1, header=FALSE)

#colnames(dist_table) <- dist_table[,1]

dist_table <- dist_table[,-1]
dist_table <- as.dist(dist_table)
nj_tree <- nj(dist_table)
plot(nj_tree)
#awk -F'|' '{print $4}' file.dist

plot(nj_tree, type="fan", label.offset=0.1)

