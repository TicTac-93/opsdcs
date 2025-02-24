#define LUA_COMPAT_5_1
#define _CRT_SECURE_NO_WARNINGS

#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>
#include <Python.h>

#ifdef _WIN32
    #define LUA_API __declspec(dllexport)
#else
    #define LUA_API
#endif

static int python_initialized = 0;
static PyObject *plt = NULL;

static int l_init(lua_State *L) {
    if (!python_initialized) {
        Py_Initialize();
        python_initialized = 1;
    }
    return 0;
}

static int l_close(lua_State *L) {
    if (python_initialized) {
        Py_XDECREF(plt);
        plt = NULL;
        Py_FinalizeEx();
        python_initialized = 0;
    }
    return 0;
}

static int l_run(lua_State *L) {
    const char *code = luaL_checkstring(L, 1);
    if (!python_initialized) {
        return luaL_error(L, "call init() first");
    }
    PyRun_SimpleString(code);
    return 0;
}

static const struct luaL_Reg lpb[] = {
    {"init", l_init},
    {"close", l_close},
    {"run", l_run},
    {NULL, NULL}
};

LUA_API int luaopen_lpb(lua_State *L) {
    lua_newtable(L);
    luaL_register(L, NULL, lpb);
    return 1;
}
