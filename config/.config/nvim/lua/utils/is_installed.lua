local utils = {}

function utils.is_installed(command)
  local handle = io.popen(command .. " --version 2>&1")
  local result = handle:read "*a"
  local success, _, exitcode = handle:close()

  if success and exitcode == 0 then
    return true, result
  else
    return false, result
  end
end

return utils
