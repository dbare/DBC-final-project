# Company.destroy_all
# User.destroy_all
# Job.destroy_all
# Project.destroy_all
# Profile.destroy_all
# Contract.destroy_all
# Link.destroy_all
# Evaluation.destroy_all


# All sample candidates
User.create(first_name: "Ethan", last_name: "Fertsch", email: "efertsch@gmail.com", password: "password")
User.create(first_name: "Davison", last_name: "Bare", email: "davis@mail.com", password: "password")
User.create(first_name: "Kimberly", last_name: "Embry", email: "kim@mail.com", password: "password")
User.create(first_name: "Brian", last_name: "Bernheim", email: "brian@mail.com", password: "password")
User.create(first_name: "Jack", last_name: "Howerton", email: "jack@mail.com", password: "password")

# User that works for a company aka HR rep.
User.create(first_name: "test", last_name: "test", email: "test", password: "test", company_id: 1)


#All sample Profiles 
Profile.create(location: "Greater Boston Area", objective: "Get a job building beautiful and meaningful things", summary: "My name is Ethan and I love dogs.", user_id: 1)
Profile.create(location: "San Francisco Bay Area", objective: "Get a job building beautiful and meaningful things", summary: "My name is Davis and I love pizza.", user_id: 2)
Profile.create(location: "San Francisco Bay Area", objective: "Get a job building beautiful and meaningful things", summary: "My name is Kim and I love looking on fleek at all times.", user_id: 3)
Profile.create(location: "San Francisco Bay Area", objective: "Get a job building beautiful and meaningful things", summary: "My name is Jack and I love wearing flip flops in March. ", user_id: 4)
Profile.create(location: "San Francisco Bay Area", objective: "Get a job building beautiful and meaningful things", summary: "My name is Brian and I love the word 'chill'", user_id: 5)



# All sample companies 
Company.create(name: "Carter, Reilly and Yost", email: "cry@mail.com", location: "5072 Stark Garden, Klingburgh, Michigan 48647")
Company.create(name: "Hartmann, Paucek and Ward", email: "hpw@mail.com", location: "7277 Steuber Spurs, Cydneyport, Colorado 95202")
Company.create(name: "Christiansen, Weissnat and Bradtke", email: "cwb@mail.com", location: "64920 Jast Track, Hettingerville, Virginia 88020")
Company.create(name: "Hintz-Kiehn", email: "hk@mail.com", location: "9267 Brown Lodge, Rolandostad, Nevada 43860")
Company.create(name: "Schmidt, Will and Ortiz", email: "swo@mail.com", location: "1847 Bailey Parks, Joeymouth, Wyoming 96527")
Company.create(name: "Jacobson LLC", email: "jacobson@mail.com", location: "633 Folsom Street, San Francisco, California 94107")
Company.create(name: "Heaney-Koelpin", email:" hkoelpin@mail.com", location: "741 Javier Ridge, Ibrahimberg, Nebraska 45526")
Company.create(name: "Ledner LLC", email: "ledner@mail.com", location: "38669 Cremin Squares, Trantowfort, Ohio 57413")
Company.create(name: "Considine-Abshire", email: "ca@mail.com", location: "124 Dario Plaza, New Leslie, North Dakota 46909")
Company.create(name: "Bashirian-Rath", email: "br@mail.com" , location: "813 Crooks Mount, East Mckenzie, Tennessee 35401")





# All sample jobs 

# Jobs posted from company 1
Job.create(position: "Immersive Conduct Commentator", location: "Klingburgh, Michigan", description: "Duties include syndicating sexy convergence and synthesizing e-business models", company_id: 1, compensation: "some", job_type:"full-time")

Job.create(position: "Decisive Branding Reporter", location: "Klingburgh, Michigan", description: "Duties include empowering 24/7 bandwidth and integrating wearable paradigms", company_id: 1, compensation: "tons", job_type:"internship")

#Jobs posted from company 2
Job.create(position: "Lead Infrastructure Engineer", location: "Cydneyport, Colorado", description: "Duties include implementing end-to-end synergies and strategizing real-time partnerships", company_id: 2, compensation: "none", job_type:"freelance")

Job.create(position: "Legacy Empowerment Planner", location: "Cydneyport, Colorado", description: "Duties include synergizing global niches and empowering viral mindshare", company_id: 2, compensation: "billions", job_type:"part-time")

Job.create(position: "Systematic Diversity Analyst", location: "Cydneyport, Colorado", description: "Duties include benchmarking killer paradigms and reinventing real-time models", company_id: 2, compensation: "billions", job_type:"part-time")

# #Jobs posted from company 3
Job.create(position: "Location-Aware Clickthrough Evangelist", location: "Hettingerville, Virginia", description: "Duties include evolving front-end web-readiness and incubating viral initiatives", company_id: 3, compensation: "billions", job_type:"part-time")

