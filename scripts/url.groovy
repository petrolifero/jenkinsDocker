import jenkins.model.JenkinsLocationConfiguration

println ">>>>>>>>>>>>Set url"

jlc = JenkinsLocationConfiguration.get()
jlc.setUrl("http://localhost:8080/")
jlc.save()
