" Change the color scheme from a list of color scheme names.
" Version 2010-09-12 from http://vim.wikia.com/wiki/VimTip341
" Press key:
"   F8                next scheme
"   Shift-F8          previous scheme
"   Alt-F8            random scheme
" Set the list of color schemes used by the above (default is 'all'):
"   :SetColors all              (all $VIMRUNTIME/colors/*.vim)
"   :SetColors my               (names built into script)
"   :SetColors blue slate ron   (these schemes)
"   :SetColors                  (display current scheme names)
" Set the current color scheme based on time of day:
"   :SetColors now
if v:version < 700 || exists('loaded_setcolors') || &cp
  finish
endif

let loaded_setcolors = 1
let s:mycolors = ['laederon', 'Red', 'abra', 'desertEx', 'landscape', 'refactor', 'adam', 'desertink', 'lanzarotta', 'relaxedgreen', 'adaryn', 'desert', 'lapis256', 'reliable', 'adobe', 'detailed', 'last256', 'reloaded', 'adrian', 'devbox-dark-256', 'late_evening', 'revolutions', 'advantage', 'DevC++', 'lazarus', 'Revolution', 'af', 'Dev_Delight', 'legiblelight', 'robinhood', 'aiseered', 'deveiate', 'leglight2', 'ron', 'alduin', 'developer', 'leo', 'rootwater', 'anderson', 'Dim2', 'less', 'sadek1', 'anotherdark', 'DimBlue', 'lettuce', 'sand', 'ansi_blows', 'DimGreens', 'leya', 'sandydune', 'antares', 'DimGreen', 'lightcolors', 'satori', 'apprentice', 'DimGrey', 'LightDefaultGrey', 'saturn', 'aqua', 'DimRed', 'LightDefault', 'scheakur', 'argonaut', 'DimSlate', 'lightning', 'scite', 'ashen', 'Dim', 'LightTan', 'scooby', 'asmanian2', 'disciple', 'Light', 'sean', 'asmanian_blood', 'distinguished', 'LightYellow', 'seashell', 'asmdev2', 'django', 'lilac', 'seattle', 'asmdev', 'donbass', 'lilydjwg_dark', 'selenitic', 'astronaut', 'doorhinge', 'lilydjwg_green', 'seoul256-light', 'asu1dark', 'doriath', 'lilypink', 'seoul256', 'atom', 'dracula', 'lingodirector', 'seoul', 'aurora', 'dual', 'liquidcarbon', 'seti', 'automation', 'dull', 'literal_tango', 'settlemyer', 'autumnleaf', 'duotone-darkcave', 'lizard256', 'sexy-railscasts', 'autumn', 'duotone-darkdesert', 'lizard', 'sf', 'babymate256', 'duotone-darkearth', 'lodestone', 'shadesofamber', 'badwolf', 'duotone-darkforest', 'loogica', 'shades-of-teal', 'bandit', 'duotone-darkheath', 'louver', 'shine', 'base16-ateliercave', 'duotone-darklake', 'lucid', 'shobogenzo', 'base16-atelierdune', 'duotone-darkmeadow', 'lucius', 'sienna', 'base16-atelierestuary', 'duotone-darkpark', 'luinnar', 'sierra', 'base16-atelierforest', 'duotone-darkpool', 'lumberjack', 'sift', 'base16-atelierheath', 'duotone-darksea', 'luna-term', 'silent', 'base16-atelierlakeside', 'duotone-darkspace', 'luna', 'simple256', 'base16-atelierplateau', 'duotone-dark', 'lxvc', 'simpleandfriendly', 'base16-ateliersavanna', 'dusk', 'mac_classic', 'simple_b', 'base16-atelierseaside', 'dw_blue', 'made_of_code', 'simplewhite', 'base16-ateliersulphurpool', 'dw_cyan', 'madeofcode', 'simplon', 'base16-railscasts', 'dw_green', 'magicwb', 'skittles_berry', 'base', 'dw_orange', 'mango', 'skittles_dark', 'basic', 'dw_purple', 'manuscript', 'sky', 'baycomb', 'dw_red', 'manxome', 'slate2', 'bayQua', 'dw_yellow', 'marklar', 'SlateDark', 'bclear', 'earendel', 'maroloccio2', 'Slate', 'beachcomber', 'earthburn', 'maroloccio3', 'smpl', 'beauty256', 'earth', 'maroloccio', 'smp', 'beekai', 'eclipse', 'mars', 'smyck', 'behelit', 'eclm_wombat', 'martin_krischik', 'soda', 'benlight', 'ecostation', 'materialbox', 'softbluev2', 'Benokai', 'editplus', 'material-theme', 'softblue', 'bensday', 'edo_sea', 'materialtheme', 'softlight', 'billw', 'ego', 'material', 'solarized', 'biogoo', 'ekinivim', 'matrix', 'sole', 'birds-of-paradise', 'ekvoli', 'maui', 'sol-term', 'black_angus', 'elda', 'mayansmoke', 'sol', 'blackbeauty', 'elflord', 'mdark', 'sonofobsidian', 'blackboard', 'elise', 'mellow', 'sonoma', 'blackdust', 'elisex', 'meta5', 'sorcerer', 'blacklight', 'elrodeo', 'metacosm', 'soruby', 'BlackSea', 'elrond', 'midnight', 'soso', 'Black', 'emacs', 'miko', 'sourcerer', 'blaquemagick', 'enigma', 'minimalist', 'southernlights', 'blazer', 'enzyme', 'mint', 'southwest-fog', 'blink', 'erez', 'mizore', 'spacegray', 'Blue2', 'eva01', 'mod8', 'spectro', 'bluechia', 'eva', 'mod_tcsoft', 'spiderhawk', 'bluedrake', 'evening1', 'mojave', 'Spink', 'bluegreen', 'evening', 'molokai_dark', 'spring', 'blueprint', 'evolution', 'molokai', 'sprinkles', 'blueshift', 'far', 'monoacc', 'stackoverflow', 'blue', 'felipec', 'monochrome', 'stingray', 'bluez', 'feral', 'monokai-chris', 'stonewashed-256', 'blugrine', 'flatcolor', 'monokain', 'stonewashed-gui', 'bmichaelsen', 'flatlandia', 'Monokai', 'strange', 'bocau', 'flatland', 'montz', 'strawimodo', 'bog', 'flattened_dark', 'moonshine_lowcontrast', 'summerfruit256', 'borland', 'flattened_light', 'moonshine', 'summerfruit', 'breeze', 'flattown', 'mophiaDark', 'sunburst', 'brogrammer', 'flattr', 'mophiaSmoke', 'surveyor', 'brookstream', 'flatui', 'mopkai', 'swamplight', 'brown', 'fnaqevan', 'moria', 'sweater', 'bubblegum-256-dark', 'fog', 'morning', 'SweetCandy', 'bubblegum-256-light', 'fokus', 'moss', 'symfony', 'bubblegum', 'forneus', 'motus', 'synic', 'buddy', 'freya', 'MountainDew', 'tabula', 'burnttoast256', 'frood', 'mrkn256', 'tango2', 'busierbee', 'frozen', 'mrpink', 'tango-desert', 'busybee', 'fruidle', 'mud', 'tango-morning', 'buttercream', 'fruit', 'muon', 'tangoshady', 'bvemu', 'fruity', 'murphy', 'tango', 'bw', 'fu', 'mushroom', 'tangoX', 'c16gui', 'fx', 'mustang', 'taqua', 'C64', 'gardener', 'native', 'tayra', 'cabin', 'gemcolors', 'nature', 'tchaba2', 'cake16', 'genericdc-light', 'navajo-night', 'tchaba', 'cake', 'genericdc', 'navajo', 'tcsoft', 'calmar256-dark', 'gentooish', 'nazca', 'telstar', 'calmar256-light', 'getafe', 'nedit2', 'termschool', 'camo', 'getfresh', 'nedit', 'tesla', 'campfire', 'github', 'nefertiti', 'tetragrammaton', 'candycode', 'gobo', 'neon', 'textmate16', 'candyman', 'golded', 'neonwave', 'thegoodluck', 'CandyPaper', 'golden', 'nerv-ous', 'thestars', 'candy', 'goodwolf', 'neutron', 'thornbird', 'caramel', 'google', 'neverland2-darker', 'thor', 'carrot', 'gor', 'neverland2', 'tibet', 'carvedwoodcool', 'gotham256', 'neverland-darker', 'tidy', 'carvedwood', 'gotham', 'neverland', 'tir_black', 'cascadia', 'gothic', 'neverness', 'tolerable', 'cgpro', 'grape', 'nevfn', 'tomatosoup', 'chance-of-storm', 'gravity', 'newspaper', 'Tomorrow-Night-Blue', 'charged-256', 'grayorange', 'newsprint', 'Tomorrow-Night-Bright', 'charon', 'graywh', 'nicotine', 'Tomorrow-Night-Eighties', 'Chasing_Logic', 'grb256', 'nightflight2', 'Tomorrow-Night', 'chela_light', 'greens', 'nightflight', 'Tomorrow', 'chlordane', 'Green', 'nightshade_print', 'tony_light', 'ChocolateLiquor', 'greenvision', 'nightshade', 'toothpik', 'ChocolatePapaya', 'grey2', 'nightshimmer', 'torte', 'chocolate', 'greyblue', 'nightsky', 'transparent', 'chrysoprase', 'grishin', 'night', 'triplejelly', 'clarity', 'gruvbox', 'night_vision', 'trivial256', 'cleanphp', 'gryffin', 'nightVision', 'trogdor', 'cleanroom', 'guardian', 'nightwish', 'tropikos', 'clearance', 'guepardo', 'no_quarter', 'turbo', 'cloudy', 'h80', 'northland', 'tutticolori', 'clue', 'habiLight', 'northsky', 'twilight256', 'cobalt2', 'harlequin', 'norwaytoday', 'twilight', 'cobaltish', 'heliotrope', 'nour', 'twitchy', 'cobalt', 'hemisu', 'nuvola', 'two2tango', 'coda', 'herald', 'obsidian2', 'ubaryd', 'codeblocks_dark', 'herokudoc-gvim', 'obsidian', 'ubloh', 'codeburn', 'herokudoc', 'oceanblack256', 'umber-green', 'CodeFactoryv3', 'heroku-terminal', 'oceanblack', 'understated', 'codeschool', 'heroku', 'oceandeep', 'underwater-mod', 'coffee', 'hhazure', 'OceanicNext', 'underwater', 'coldgreen', 'hhdblue', 'oceanlight', 'up', 'colorer', 'hhdcyan', 'olive', 'valloric', 'colorful256', 'hhdgray', 'onedark', 'vanzan_color', 'colorful', 'hhdgreen', 'orange', 'vcbc', 'colorsbox-faff', 'hhdmagenta', 'osx_like', 'vc', 'colorsbox-greenish', 'hhdred', 'otaku', 'vexorian', 'colorsbox-material', 'hhdyellow', 'oxeded', 'vibrantink', 'colorsbox-stblue', 'hhorange', 'pablo', 'vilight', 'colorsbox-stbright', 'hhpink', 'pacific', 'vimbrant', 'colorsbox-steighties', 'hhspring', 'paintbox', 'visualstudio', 'colorsbox-stnight', 'hhteal', 'PapayaWhip', 'vividchalk', 'colorzone', 'hhviolet', 'PaperColor', 'VIvid', 'contrasty', 'hilal', 'parsec', 'vj', 'cool', 'holokai', 'peachpuff', 'void', 'corn', 'hornet', 'peaksea', 'vydark', 'corporation', 'hotpot', 'pencil', 'vylight', 'crayon', 'hybrid-light', 'penultimate', 'wargrey', 'crt', 'hybrid_material', 'peppers', 'warm_grey', 'cthulhian', 'hybrid_reverse', 'perfect', 'wasabi256', 'custom', 'hybrid', 'pf_earth', 'watermark', 'c', 'iangenzo', 'phd', 'wellsokai', 'd8g_01', 'ibmedit', 'phoenix', 'White2', 'd8g_02', 'icansee', 'phphaxor', 'whitebox', 'd8g_03', 'iceberg', 'phpx', 'whitedust', 'd8g_04', 'impactG', 'pink', 'white', 'dante', 'impactjs', 'playroom', 'widower', 'Dark2', 'impact', 'pleasant', 'win9xblueback', 'darkblack', 'industrial', 'potts', 'wintersday', 'darkblue2', 'industry', 'predawn', 'winter', 'darkblue', 'ingretu', 'preto', 'woju', 'darkBlue', 'inkpot', 'pride', 'wolfpack', 'darkbone', 'inori', 'primary', 'wombat256i', 'darkburn', 'ir_black', 'print_bw', 'wombat256mod', 'DarkDefault', 'ironman', 'prmths', 'wombat256', 'darkdevel', 'itg_flat', 'professional', 'wombat', 'darkdot', 'jaime', 'proton', 'wood', 'darkeclipse', 'jammy', 'ps_color', 'wuye', 'darkerdesert', 'janah', 'pspad', 'xemacs', 'darker-robin', 'jelleybeans', 'pt_black', 'xian', 'darkocean', 'jellybeans', 'putty', 'xmaslights', 'darkrobot', 'jellyx', 'pw', 'xoria256', 'dark-ruby', 'jhdark', 'pyte', 'xterm16', 'darkslategray', 'jhlight', 'python', 'yeller', 'darkspectrum', 'jiks', 'quagmire', 'zazen', 'darktango', 'kalahari', 'radicalgoodspeed', 'zellner', 'Dark', 'kalisi', 'railscasts', 'zenburn', 'darkzen', 'kaltex', 'rainbow_autumn', 'zenesque', 'darkZ', 'kalt', 'rainbow_fine_blue', 'zen', 'darth', 'kate', 'rainbow_night', 'zephyr', 'dawn', 'kellys', 'rainbow_sea', 'zmrok', 'deepsea', 'khaki', 'rakr-light', 'znake', 'default', 'kib_darktango', 'random', 'delek', 'kib_plastic', 'rastafari']  " colorscheme names that we use to set color