# #Jobs posted from company 4
Job.create(position: "Real-Time Share Options Discoverer", location: "Rolandostad, Nevada", description: "Duties include grow dot-com convergence and enabling killer infrastructures", company_id: 4, compensation: "billions", job_type:"part-time")
Job.create(position: "Social Software Technician", location: "Rolandostad, Nevada", description: "Duties include integrating disintermediate 24/7 technologies and maximizing bleeding-edge platforms", company_id: 4, compensation: "billions", job_type:"part-time")

# #Jobs posted from company 6
Job.create(position: "Lead Infrastructure Engineer", location: "San Francisco, California", description: "Duties include facilitating virtual e-tailers and incentivizing B2B communities", company_id: 6, compensation: "billions", job_type:"part-time")
Job.create(position: "Legacy Empowerment Planner", location: "San Francisco, California", description: "Duties include harnessing front-end vortals and reinventing granular technologies", company_id: 6, compensation: "billions", job_type:"part-time")
Job.create(position: "Systematic Diversity Analyst", location: "San Francisco, California", description: "Duties include syndicating frictionless e-markets and mesh viral relationships", company_id: 6, compensation: "billions", job_type:"part-time")

# #Jobs posted from company 10
Job.create(position: "Localized Paradigm Blogger", location: "East Mckenzie, Tennessee", description: "Duties include evolving value-added channels with an uncanny ability to orchestrate distributed functionalities", company_id: 10, compensation: "billions", job_type:"part-time")
Job.create(position: "Off Shore Module Guru", location: "East Mckenzie, Tennessee", description: "Duties include synthesizing efficient mindshare and targeting extensible partnerships", company_id: 10, compensation: "billions", job_type:"part-time")
Job.create(position: "Human Identity Discoverer", location: "East Mckenzie, Tennessee", description: "Duties include orchestrating sticky convergence and fulfilling the office ukelele supply", company_id: 10, compensation: "billions", job_type:"part-time")
Job.create(position: "Streamlined Tactics Orchestrator", location: "East Mckenzie, Tennessee", description: "Duties include aggregating wearable initiatives with clicks-and-mortar infomediaries", company_id: 10, compensation: "billions", job_type:"part-time")
Job.create(position: "Global Social Media Theorist", location: "East Mckenzie, Tennessee", description: "Duties include seizing and dominating dot-com supply-chains", company_id: 10, compensation: "billions", job_type:"part-time")
Job.create(position: "End User Synergy Instructor", location: "East Mckenzie, Tennessee", description: "Duties include maximizing dynamic hashtags and drinking coffee alone", company_id: 10, compensation: "billions", job_type:"part-time")



# All Sample Links

#GitHub
Link.create(link_type: "Github", url: "https://github.com/efertsch", description: "Link to Gituhb" , user_id: 1)
Link.create(link_type: "Github", url: "https://github.com/dbare", description: "Link to Gituhb", user_id: 2)
Link.create(link_type: "Github", url: "https://github.com/kimberlyjoyceembry", description: "Link to Gituhb" , user_id: 3)
Link.create(link_type: "Github", url: "https://github.com/jackhowerton", description: "Link to Gituhb" , user_id: 4)
Link.create(link_type: "Github", url: "https://github.com/btbernheim", description: "Link to Gituhb", user_id: 5)

#LinkedIn
Link.create(link_type: "LinkedIn", url: "https://www.linkedin.com/in/ethan-fertsch/", description: "Link to LinkedIn", user_id: 1)
Link.create(link_type: "LinkedIn", url: "https://www.linkedin.com/in/davis-bare/", description: "Link to LinkedIn", user_id: 2)
Link.create(link_type: "LinkedIn", url: "https://www.linkedin.com/in/kimberly-embry-53346388/", description: "Link to LinkedIn", user_id: 3)
Link.create(link_type: "LinkedIn", url: "https://www.linkedin.com/in/jackhowerton/", description: "Link to LinkedIn", user_id: 4)
Link.create(link_type: "LinkedIn", url: "https://www.linkedin.com/in/brian-bernheim-67381665/", description: "Link to LinkedIn", user_id: 5)



#All Sample Evaluations
Evaluation.create(review: "Exceeds expectations, brings unmatched enthusiasm to the project" , rating: 5, author_id: 1, subject_id: 2)
Evaluation.create(review: "Excellent attention to detail with an eye for design", rating: 5, author_id: 1, subject_id: 3)
Evaluation.create(review: "Compassionate, consistently brought 110 percent to every aspect of project", rating: 5, author_id: 2, subject_id: 2)
Evaluation.create(review: "Thorough and logical, an exceptional problem solver", rating: 5, author_id: 4, subject_id: 2)
Evaluation.create(review: "Has a big ol' beard", rating: 5, author_id: 1, subject_id: 4)


# All sample tokens
("a".."z").to_a.each do |letter|
	Token.create(characters: letter)
end

(1..9).to_a.each do |number|
	Token.create(characters: number, admin_token: true)
end





