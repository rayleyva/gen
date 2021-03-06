import os
import strformat
import fab
import docopt
import progress
import commands/[app,api,model,controller,license,docker,test,configs]



let doc = """
Gen - Scaffolding tool for GUI/Web/CLI apps.

Usage:
  gen jester:app <project>...
  gen jester:api <api>...
  gen jester:model <model>...
  gen jester:controller <controller>...
  gen jester:test <file>...
  gen nigui:app <project>...
  gen cli:app <project>...
  gen new:license <license>...
  gen new:configs [--docker, --travis, --env]
  gen (-h | --help)
  gen (-v | --version)

Options:
  <license>      MIT | BSD | Apache | GPL
  -h --help      Show this screen.
  -v --version   Show version.
"""



let args = docopt(
doc,
version = """
Gen ©2019 
Version: 1.2.0
Desc: Scaffolding tool for GUI/Web/CLI Apps
Author: Adeoluwa Adejumo
""")



if args["jester:app"]: 
  genApp(args)
  
if args["jester:api"]:
  genAPI(args)

if args["jester:model"]:
  genModel(args)

if args["jester:controller"]:
  genController(args)

if args["jester:test"]:
  genTest(args)

if args["new:license"]:
  genLicense(args)

if args["new:configs"]:
  genConfigs()