" Set list of color scheme names that we will use, except
" argument 'now' actually changes the current color scheme.
function! s:SetColors(args)
  if len(a:args) == 0
    echo 'Current color scheme names:'
    let i = 0
    while i < len(s:mycolors)
      echo '  '.join(map(s:mycolors[i : i+4], 'printf("%-14s", v:val)'))
      let i += 5
    endwhile
  elseif a:args == 'all'
    let paths = split(globpath(&runtimepath, 'colors/*.vim'), "\n")
    let s:mycolors = map(paths, 'fnamemodify(v:val, ":t:r")')
    echo 'List of colors set from all installed color schemes'
  elseif a:args == 'my'
    let c1 = 'default elflord peachpuff desert256 breeze morning'
    let c2 = 'darkblue gothic aqua earth black_angus relaxedgreen'
    let c3 = 'darkblack freya motus impact less chocolateliquor'
    let s:mycolors = split(c1.' '.c2.' '.c3)
    echo 'List of colors set from built-in names'
  elseif a:args == 'now'
    call s:HourColor()
  else
    let s:mycolors = split(a:args)
    echo 'List of colors set from argument (space-separated names)'
  endif
endfunction

command! -nargs=* SetColors call s:SetColors('<args>')

" Set next/previous/random (how = 1/-1/0) color from our list of colors.
" The 'random' index is actually set from the current time in seconds.
" Global (no 's:') so can easily call from command line.
function! NextColor(how)
  call s:NextColor(a:how, 1)
