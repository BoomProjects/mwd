-- set the memory max setting
alter system set memory_max_target = 1G scope = spfile;
-- change the memory__target on the fly without restarting oracle xe.
alter system set memory_target = 500m scope = spfile;