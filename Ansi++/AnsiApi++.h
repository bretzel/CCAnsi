#pragma once

#ifdef _WIN32
#ifdef AnsiApi_EXPORT
#define AnsiApi __declspec(dllexport)
#else
#define AnsiApi __declspec(dllimport)
#endif
#else 
#define AnsiApi
#endif

//#ifndef _decl_id
//#define _decl_id \
//    private:\
//        static const std::string s_leaf_id;\
//    public:\
//        virtual const std::string& leaf_id();\
//    private:
//
//#define _class_id(CLASS) \
//    const std::string CLASS::s_leaf_id=#CLASS;\
//    const std::string& CLASS::leaf_id(){ return CLASS::s_leaf_id; }
//#endif

#ifndef _WIN32
#define _strdup  strdup
#else
#define __PRETTY_FUNCTION__ __FUNCSIG__
#endif
