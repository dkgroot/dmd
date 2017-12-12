// REQUIRED_ARGS: -inline
// PERMUTE_ARGS: -O -release -g
import std.file, std.stdio;

int main()
{
    //writeln(thisExePath);
    //auto size = getSize("/root/dmd/v2.068.2/dmd/test/test_results/runnable/test13117b_0");
    auto size = thisExePath.getSize();
    writeln(size);
    version (D_LP64)
        enum limit = 2023652;
    else
        enum limit = 1763328;
    writeln(limit);
    writeln(limit * 11 / 10);
    writeln(size > limit * 11 / 10);
    return size > limit * 11 / 10;
}
