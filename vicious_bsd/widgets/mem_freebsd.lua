---------------------------------------------------
-- Licensed under the GNU General Public License v2
--  * (c) 2010, Adrian C. <anrxc@sysphere.org>
--  * (c) 2009, Lucas de Vries <lucas@glacicle.com>
---------------------------------------------------

-- {{{ Grab environment
local tonumber = tonumber
local setmetatable = setmetatable
local math = { floor = math.floor }
local helpers = require("vicious.helpers")
-- }}}


-- Mem: provides RAM and Swap usage statistics
-- vicious.widgets.mem_freebsd
local mem_freebsd = {}


-- {{{ Memory widget type
local function worker(format)
    local hw = helpers.sysctl_table("hw")
    local vm = helpers.sysctl_table("vm")
    local vm_stats = helpers.sysctl_table("vm.stats.vm")
    local _mem = { buf = {}, swp = {}, total = nil }

    _mem.total = tonumber(vm_stats.v_page_count) * tonumber(hw.pagesize)
    _mem.buf.f = tonumber(vm_stats.v_free_count) * tonumber(hw.pagesize)
    _mem.buf.b = tonumber(vm_stats.v_inactive_count) * tonumber(hw.pagesize)
    _mem.buf.c = tonumber(vm_stats.v_cache_count) * tonumber(hw.pagesize)
    _mem.swp.t = tonumber(vm.swap_total)
    _mem.swp.f = _mem.swp.t - tonumber(vm_stats.v_swapin)

    _mem.total = math.floor(_mem.total/(1024*1024))
    _mem.buf.f = math.floor(_mem.buf.f/(1024*1024))
    _mem.buf.b = math.floor(_mem.buf.b/(1024*1024))
    _mem.buf.c = math.floor(_mem.buf.c/(1024*1024))
    _mem.swp.t = math.floor(_mem.swp.t/(1024*1024))
    _mem.swp.f = math.floor(_mem.swp.f/(1024*1024))

    -- Calculate memory percentage
    _mem.free  = _mem.buf.f + _mem.buf.b + _mem.buf.c
    _mem.inuse = _mem.total - _mem.free
    _mem.bcuse = _mem.total - _mem.buf.f
    _mem.usep  = math.floor(_mem.inuse / _mem.total * 100)
    -- Calculate swap percentage
    _mem.swp.inuse = _mem.swp.t - _mem.swp.f
    _mem.swp.usep  = math.floor(_mem.swp.inuse / _mem.swp.t * 100)

    return {_mem.usep,     _mem.inuse,     _mem.total, _mem.free,
            _mem.swp.usep, _mem.swp.inuse, _mem.swp.t, _mem.swp.f,
            _mem.bcuse }
end
-- }}}

return setmetatable(mem_freebsd, { __call = function(_, ...) return worker(...) end })
