//
//  util.cpp
//  
//
//  Created by Fabio Vitello on 07/04/16.
//
//

#include "util.h"



//----------------------------
float floatSwap(char *value)

//---------------------------
{
    
    int size =sizeof(float);
    float swapped;
    char *buffer;
    buffer = new char [sizeof(float)];
    
    for (int i=0; i<size; i++)
        buffer[ i ] = value[ size-1-i ];
    
    swapped= *( (float *) buffer );
    delete [] buffer;
    return swapped;
    
}

//----------------------------
double doubleSwap(char *value)

//---------------------------
{
    int size =sizeof(double);
    char *buffer;
    double swapped;
    buffer = new char[sizeof(double)];
    
    for (int i=0; i<size; i++)
        buffer[ i ] = value[ size-1-i ];
    
    
    swapped= *( (double *) buffer );
    delete [] buffer;
    return swapped;
}
    //---------------------------------------------------------------------
    std::string getDir(std::string path)
    //---------------------------------------------------------------------
    {
#ifdef _WIN32
        int idx = path.rfind('\\');
#else
        int idx = path.rfind('/');
#endif
        if(idx >= 0)
            path.erase(idx + 1, path.length() - (idx + 1));
        else
            path = "";
        
        return path;
    }