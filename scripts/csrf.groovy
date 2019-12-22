import hudson.security.csrf.DefaultCrumbIssuer
import jenkins.model.Jenkins
println ">>>>>>>>>>>>>>csrf"
def instance = Jenkins.instance
instance.setCrumbIssuer(new DefaultCrumbIssuer(true))
instance.save()
