type JsRoot* = ref object of RootObj

type 
    Vim = ref object of JsRoot
        api: VimApi
    VimApi = ref object of JsRoot
        nvim_buf_create_user_command: proc(buf: int, name: cstring, cmd: proc(), opts: VimOpts)
    VimOpts = ref object of JsRoot
     
var vim {.importjs: "vim".}: Vim
var empty {.importjs: "{}"}: VimOpts

func print*(s: cstring)  {.importjs: "print(#)".}

var setup {.exportc, codegendecl: "export let setup".} = proc() =
    vim.api.nvim_buf_create_user_command(0, "Hello", proc() = print("Hello"), empty)
