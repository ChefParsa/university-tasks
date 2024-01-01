#include<iostream>
#include"manualLexer.hpp"

std::vector<int> scaner() {
    std::ifstream file("input.txt");
    std::vector<int> states;
    if (!file.is_open()) {
        std::cerr << "Unable to open file.\n";
    }
    else {
    char ch;
    std::string token = "";
    while (file.get(ch)) {
        std::string ch_to_str = "" + std::string(1, ch);
        if (std::regex_match(ch_to_str, openBracket_pattern) && token == "") {
                states.push_back(7);
                continue;
        }
        else if (std::regex_match(ch_to_str, closeBracket_pattern) && token == "") {
            states.push_back(8);
            continue;
        }
        if (std::regex_match(ch_to_str, whiteSpace_pattern)) {
            if (token != "") {
            for (int i =0; i < terminals.size() - 1; i++)
                if(i == 7 || i == 8)
                    continue;
                else {
                    if (std::regex_match(token, terminals[i])) {
                        states.push_back(i);
                        token = "";
                        break;
                    }
                }
            }
        }
        else {
            token += ch_to_str; 
            continue;
        }
    }
    }
    file.close();
    return states;
}

int main() {
    std::vector<int> terminals_number = scaner();
    for (int i =0; i < terminals_number.size(); i++){
        std::cout << terminals_name[terminals_number[i]] << std::endl;
    }
    return 0;
}