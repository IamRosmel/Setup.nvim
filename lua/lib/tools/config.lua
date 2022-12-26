local M = {}

M.custom = {
  config_dir_rel = "lua/custom",
  config_dir_abs = vim.fn.stdpath "config" .. "/lua/custom",
  default_setup_example_path = vim.fn.stdpath "config" .. "/lua/lib/tools/examples/setup.lua",
  default_setup_path = vim.fn.stdpath "config" .. "/lua/custom/" .. "setup.lua",
}

M.snaps = {
  base_snap_branch_name = "Setup_Snapshot_",
  base_config_stash_name = "Setup_Snapshot_Custom_Dir_Backup_",
  base_tmp_commit_message = "Setup_Snapshot_tmp_commit_",
  base_custom_changes_commit_message = "User_custom_changes_commit_",
  base_commit_message = "Setup_Snapshot_of_commit_",
}

return M
