# Generating Phylogenetic Trees from Covid-19 Spilke Protein Sequences

The purpose of this study is to quantify the differences in multiple COVID-19 spike protein sequences and construct a phylogenetic tree to analyze their evolutionary differences.

## Data Collection
I used the spike protein FASTA file from GISAID to collect sequences for analysis and selected a subset of 800000 sequences to work from due to RAM constraints. From this subset, I removed incomplete sequences and selected the 100 most recently processed sequences based on this guide from Dr. Jean-Yves Sgro. The sequences I used were collected from 2024 to 2025.  I used Clustal Omega to generate distance matrices and then processed the resulting file into a distance matrix in R. Finally, I used the neighbor-join method from the Ape package from R to generate a phylogenetic tree of the 100 samples.

## Results

The two samples that have the longest branches are v5 and v7. V8 and v15 accumulated the most differences compared to the samples at the base of the tree.l EPI_ISL_1965497 (v15) and EPI_ISL_19654980 (v8) were collected one day after another in Iowa (01-01-2025 and 01-02-2025). EPI_ISL_19654244 (v5) and EPI_ISL_19654984 (v7) were collected from Kearney, Nebraska Kearney and Iowa, respectively. A group of 19 samples did not display large amounts of genetic differences, and many of this set were collected in Canada, only a few days apart from each other.

## Discussion

Although generation of a phylogenetic tree alone does not inform a specific evolutionary hypothesis, it offered an initial look into how, with more data, I could begin to construct a hypothesis on how Covid sequences and variants evolve, and understand how this disease spreads.
