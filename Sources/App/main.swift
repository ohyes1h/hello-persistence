import Vapor
import VaporPostgreSQL

let drop = Droplet(
    preparations: [Acronym.self],
    providers: [VaporPostgreSQL.Provider.self]
)

let basic = BasicController()
basic.addRoutes(drop: drop)

drop.run()
