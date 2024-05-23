--------------
-- obsidian --
--------------
--
-- >>> oo # from shell, navigate to vault (optional)
--
-- # NEW NOTE
-- >>> on "Note Name" # call my "obsidian new note" shell script (~/bin/on)
-- >>>
-- >>> ))) <leader>on # inside vim now, format note as template
-- >>> ))) # add tag, e.g. fact / blog / video / etc..
-- >>> ))) # add hubs, e.g. [[python]], [[machine-learning]], etc...
-- >>> ))) <leader>of # format title
--
-- # END OF DAY/WEEK REVIEW
-- >>> or # review notes in inbox
-- >>>
-- >>> ))) <leader>ok # inside vim now, move to zettelkasten
-- >>> ))) <leader>odd # or delete
-- >>>
-- >>> og # organize saved notes from zettelkasten into notes/[tag] folders
-- >>> ou # sync local with Notion
--
-- navigate to vault
vim.keymap.set("n", "<leader>oo", ":cd $OBSIDIAN_VAULT<cr>", { desc = "Open Vault" })
--
-- convert note to template and remove leading white space
vim.keymap.set(
  "n",
  "<leader>ot",
  ":ObsidianTemplate note<cr> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<cr>",
  { desc = "Add Template" }
)
-- strip date from note title and replace dashes with spaces
-- must have cursor on title
vim.keymap.set("n", "<leader>of", ":s/\\(# \\)[^_]*_/\\1/ | s/-/ /g<cr>", { desc = "Format Title" })
--
-- search for files in full vault
vim.keymap.set(
  "n",
  "<leader>os",
  ':Telescope find_files search_dirs={"$OBSIDIAN_VAULT/notes"}<cr>',
  { desc = "Search" }
)
vim.keymap.set(
  "n",
  "<leader>oz",
  ':Telescope live_grep search_dirs={"$OBSIDIAN_VAULT/notes"}<cr>',
  { desc = "Search in files" }
)

-- create new note
vim.keymap.set("n", "<leader>on", ":ObsidianNew<cr>", { desc = "New Note" })

--
-- for review workflow
-- move file in current buffer to zettelkasten folder
vim.keymap.set(
  "n",
  "<leader>ok",
  ":!mv '%:p' $OBSIDIAN_VAULT/zettelkasten<cr>:bd<cr>",
  { desc = "Move to Zettelkasten" }
)
-- delete file in current buffer
vim.keymap.set("n", "<leader>odd", ":!rm '%:p'<cr>:bd<cr>", { desc = "Delete" })

-- run zettelkasten organizer script
vim.keymap.set("n", "<leader>og", ":!og<cr>", { desc = "Organize Zettelkasten" })
