assert = require "assert"
utils = require "../"

log = ''
utils.log = (str) -> log += str + ' . '

describe "loggedExec", ->
  beforeEach ->
    log = ''

  it "logs stdout to utils.log", (done) ->
    utils.loggedExec "echo foobar", ->
      assert.equal log, '> echo foobar . foobar\n . '
      done()

  it "still supports the exec interface", (done) ->
    utils.loggedExec "echo foobar", (err, stdout, stderr) ->
      assert.equal stdout, 'foobar\n'
      utils.loggedExec "ls doesnotexist", (err, stdout, stderr) ->
        assert.equal stderr, 'ls: doesnotexist: No such file or directory\n'
        done()
