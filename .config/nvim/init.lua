-- NeoVim Configuration
-- This is the main entry point for the NeoVim configuration
-- It loads all the core modules in a specific order

-- Load core configuration
require("core.mappings")      -- Basic Editor options
require("core.options")       -- Key mappings
require("core.plugins")       -- Plugin management
require("core.plugin_config") -- Plugin configuration
