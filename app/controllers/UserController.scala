package controllers

import models.User
import org.joda.time.DateTime
import play.api.libs.json.Json
import play.api.mvc.{Action, Controller}

object UserController extends Controller {
  implicitly[Ordering[Option[Long]]]

  var users = Seq(
    User(Option.apply(1), "User 01", new DateTime(2012,1,1,12,0)),
    User(Option.apply(2), "User 02", new DateTime(2013,11,8,15,0)),
    User(Option.apply(3), "User 03", new DateTime(2014,8,15,17,0)))

  def findOne(id: Long) = Action {
    users.find(_.id.get == id) match {
      case None => NotFound
      case Some(u) => Ok(Json.toJson(u))
    }
  }

  def findAll = Action {
    Ok(Json.toJson(users))
  }

  def create = Action(parse.json[User]) { req =>
    Ok(appendImpl(req.body).id.get.toString)
  }

  def update(id:Long) = Action(parse.json[User]) { req =>
    Ok(updateImpl(Option.apply(id), req.body).toString)
  }

  def save = Action(parse.json[User]) { req =>
    saveImpl(req.body) match {
      case None => Ok("")
      case Some(u) =>
        Ok(u.id.get.toString)
    }
  }

  def batchSave = Action(parse.json[Seq[User]]) { req =>
    var count:Long = 0
    var lastId:Long = -1
    req.body.foreach( u =>
      saveImpl(u) match {
        case Some(saved) =>
          count += 1
          lastId = saved.id.get
      }
    )
    if(count == 0)
      Ok("")
    else
      Ok("{\"lastId\":" +lastId+ ",\"count\":" + count + "}")
  }

  def remove(id:Long) = Action { req =>
    val r =removeImpl(id)
    Ok(r.toString)
  }

  def batchRemove = Action(parse.json[Seq[Long]]) { req =>
    var count:Long = 0
    req.body.foreach( id =>
      count = count + removeImpl(id)
    )
    Ok(count.toString)
  }

  private def appendImpl(u:User):User = {
    val newUser = new User(Option.apply(users.length + 1), u.name, u.bod)
    users = users :+ newUser
    newUser
  }

  private def updateImpl(id:Option[Long],u:User):Long = {
    users.find(_.id == id) match {
      case None => 0
      case Some(found) =>
        users = users.updated(users.indexOf(found), new User(found.id, u.name, u.bod))
        1
    }
  }

  private def saveImpl(u:User):Option[User] = {
    if(updateImpl(u.id, u) != 0)
      None
    else
      Option.apply(appendImpl(u))
  }

  private def removeImpl(id:Long):Long = {
    users.find(_.id.get == id) match {
      case None => 0
      case Some(u) =>
        users = users.filter(_.id.get != id)
        1
    }
  }
}
