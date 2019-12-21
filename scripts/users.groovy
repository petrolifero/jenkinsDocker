import jenkins.model.*
import hudson.security.*


println ">>>>>>>>Criando usuario"
def instance = Jenkins.getInstance()

def hudsonRealm = new HudsonPrivateSecurityRealm(false)
hudsonRealm.createAccount("joao","abc123")
instance.setSecurityRealm(hudsonRealm)
def strategy = new FullControlOnceLoggedInAuthorizationStrategy()
strategy.setAllowAnonymousRead(false)
instance.setAuthorizationStrategy(strategy)
instance.save()
