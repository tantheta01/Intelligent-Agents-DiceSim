#this R program simulates 3 rolling dice
# we perform 10 simulations and in each simulation we create 3 dice 
# through random variable generator

minlim = 1
maxlim = 6
num_of_sims = 10
num_steps = 50
sim_range = 1:num_of_sims
step_range = 1:num_steps
final_probability = 0
for (sim in sim_range) {
	cat("simulation: ")
	cat(sim)
	cat("\n")
	dice = function(n) sample(minlim : maxlim, n, replace = T)
	counter = 0
	for (step in step_range) {
		output = dice(3)
		cat(step)
		cat(output)
		cat("\n")
		if(sum(output) >= 14 & sum(output) <= 16){
			counter = counter+1
		}
	}
	Probability = as.double(counter)/as.double(num_steps)
	final_probability = final_probability + Probability
}
cat("Probability is ")
cat(Probability)
cat("\n")
