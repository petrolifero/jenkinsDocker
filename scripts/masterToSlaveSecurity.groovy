import jenkins.model.Jenkins
import jenkins.security.s2m.*
println ">>>>>>>>>>>>>>> master to slave wall of security enabled"

Jenkins.instance.injector.getInstance(AdminWhitelistRule.class).setMasterKillSwitch(false)
Jenkins.instance.save()
