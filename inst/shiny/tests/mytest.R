.GlobalEnv$.posts.path <- system.file(package = "blogyaml", "example_blog")
app <- ShinyDriver$new("../")
app$snapshotInit("mytest")
Sys.sleep(2)
app$setInputs(do = "click")
app$snapshot()
on.exit(rm(.posts.path, envir=.GlobalEnv))
