#include <iostream>

#include <Ansi++/ccAnsi.h>


auto main() -> int{

    namespace AnsiColor = Ansi::Color;
    Ansi::CAnsi Con;
    Con.Init();
    Con << AnsiColor::Cyan << "Salutations" << AnsiColor::HGreen << "!!!!\n" << AnsiColor::Endl;

    return 0;
}
