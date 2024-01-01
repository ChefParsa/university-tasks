#ifndef MANUAL_LEXER
    #define MANUAL_LEXER

    #include<string>
    #include<vector>
    #include<algorithm>
    #include<regex>
    #include<fstream>

    //define pattern with regex
    std::regex real_pattern("real");
    std::regex integer_pattern("integer");
    std::regex char_pattern("char");
    std::regex number_pattern("[-+]?\\d+(\\.\\d+)?");
    std::regex dotdot_pattern("\\.\\.");
    std::regex id_pattern("^id");
    std::regex of_pattern("of");
    std::regex openBracket_pattern("\\[");
    std::regex closeBracket_pattern("\\]");
    std::regex array_pattern("array");
    std::regex whiteSpace_pattern("[[:space:]]");

    //make vector of patterns
    std::vector<std::regex> terminals = {real_pattern, integer_pattern, char_pattern, number_pattern, dotdot_pattern,
    id_pattern, of_pattern, openBracket_pattern, closeBracket_pattern, array_pattern, whiteSpace_pattern};

    std::vector<std::string> terminals_name = {"real", "integer", "char", "number", "dotdot", "id", "of",
    "open bracket", "close bracket", "array"};

    //open input file
    //std::ifstream file("input.txt");

#endif //MANUAL_LEXER