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
Company.create(name: "Carter, Reilly and Yost", email: "cry@mail.com", location: "5072 Stark Garden, Klingburgh, Michigan 48647", password: "password")
Company.create(name: "Hartmann, Paucek and Ward", email: "hpw@mail.com", location: "7277 Steuber Spurs, Cydneyport, Colorado 95202", password: "password")
Company.create(name: "Christiansen, Weissnat and Bradtke", email: "cwb@mail.com", location: "64920 Jast Track, Hettingerville, Virginia 88020", password: "password")
Company.create(name: "Hintz-Kiehn", email: "hk@mail.com", location: "9267 Brown Lodge, Rolandostad, Nevada 43860", password: "password")
Company.create(name: "Schmidt, Will and Ortiz", email: "swo@mail.com", location: "1847 Bailey Parks, Joeymouth, Wyoming 96527", password:"password")
Company.create(name: "Jacobson LLC", email: "jacobson@mail.com", location: "633 Folsom Street, San Francisco, California 94107", password:"password")
Company.create(name: "Heaney-Koelpin", email:" hkoelpin@mail.com", location: "741 Javier Ridge, Ibrahimberg, Nebraska 45526", password:"password")
Company.create(name: "Ledner LLC", email: "ledner@mail.com", location: "38669 Cremin Squares, Trantowfort, Ohio 57413", password:"password")
Company.create(name: "Considine-Abshire", email: "ca@mail.com", location: "124 Dario Plaza, New Leslie, North Dakota 46909", password:"password")
Company.create(name: "Bashirian-Rath", email: "br@mail.com" , location: "813 Crooks Mount, East Mckenzie, Tennessee 35401", password:"password")


# All sample jobs 

# Jobs posted from company 1
Job.create(position: "Immersive Conduct Commentator", location: "Klingburgh, Michigan", description: "Duties include syndicating sexy convergence and synthesizing e-business models", company_id: 1)
Job.create(position: "Decisive Branding Reporter", location: "Klingburgh, Michigan", description: "Duties include empowering 24/7 bandwidth and integrating wearable paradigms", company_id: 1)

#Jobs posted from company 2
Job.create(position: "Lead Infrastructure Engineer", location: "Cydneyport, Colorado", description: "Duties include implementing end-to-end synergies and strategizing real-time partnerships", company_id: 2)
Job.create(position: "Legacy Empowerment Planner", location: "Cydneyport, Colorado", description: "Duties include synergizing global niches and empowering viral mindshare", company_id: 2)
Job.create(position: "Systematic Diversity Analyst", location: "Cydneyport, Colorado", description: "Duties include benchmarking killer paradigms and reinventing real-time models", company_id: 2)

# #Jobs posted from company 3
Job.create(position: "Location-Aware Clickthrough Evangelist", location: "Hettingerville, Virginia", description: "Duties include evolving front-end web-readiness and incubating viral initiatives", company_id: 3)

# #Jobs posted from company 4
Job.create(position: "Real-Time Share Options Discoverer", location: "Rolandostad, Nevada", description: "Duties include grow dot-com convergence and enabling killer infrastructures", company_id: 4)
Job.create(position: "Social Software Technician", location: "Rolandostad, Nevada", description: "Duties include integrating disintermediate 24/7 technologies and maximizing bleeding-edge platforms", company_id: 4)

# #Jobs posted from company 6
Job.create(position: "Lead Infrastructure Engineer", location: "San Francisco, California", description: "Duties include facilitating virtual e-tailers and incentivizing B2B communities", company_id: 6)
Job.create(position: "Legacy Empowerment Planner", location: "San Francisco, California", description: "Duties include harnessing front-end vortals and reinventing granular technologies", company_id: 6)
Job.create(position: "Systematic Diversity Analyst", location: "San Francisco, California", description: "Duties include syndicating frictionless e-markets and mesh viral relationships", company_id: 6)