endfunction

" Helper function for NextColor(), allows echoing of the color name to be
" disabled.
function! s:NextColor(how, echo_color)
  if len(s:mycolors) == 0
    call s:SetColors('all')
  endif
  if exists('g:colors_name')
    let current = index(s:mycolors, g:colors_name)
  else
    let current = -1
  endif
  let missing = []
  let how = a:how
  for i in range(len(s:mycolors))
    if how == 0
      let current = localtime() % len(s:mycolors)
      let how = 1  " in case random color does not exist
    else
      let current += how
      if !(0 <= current && current < len(s:mycolors))
        let current = (how>0 ? 0 : len(s:mycolors)-1)
      endif
    endif
    try
      execute 'colorscheme '.s:mycolors[current]
      break
    catch /E185:/
      call add(missing, s:mycolors[current])
    endtry
  endfor
  redraw
  if len(missing) > 0
    echo 'Error: colorscheme not found:' join(missing)
  endif
  if (a:echo_color)
    echo g:colors_name
  endif
endfunction

nnoremap <F8> :call NextColor(1)<CR>
nnoremap <S-F8> :call NextColor(-1)<CR>
nnoremap <A-F8> :call NextColor(0)<CR>

" Set color scheme according to current time of day.
function! s:HourColor()
  let hr = str2nr(strftime('%H'))
  if hr <= 3
    let i = 0
  elseif hr <= 7
    let i = 1
  elseif hr <= 14
    let i = 2
  elseif hr <= 18
    let i = 3
  else
    let i = 4
  endif
  let nowcolors = 'elflord morning desert evening pablo'
  execute 'colorscheme '.split(nowcolors)[i]
  redraw
  echo g:colors_name
endfunction



