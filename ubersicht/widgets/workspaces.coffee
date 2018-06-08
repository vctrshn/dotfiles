command: "./workspaces.sh"

refreshFrequency: 1000

render: (output) ->
  return """
    <div id='workspaces'></div>
  """

update: (output, domEl) ->
  [currentWorkspace, allWorkspaces] = output.split '@'
  $(domEl).find('#workspaces').html(@renderSpaces currentWorkspace, allWorkspaces)

renderSpaces: (currentWorkspace, allWorkspaces) ->
  allWorkspaces = allWorkspaces.split(' ')

  workspaceIdx = allWorkspaces.indexOf(currentWorkspace)

  return (@renderWorkspace workspace, idx == workspaceIdx for workspace, idx in allWorkspaces).join(' ')

renderWorkspace: (workspace, isActive) ->
  if isActive
    return "<div class='active workspace'>#{workspace}</div>"
  else
    return "<div class='workspace'>#{workspace}</div>"

style: """
  #workspaces
    color: #e06c75
    display: flex
    font-family: Helvetica Neue
    font-size: 12px
    font-weight: 400
    height: 22px
    line-height: 22px
    margin-left: 10px
    width: 100px

  .workspace
    padding: 0 4px

  .active
    background: #3b4048
    color: #d19a66
"""

