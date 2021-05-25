local _2afile_2a = "fnl/snap/buffer.fnl"
local _0_0
do
  local name_0_ = "snap.buffer"
  local module_0_
  do
    local x_0_ = package.loaded[name_0_]
    if ("table" == type(x_0_)) then
      module_0_ = x_0_
    else
      module_0_ = {}
    end
  end
  module_0_["aniseed/module"] = name_0_
  module_0_["aniseed/locals"] = ((module_0_)["aniseed/locals"] or {})
  module_0_["aniseed/local-fns"] = ((module_0_)["aniseed/local-fns"] or {})
  package.loaded[name_0_] = module_0_
  _0_0 = module_0_
end
local function _1_(...)
  local ok_3f_0_, val_0_ = nil, nil
  local function _1_()
    return {require("snap.producer.buffer"), require("snap.select.file"), require("snap.consumer.fzy"), require("snap")}
  end
  ok_3f_0_, val_0_ = pcall(_1_)
  if ok_3f_0_ then
    _0_0["aniseed/local-fns"] = {require = {buffer = "snap.producer.buffer", file = "snap.select.file", fzy = "snap.consumer.fzy", snap = "snap"}}
    return val_0_
  else
    return print(val_0_)
  end
end
local _local_0_ = _1_(...)
local buffer = _local_0_[1]
local file = _local_0_[2]
local fzy = _local_0_[3]
local snap = _local_0_[4]
local _2amodule_2a = _0_0
local _2amodule_name_2a = "snap.buffer"
do local _ = ({nil, _0_0, {{}, nil, nil, nil}})[2] end
local run
do
  local v_0_
  do
    local v_0_0
    local function run0()
      return snap.run({producer = fzy.create(buffer.create), prompt = "Buffers", select = file.select})
    end
    v_0_0 = run0
    _0_0["run"] = v_0_0
    v_0_ = v_0_0
  end
  local t_0_ = (_0_0)["aniseed/locals"]
  t_0_["run"] = v_0_
  run = v_0_
end
return nil