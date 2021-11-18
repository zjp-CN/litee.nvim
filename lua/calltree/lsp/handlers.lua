local tree = require('calltree.tree')
local ui = require('calltree.ui')

local M = {}

-- ch_lsp_handler is the call heirarchy handler
-- used in replacement to the default lsp handler.
--
-- this handler serves as the single entry point for creating
-- a calltree.
M.ch_lsp_handler = function(direction)
    return function(err, result, ctx, _)
        if err ~= nil then
            return
        end
        if result == nil then
            return
        end
        -- snag the lsp clients from the buffer issuing the
        -- call hierarchy request
        ui.active_lsp_clients = vim.lsp.get_active_clients()

        -- tell the ui what direction the call tree is being invoked
        -- with.
        ui.direction = direction

        -- store the window invoking the call tree, jumps will 
        -- occur here.
        ui.invoking_win_handle = vim.api.nvim_get_current_win()

        -- create the root of our call tree, the request which
        -- signaled this response is in ctx.params
        local root = tree.Node.new(ctx.params.item.name,
        0,
        ctx.params.item,
        ctx.params.item.kind)

        -- create the root's children nodes via the response array.
        local children = {}
        for _, call_hierarchy_call in pairs(result) do
          local child = tree.Node.new(
             call_hierarchy_call[direction].name,
             0, -- tree.add_node will set the depth correctly.
             call_hierarchy_call[direction],
             call_hierarchy_call[direction].kind,
             call_hierarchy_call.fromRanges
          )
          table.insert(children, child)
        end

        -- add the new root, its children, and rewrite the
        -- tree (will open the calltree ui if necessary).
        tree.add_node(root, children)
        ui.write_tree({}, tree.root_node)
    end
end

return M
