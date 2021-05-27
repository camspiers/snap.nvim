local _2afile_2a = "fnl/snap/consumer/fzy/score.fnl"
local snap = require("snap")
local fzy = require("fzy")
local function _1_(producer)
  local function _2_(request)
    for results in snap.consume(producer, request) do
      local _3_0 = type(results)
      if (_3_0 == "table") then
        local function _4_(_241)
          local function _5_()
            if (request.filter ~= "") then
              return fzy.score(request.filter, tostring(_241))
            else
              return 0
            end
          end
          return snap.with_meta(_241, "score", _5_())
        end
        coroutine.yield(vim.tbl_map(_4_, results))
      elseif (_3_0 == "nil") then
        coroutine.yield(nil)
      end
    end
    return nil
  end
  return _2_
end
return _1_