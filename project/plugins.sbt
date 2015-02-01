resolvers += "Typesafe repository" at "http://repo.typesafe.com/typesafe/releases/"

addSbtPlugin("com.typesafe.play" % "sbt-plugin" % "2.3.7")

libraryDependencies ++= Seq(
  "com.typesafe"        % "config"                  % "1.2.1",
  "com.typesafe.slick"  %% "slick-codegen"          % "2.1.0",
  "mysql"               %  "mysql-connector-java"   % "5.1.34",
  "com.typesafe.play"   %% "play-slick"             % "0.8.1"
)