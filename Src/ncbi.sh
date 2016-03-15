#!/usr/bin/env bash

# Identify my queries 

$tool=emilielecomtesoft
$email=emilielecomteumr1089@gmail.com


$db = 'nucleotide'

# print the list of id
curl "http://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=nucleotide&term=autographa+californica+multiple+nucleopolyhedrovirus+complete+genome"

# count the number of id 
curl "http://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=nucleotide&term=autographa+californica+multiple+nucleopolyhedrovirus+complete+genome&rettype=count"

# print a quick description of one id (esummary don't run with accession number)
curl "http://eutils.ncbi.nlm.nih.gov/entrez/eutils/esummary.fcgi?db=nucleotide&id=851968049"

# retrieve nucleotide id as fasta
# rettype could be gb
curl "http://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&id=851968049&rettype=fasta"

