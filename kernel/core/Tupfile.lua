if tup.getconfig("NO_FASM") ~= "" then return end
tup.rule("mtrrtest.asm", "fasm %f %o", "mtrrtest.exe")
tup.rule({"test_malloc.asm", extra_inputs = {"../rev.inc"}}, "fasm %f %o", "test_malloc")
