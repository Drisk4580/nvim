local M = {}

function M.telescope(builtin, opts)
    local params = { builtin = builtin, opts = opts }
    return function()
        builtin = params.builtin
        if builtin == "files" then
            builtin = "find_files"
        end
        require("telescope.builtin")[builtin](opts)
    end
end

return M;
