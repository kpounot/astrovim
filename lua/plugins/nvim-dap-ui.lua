return {
  "rcarriga/nvim-dap-ui",
  config = function(plugin, opts)
    require("dapui").setup()
    local dap, dapui = require "dap", require "dapui"
    dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open { reset = true } end
    dap.listeners.before.event_terminated["dapui_config"] = dapui.close
    dap.listeners.before.event_exited["dapui_config"] = dapui.close
  end,
}
