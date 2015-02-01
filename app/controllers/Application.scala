package controllers

import play.api._
import play.api.mvc._

object Application extends Controller {

  def index = Action {
    Ok(views.html.index("Your new application is ready."))
  }

  def other(uri: String) = Action { req =>
    Ok("<amfx ver='3'><header name='playtest' mustUnderstand='false'></header><body></body></amfx>")
  }

  def test = Action { req =>
    Ok("<Employee><Name>Robin Hood</Name><Age>20</Age><Gender>0</Gender></Employee>")
  }
}