# #Jobs posted from company 10
Job.create(position: "Localized Paradigm Blogger", location: "East Mckenzie, Tennessee", description: "Duties include evolving value-added channels with an uncanny ability to orchestrate distributed functionalities", company_id: 10)
Job.create(position: "Off Shore Module Guru", location: "East Mckenzie, Tennessee", description: "Duties include synthesizing efficient mindshare and targeting extensible partnerships", company_id: 10)
Job.create(position: "Human Identity Discoverer", location: "East Mckenzie, Tennessee", description: "Duties include orchestrating sticky convergence and fulfilling the office ukelele supply", company_id: 10)
Job.create(position: "Streamlined Tactics Orchestrator", location: "East Mckenzie, Tennessee", description: "Duties include aggregating wearable initiatives with clicks-and-mortar infomediaries", company_id: 10)
Job.create(position: "Global Social Media Theorist", location: "East Mckenzie, Tennessee", description: "Duties include seizing and dominating dot-com supply-chains", company_id: 10)
Job.create(position: "End User Synergy Instructor", location: "East Mckenzie, Tennessee", description: "Duties include maximizing dynamic hashtags and drinking coffee alone", company_id: 10)



# All Sample Projects

# Projects posted from company 3
Project.create(title: "woooo", location: "Hettingerville, Virginia", description: "Need a developer to update the footer of my website", company_id: 3)
Project.create(title: "do this", location: "Hettingerville, Virginia", description: "Need a developer to explain to me what a ruby is", company_id: 3)
Project.create(title: "don't do that", location: "Hettingerville, Virginia", description: "Need a developer to help energize my team", company_id: 3)
Project.create(title: "whoops", location: "Hettingerville, Virginia", description: "Need a developer to organize an internal hackathon", company_id: 3)
Project.create(title: "floppy disks", location: "Hettingerville, Virginia", description: "Need a developer to DRY up my codebase", company_id: 3)

# Projects posted from company 5
Project.create(title: "2048", location: "Joeymouth, Wyoming", description: "Need a developer to optimize my algorithms", company_id: 5)

# Projects posted from company 7
Project.create(title: "seed file breh", location: "Ibrahimberg, Nebraska", description: "Need a developer to write a gem", company_id: 7)
Project.create(title: "glory road app", location: "Ibrahimberg, Nebraska", description: "Need a developer to make our site dynamic", company_id: 7)

# Projects posted from company 6
Project.create(title: "blank for blank", location: "Trantowfort, Ohio", description: "Need a developer to fix a bug", company_id: 6)
Project.create(title: "tinder clone", location: "Trantowfort, Ohio", description: "Need a developer to google it for me", company_id: 6)

# Projects posted from company 8
Project.create(title: "BAILA BAILA BAILA BAILA", location: "Trantowfort, Ohio", description: "Need a developer to mentor interns", company_id: 8)
Project.create(title: "whut", location: "Trantowfort, Ohio", description: "Need a developer to promote diversity in the space", company_id: 8)


# Projects posted from company 9
Project.create(title: "delete stuff", location: "New Leslie, North Dakota", description: "Need a developer to illustrate a schema", company_id: 9)
Project.create(title: "copy stuff", location: "New Leslie, North Dakota", description: "Need a developer to set up a server", company_id: 9)
Project.create(title: "migrations", location: "New Leslie, North Dakota", description: "Need a developer to configure my app", company_id: 9)

# All Sample Contracts 
Contract.create(user_id: 1, project_id: 4)
Contract.create(user_id: 2, project_id: 9)
Contract.create(user_id: 2, project_id: 6)
Contract.create(user_id: 3, project_id: 15)
Contract.create(user_id: 4, project_id: 1)
Contract.create(user_id: 5, project_id: 7)



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
Evaluation.create(review: "Exceeds expectations, brings unmatched enthusiasm to the project" , rating: 5,  contract_id: 1)
Evaluation.create(review: "Excellent attention to detail with an eye for design", rating: 5,  contract_id: 2)
Evaluation.create(review: "Compassionate, consistently brought 110 percent to every aspect of project", rating: 5,  contract_id: 4)
Evaluation.create(review: "Thorough and logical, an exceptional problem solver", rating: 5,  contract_id: 5)
Evaluation.create(review: "Has a big ol' beard", rating: 5,  contract_id: 6)


# All sample tokens
("a".."z").to_a.each do |letter|
	Token.create(characters: letter)
end

(1..9).to_a.each do |number|
	Token.create(characters: number, admin_token: true)
end





