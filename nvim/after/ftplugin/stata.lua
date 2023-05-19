-- configuration for stata files


-- change commentstring so that it uses *
-- TODO: change to lua at some point
vim.cmd([[ 
setlocal comments=:*
setlocal commentstring=*\ %s
]])
