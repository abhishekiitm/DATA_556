# code for assignment 6 problem 8

y=matrix(c(0.018,0.035,0.031,0.008,0.018,
           0.002,0.112,0.064,0.032,0.069,
           0.001,0.066,0.094,0.032,0.084,
           0.001,0.018,0.019,0.010,0.051,
           0.001,0.029,0.032,0.043,0.130),nrow=5,byrow=TRUE)

colnames(y)=c("farm","operatives","craftsmen","sales","professional")
rownames(y)=colnames(y)

# make sure this is a joint distribution
sum(y)
# the returned value is indeed 1

# marginal distribution of a father's occupation
pmf_occupation_father = rowSums(y)
print(pmf_occupation_father)

# marginal distribution of a son's occupation
pmf_occupation_son = colSums(y)
print(pmf_occupation_son)

# conditional distribution of a son's occupation, given that the father is a farmer
pmf_occupation_son_given_father_farmer = y['farm',]/pmf_occupation_father['farm']
print(pmf_occupation_son_given_father_farmer)

# conditional distribution of a father's occupation, given that the son is a farmer
pmf_occupation_father_given_son_farmer = y[,'farm']/pmf_occupation_son['farm']
print(pmf_occupation_father_given_son_farmer)
