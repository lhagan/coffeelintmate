fs = require("fs")
coffeescript = require("coffee-script")
linter = require("coffeelint")
jade = require("jade")

exports.main = (args) ->
  # variables to pass to jade template
  locals =
    style: args.style
    script: args.script
    filepath: args.filepath
    errors: []
    
  # create an array of lines in content
  lines = args.content.split '\n'
  
  # test-compile the content
  compileError = null
  try
    coffeescript.compile(args.content)
  catch error
    compileError = error.toString().replace('[|]', '')
    lineNumber = compileError.match(/line\s(\d+)$/)[1]
    locals.compileError = true
    locals.errors = [
      lineNumber: lineNumber
      message: compileError
      line: lines[lineNumber - 1].trim()
    ]
  
  # if it compiled, run through lint
  if !compileError
    # run content through coffeelint
    lint = linter.lint(args.content)
    
    if lint.length > 0
      # add actual line to each error
      for err in lint
        err.line = lines[err.lineNumber - 1].trim()
      locals.errors = lint
  
  # generate output
  output = []
  if args.short
    # brief tooltip output
    if locals.errors.length > 0
      error = locals.errors[0]
      issues = 'issues'
      if locals.errors.length == 1
        issues = 'issue'
      output.push "CoffeeLint found #{locals.errors.length} #{issues}. " +
                    "Run CoffeeLintMate for details."
      output.push "Line #{error.lineNumber}: #{error.message}"
      console.log output.join '\n'
  else
    # render template
    output = jade.compile(args.template)(locals)
  
    # display output
    console.log output
