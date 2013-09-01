#ifndef CASEXPRESSION_H
#define CASEXPRESSION_H

#include "casobject.h"


#include <vector>
class CasExponent ;

class CasExpression {
 private:
  std::vector<CasObject> casArray;
  CasExponent * exponent; //making this a pointer so that it isn't auto-initialized; 
 public:
  CasExpression();
  // double getExponent();
  //void setExponent(double);

};
#endif
