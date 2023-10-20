local M = {
  "goolord/alpha-nvim",
  commit = "dafa11a6218c2296df044e00f88d9187222ba6b0",
  event = "VimEnter",
}

function M.config()
  local alpha = require "alpha"
  local dash = require "alpha.themes.dashboard"
  dash.section.header.val = {
  '          @@@@@@@@@@      @@@@@@@@@@+       =@@@@@@@@>       )@@@@@<    @@@@@@@@@>     ]@@@@@@@@=     @@@@@@@@@@@@<          ]@@@@@@@@@@ ',
  '         [@@@%@@@@@%@    }@@@@@@@@@@@*    :%@%@%@@%@@@>      @@@%@@    @@%@@@@@%@    #@@%@@@@@@@%=   )%@@@@@@%@@@@           @%@%@%@@@%@%',
  '        :%%%%%@+#%%#@   :%%%#%@*%%%%@:   =%%%%%@<%%%%%]     %#%%%@:   <#%%%#@@@@    @%%%%@<[%%%#@-   :@@%%%%%@@@@:          %%%%%@-#%%%%@',
  '        #####@ ####@:   #####@:#####@    ####}@ #####@     }####%[    #####@       ]###}#%=####}@      #####%+             }####%)#}####<',
  '       }}[}[%)}[}[#}   [[}[}}[[[}[#@    }[}[}@:[[}[}@:    =}[}[[@    }}[}[}}}]    :}[}}}@ }[}[}@      <}[}[}%             +[}[}[@*}[}[}@ ',
  '      *]]]]]]]]][#@   +[]]]]]]]][%:    )]]]][}[]]]]}]     ]]]]]@    ]]]]]]]]]@    ]]]]]@              ]]]][@              ]]]]]@ ][]]]@  ',
  '      )))))#}#@@@     )))))@]))))}    -)))))@-)))))@     )))))#=   -)))))@@@@    <))))}<-==-==       )))))@:             )))))%:)))))%-  ',
  '     >>>>>@:         >>>>>%->>>>>@    >>>>>@ <>>>>@     +>>>><%    >>>>>@       ->>>>>@ >>>>>@      >>>>>])             *>>>><#>>>>><}   ',
  '    +**+*<]         +*+*+>}+****@    *****[+*+**+@:    :+***+@    ***+*#=       +*+*+@ +***+@      -*****@   -+**:      +***+@-+**++@    ',
  '    ====-@          =====@:====[+    ===========@*   =======@    -========<[    ===========@:      =====@   -====@     ============@     ',
  '   :-:--@          -:-:-@ :-:--%      ::::-::-@@    :-:-::)@     -:-:-:--:@     =-::::-:*@#       -:-:-}-    ])@@     --:-:-:-::-@@      ',
  '   +====:          =====- =====        +#@@%>       :===-        =========        )@@@}+          ======              :=======-:         ',
  }
  dash.section.buttons.val = {
    dash.button("o", " " .. " Open Tree", ":NvimTreeToggle <CR>"),
    dash.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
    dash.button("f", "󰈞 " .. " Find file", ":Telescope find_files <CR>"),
    dash.button("g", "󱎸 " .. " Find text", ":Telescope live_grep <CR>"),
    dash.button("c", "󰘰 " .. " Config", ":e $MYVIMRC <CR>"),
    dash.button("q", "󰗼 " .. " Quit", ":qa<CR>"),
  }
  local function footer()
    return "Quetzalcoatl"
  end

  dash.section.footer.val = footer()

  dash.section.footer.opts.hl = "Type"
  dash.section.header.opts.hl = "Include"
  dash.section.buttons.opts.hl = "Keyword"

  dash.opts.opts.noautocmd = true
  alpha.setup(dash.opts)
end

return M

