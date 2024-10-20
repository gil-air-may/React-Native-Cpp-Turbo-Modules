#include "react-native-cpp-turbo.h"
#include <iostream>
#include <string>

namespace cppturbo {
	double multiply(double a, double b) {
		return a * b;
	}

	std::string reverseString(const std::string& input) {
		std::string reversed = input;
		int n = reversed.length();
		
		for (int i = 0; i < n / 2; ++i) {
			std::swap(reversed[i], reversed[n - i - 1]);
		}

		return reversed;
	}
}
