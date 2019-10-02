local api = require('extra')(require('love-api.love_api'))

local order = {
    Source = {
        functions = {
            {
                name = 'Playback',
                items = {
                    'play',
                    'stop',
                    'pause',
                    'resume',
                    'rewind',
                    'seek',
                    'setLooping',
                    'setPitch',
                    'setVolume',
                    'isPlaying',
                    'isStopped',
                    'isPaused',
                },
            },
            {
                name = 'Spatial',
                items = {
                    'setPosition',
                    'setDirection',
                    'setRolloff',
                    'setVelocity',
                    'setCone',
                    'setAttenuationDistances',
                    'setVolumeLimits',
                },
            },
            {
                name = 'Info',
                items = {
                    'getType',
                    'getChannels',
                    'getDuration',
                },
            },
        },
    },
    File = {
        functions = {
            'open',
            'close',
            'read',
            'lines',
            'write',
            'setBuffer',
            'flush',
            'getMode',
            'isOpen',
            'tell/seek',
            'isEOF',
            'getFilename',
            'getSize',
        },
    },
    FileData = {
        functions = {
            'getFilename',
            'getExtension',
        },
    },
    Canvas = {
        functions = {
            'getFormat',
            'getMSAA',
            'setFilter',
            'setWrap',
            'newImageData',
            'renderTo',
            {
                name = 'Dimensions',
                items = {
                    'getDimensions',
                    'getWidth',
                    'getHeight',
                }
            },
        },
    },
    Font = {
        functions = {
            'setFilter',
            {
                name = 'Glyph support',
                items = {
                    'hasGlyphs',
                    'setFallbacks',
                },
            },
            {
                name = 'Info',
                items = {
                    'getWrap',
                    'setLineHeight',
                    'getWidth',
                    'getHeight',
                    'getBaseline',
                    'getAscent',
                    'getDescent',
                },
            },
        },
        Mesh = {
            functions = {
                'setTexture',
                'getVertexFormat',
                'setVertex',
                'setVertices',
                'attachAttribute',
                'setVertexAttribute',
                'is/setAttributeEnabled',
                'setVertexMap',
                'getVertexCount',
                'setDrawMode',
                'setDrawRange',
            },
        },
        Image = {
            functions = {
                'getFlags',
                'setFilter',
                'setMipmapFilter',
                'setWrap',
                'refresh',
                'getData',
                {
                    name = 'Dimensions',
                    items = {
                        'getDimensions',
                        'getWidth',
                        'getHeight',
                    }
                },
            },
        },
        ParticleSystem = {
            functions = {
                'start',
                'stop',
                'pause',
                'reset',
                'update',
                'emit',
                'isActive',
                'isPaused',
                'isStopped',
                'clone',
                'setBufferSize',
                'getCount',
                {
                    name = 'Emitter',
                    items = {
                        'setPosition',
                        'moveTo',
                        'setAreaSpread',
                        'setEmissionRate',
                        'setEmitterLifetime',
                    }
                },
                {
                    name = 'Particles',
                    items = {
                        'setColors',
                        'setDirection',
                        'setInsertMode',
                        'setLinearAcceleration',
                        'setLinearDamping',
                        'setOffset',
                        'setParticleLifetime',
                        'setRadialAcceleration',
                        'setTangentialAcceleration',
                        'setRelativeRotation',
                        'setRotation',
                        'setSizes',
                        'setSizeVariation',
                        'setSpeed',
                        'setSpin',
                        'setSpinVariation',
                        'setSpread',
                        'setTexture',
                        'setQuads',
                    }
                }
            }
        },
    },
    Shader = {
        functions = {
            'send',
            'sendColor',
            'getExternVariable',
            'getWarnings',
        },
    },
    Text = {
        functions = {
            'add',
            'addf',
            'set',
            'setf',
            'clear',
            'setFont',
            {
                name = 'Dimensions',
                items = {
                    'getDimensions',
                    'getWidth',
                    'getHeight',
                }
            },
        },
    },
    Video = {
        functions = {
            'play',
            'isPlaying',
            'pause',
            'seek',
            'rewind',
            'setSource',
            'setFilter',
            'getStream',
            {
                name = 'Dimensions',
                items = {
                    'getDimensions',
                    'getWidth',
                    'getHeight',
                }
            },
        },
    },
    ImageData = {
        functions = {
            'setPixel',
            'mapPixel',
            'paste',
            'encode',
            {
                name = 'Dimensions',
                items = {
                    'getDimensions',
                    'getWidth',
                    'getHeight',
                }
            },
        },
    },
    ['love'] = {
        callbacks = {
            'load',
            'update',
            'draw',
            'quit',
            'run',
            'conf',
            {
                name = 'Input',
                items = {
                    'keypressed',
                    'keyreleased',
                    'textedited',
                    'textinput',
                    'mousepressed',
                    'mousereleased',
                    'mousemoved',
                    'mousefocus',
                    'wheelmoved',
                    'touchmoved',
                    'touchpressed',
                    'touchreleased',
                    'joystickpressed',
                    'joystickreleased',
                    'joystickaxis',
                    'joystickhat',
                    'joystickadded',
                    'joystickremoved',
                    'gamepadpressed',
                    'gamepadreleased',
                    'gamepadaxis',
                },
            },
            {

                name = 'Window',
                items = {
                    'resize',
                    'visible',
                    'focus',
                    'filedropped',
                    'directorydropped',
                },
            },
            {
                name = 'Error handling',
                items = {
                    'errhand',
                    'threaderror',
                    'lowmemory',
                },
            },
        },
    },
    audio = {
        functions = {
            {
                name = 'Playback',
                items = {
                    'play',
                    'stop',
                    'pause',
                    'resume',
                    'rewind',
                },
            },
            {
                name = 'Listener',
                items = {
                    'setPosition',
                    'setOrientation',
                    'setVelocity',
                    'setDistanceModel',
                    'setDopplerScale',
                },
            },
            {
                name = 'Other',
                items = {
                    'setVolume',
                    'getSourceCount',
                },
            },
        },
    },
    event = {
        functions = {
            'push',
            'poll',
            'pump',
            'wait',
            'clear',
            'quit',
        },
    },
    filesystem = {
        functions = {
            {
                name = 'Mounting',
                items = {
                    'mount',
                    'unmount',
                }
            },
            {
                name = 'Directory paths',
                items = {
                    'getAppdataDirectory',
                    'getRealDirectory',
                    'getSaveDirectory',
                    'getSourceBaseDirectory',
                    'getUserDirectory',
                    'getWorkingDirectory',
                },
            },
            {
                name = 'File properties',
                items = {
                    'isFile',
                    'isDirectory',
                    'isSymname',
                    'exists',
                    'getLastModified',
                    'getSize',
                },
            },
            {
                name = 'File operations',
                items = {
                    'read',
                    'lines',
                    'write',
                    'append',
                    'remove',
                },
            },
            {
                name = 'Other',
                items = {
                    'setSymnamesEnabled',
                    'isFused',
                    'createDirectory',
                    'getDirectoryItems',
                    'getIdentity',
                    'load',
                    'setRequirePath',
                },
            },
        },
    },
    Joystick = {
        functions = {
            {
                name = 'Input',
                items = {
                    'isDown',
                    'getAxis',
                    'getAxes',
                    'getHat',
                    'isGamepadDown',
                    'getGamepadAxis',
                }
            },
            {
                name = 'Count',
                items = {
                    'getAxisCount',
                    'getButtonCount',
                    'getHatCount',
                }
            },
            {
                name = 'Info',
                items = {
                    'getName',
                    'getID',
                    'getGUID',
                    'isConnected',
                    'isGamepad',
                    'getGamepadMapping',
                }
            },
            {
                name = 'Vibration',
                items = {
                    'setVibration',
                    'isVibrationSupported',
                }
            },
        },
    },
    BezierCurve = {
        functions = {
            'evalulate',
            'render',
            'renderSegment',
            'getSegment',
            'getDerivative',
            'getDegree',
            {
                name = 'Control points',
                items = {
                    'insertControlPoint',
                    'removeControlPoint',
                    'setControlPoint',
                    'getControlPointCount',
                }
            },
            {
                name = 'Transform',
                items = {
                    'translate',
                    'scale',
                    'rotate',
                }
            },
        },
    },
    RandomGenerator = {
        functions = {
            'random',
            'randomNormal',
            'setSeed',
            'setState',
        },
    },
    SoundData = {
        functions = {
            'setSample',
            'getSampleCount',
            'getDuration',
            'getSampleRate',
            'getBitDepth',
            'getChannels',
        },
    },
    Thread = {
        functions = {
            'start',
            'wait',
            'getError',
            'isRunning',
        },
    },
    Channel = {
        functions = {
            'push',
            'pop',
            'supply',
            'demand',
            'peek',
            'clear',
            'performAtomic',
            'getCount',
        },
    },
    ['love.graphics'] = {
        functions = {
            {
                name = 'Drawing',
                items = {
                    'draw',
                    'print',
                    'printf',
                    'line',
                    'polygon',
                    'rectangle',
                    'circle',
                    'ellipse',
                    'arc',
                    'point',
                    'points',
                },
            },
            {
                name = 'Stencil',
                items = {
                    'stencil',
                    'setStencilTest',
                },
            },
            {
                name = 'Graphics state',
                items = {
                    'push',
                    'pop',
                    'reset',
                    'setFont',
                    'setNewFont',
                    'setBackgroundColor',
                    'setBlendMode',
                    'setCanvas',
                    'setColor',
                    'setColorMask',
                    'setDefaultFilter',
                    'setLineJoin',
                    'setLineStyle',
                    'setLineWidth',
                    'setShader',
                    'setPointSize',
                    'setPointStyle',
                    'setScissor',
                    'intersectScissor',
                    'isWireframe',
                    'setStencil',
                    'setInvertedStencil',
                },
            },
            {
                name = 'Coordinate system',
                items = {
                    'origin',
                    'rotate',
                    'scale',
                    'shear',
                    'translate',
                },
            },
            {
                name = 'Window',
                items = {
                    'getDimensions',
                    'getHeight',
                    'getWidth',
                },
            },
            {
                name = 'Info',
                items = {
                    'getCanvasFormats',
                    'getCompressedImageFormats',
                    'getFullscreenModes',
                    'getStats',
                    'getSystemLimit',
                    'getSystemLimits',
                    'getRendererInfo',
                    'isSupported',
                    'getFSAA',
                    'getSupported',
                    'isGammaCorrect',
                },
            },
            {
                name = 'Other',
                items = {
                    'newScreenshot',
                    'setWireframe',
                    'clear',
                    'discard',
                    'present',
                },
            },
        },
    },
    ['love.joystick'] = {
        functions = {
            'setJoysticks',
        },
    },
    ['love.keyboard'] = {
        functions = {
            'isDown',
            'isScancodeDown',
            'getScancodeFromKey',
            'getKeyFromScancode',
            'setKeyRepeat',
            'setTextInput',
        },
    },
    ['love.math'] = {
        functions = {
            'noise',
            {
                name = "Random numbers",
                items = {
                    "random",
                    "randomNormal",
                    "setRandomSeed",
                    "setRandomState",
                },
            },
            {
                name = "Polygons",
                items = {
                    "isConvex",
                    "triangulate",
                },
            },
            {
                name = "Compression",
                items = {
                    "compress",
                    "decompress",
                },
            },
            {
                name = "Color",
                items = {
                    "linearToGamma",
                    "gammaToLinear",
                },
            },
        },
    },
    ['love.mouse'] = {
        functions = {
            {
                name = "Input",
                items = {
                    "isDown",
                    "setPosition",
                    "setX",
                    "setY",
                    'setGrabbed',
                    'setRelativeMode',
                },
            },
            {
                name = "Cursor",
                items = {
                    "setCursor",
                    "getSystemCursor",
                    "setVisible",
                    "hasCursor",
                },
            },
        },
    },
    ['love.system'] = {
        functions = {
            'openURL',
            'setClipboardText',
            'vibrate',
            {
                name = 'Info',
                items = {
                    'getOS',
                    'getPowerInfo',
                    'getProcessorCount',
                }
            },
        },
    },
    ['love.timer'] = {
        functions = {
            'getTime',
            'getFPS',
            'getAverageDelta',
            'getDelta',
            'sleep',
            'step',
        },
    },
    ['love.touch'] = {
        functions = {
            'getTouches',
            'getPosition',
            'getPressure',
        },
    },
    ['love.window'] = {
        functions = {
            'setTitle',
            'setIcon',
            'getFullscreenModes',
            'setMode',
            'setFullscreen',
            'setPosition',
            'hasFocus',
            'hasMouseFocus',
            'maximize',
            'minimize',
            'isMaximized',
            'isVisible',
            'isOpen',
            'close',
            'requestAttention',
            'getDisplayName',
            'setDisplaySleepEnabled',
            'showMessageBox',
            'fromPixels',
            'getPixelScale',
        }
    }
}

local FAST_MODE = true

local output = {}

local blacklist = {
    FontData = true,
    GlyphData = true,
    Rasterizer = true,
    Decoder = true,
    VideoStream = true,
    ['love.font'] = true,
    ['love.video'] = true,
}

local modulesToRemove = {}

for moduleIndex = #api.modules, 1, -1 do
    local module_ = api.modules[moduleIndex]
    local function removeFunctions(module_)
        for functionIndex = #(module_.functions or {}), 1, -1 do
            local function_ = module_.functions[functionIndex]
            local remove = false
            if blacklist[function_.fullname] then
                remove = true
            end

            for variantIndex = #(function_.variants or {}), 1, -1 do
                local variant = function_.variants[variantIndex]
                local function f(key)
                    for i = #(variant[key] or {}), 1, -1 do
                        local a = variant[key][i]
                        if blacklist[a.type] then
                            remove = true
                        end
                    end
                end
                f('arguments')
                f('returns')
            end

            if remove then
                local a = table.remove(module_.functions, functionIndex)
            end
        end
    end
    removeFunctions(module_)
    for typeIndex = #(module_.types or {}), 1, -1 do
        local type_ = module_.types[typeIndex]
        if blacklist[type_.name] then
            table.remove(module_.types, typeIndex)
        else
            removeFunctions(type_)
        end

        function f(key)
            for i = #(type_[key] or {}), 1, -1 do
                if blacklist[type_[key][i].name] then
                    table.remove(type_[key], i)
                end
            end
        end
        f('supertypes')
        f('subtypes')
    end
    
    if blacklist[module_.fullname] then
        table.remove(api.modules, moduleIndex)
    end
end

local function A(s, e)
    if e then
        error(e)
    end

    table.insert(output, s)
end

local usedClasses = {}
local classes = {
    'container',
    'section',
    'section_navigation_link',
    'section_navigation_subsection_heading',
    'section_navigation_subheading',
    'section_heading',
    'section_description',
    'variant_description',
    'side_navigation',
    'slash',
    'constant_name',
    'constant_description',
    'function_heading',
    'function_description',
    'relative',
    'synopsis',
    'returns',
    'arguments',
    'ra_type',
    'ra_table',
    'arguments ra_name',
    'returns ra_name',
    'default',
    'synopsis_background',
}

local function checkClass(s)
    for i, v in ipairs(classes) do
        if v == s then
            usedClasses[s] = true
            return s
        end
    end

    print('Unknown class: '..s)

    return s
end

local function a(s, href, name)
    local attr = ''
    if href then
        attr = attr..' href = "'..href..'"'
    end
    if name then
        attr = attr..' name = "'..name..'"'
    end
    return '<a'..attr..'>'..s..'</a>'
end

local function aLink(s, href)
    return '<a href="'..href..'">'..s..'</a>'
end

local function aName(s, name)
    return '<a name="'..name..'">'..s..'</a>'
end

local function class(tag, s, class)
    if not class then
        return '<'..tag ..'>'..s..'</'..tag..'>'
    else
        return '<'..tag..' class = "'..checkClass(class)..'">'..s..'</'..tag..'>'
    end
end

local function open_close(s, t)
    if not s then
        return '</'..t..'>'
    elseif s == '' then
        return '<'..t..'>'
    else
        return '<'..t..' class = "'..checkClass(s)..'">'
    end
end

local function div(s) return open_close(s, 'div') end
local function _table(s) return open_close(s, 'table') end
local function tr(s) return open_close(s, 'tr') end

local function p(s, c) return class('p', s:gsub('\n', '<br />'), c) end
local function span(s, c) return class('span', s, c) end
local function h1(s, c) return class('h1', s, c) end
local function h2(s, c) return class('h2', s, c) end
local function h3(s, c) return class('h3', s, c) end
local function td(s, c) return class('td', s, c) end
local function style(s, c) return class('style', s, c) end


function getDescription(a)
    if not a.description then
        return
    end

    local description = a.description

    if a.descriptiont and a.descriptiont[languageCode] then
        description = (a.descriptiont[languageCode]:gsub(' %[auto%]$', ''))
    end

    description = description:gsub('>', '&gt;')
    description = description:gsub('<', '&lt;')

    if FAST_MODE then
        return description
    end

    local function isType(s)
        return s:match('[%l%,] %u') or s:match('%/%u') or s:match('%u%a+%/')
    end

    local function isFunction(s)
        return s:match('%l[%.%:]%l')
    end

    if not isType(description) and not isFunction(description) then
        return description
    end

    -- So that Joystick:isGamepadDown (for example) isn't linked twice for its own name and the substring Joystick:isGamepad, the name is temporarily "encoded".
    local temp = 'TEMP!'
    local function encode(s)
        return (s:sub(1, 1)..temp..s:sub(2))
    end
    local function decode(s)
        return (s:gsub(temp, ''))
    end

    local function f(t, isFunctionOrMethod)
        for _, linkItem in ipairs(t) do
            if linkItem.fullname ~= a.fullname then -- So it doesn't link to itself.
                local function f(n, nonPlural)
                    description = description:gsub('(%W)'..n..'(%W)', '%1<a href="#'..encode(nonPlural)..'">'..encode(n)..'</a>%2')
                    description = description:gsub('(%W)'..n..'$', '%1<a href="#'..encode(nonPlural)..'">'..encode(n)..'</a>')
                    description = description:gsub('^'..n..'(%W)', '<a href="#'..encode(nonPlural)..'">'..encode(n)..'</a>%1')
                end

                local plural
                if linkItem.fullname:sub(-1) == 'y' then
                    plural = linkItem.fullname:sub(1, 2)..'ies'
                elseif linkItem.fullname:sub(-1) == 's' then
                    plural = linkItem.fullname..'es'
                else
                    plural = linkItem.fullname..'s'
                end

                f(linkItem.fullname, linkItem.fullname)
                f(plural, linkItem.fullname)
            end
        end
    end

    table.sort(api.allfunctions, function(a, b)
        return #a.fullname > #b.fullname
    end)

    table.sort(api.types, function(a, b)
        return #a.fullname > #b.fullname
    end)

    table.sort(api.enums, function(a, b)
        return #a.fullname > #b.fullname
    end)

    if isFunction(description) then
        f(api.allfunctions, true)
    end

    if isType(description) then
        f(api.types, false)
        f(api.enums, false)
    end

    return decode(description)
end

local function doFunctions(functions)
    for _, function_ in ipairs(functions) do

        local function doReturnsAndArguments(variant, key)
            local t = variant[key]
            if #t == 0    then
                return
            end

            for _, ra in ipairs(t) do
                local function f(ra, prefix)
                    A(tr(''))
                    local namePart = prefix..ra.name
                    if ra.default then
                        namePart = namePart..' '..span('('..ra.default..')', 'default')
                    end
                    A(td(namePart, key.. ' ra_name'))

                    local typePart = {}
                    for match in (ra.type..'/'):gmatch('(.-)%/') do
                        local found = false
                        for _, item in ipairs(api.allfullnames) do
                            if match == item.fullname then
                                table.insert(typePart, aLink(item.name, '#'..item.name))
                                found = true
                                break
                            end
                        end
                        if not found then
                            table.insert(typePart, match)
                        end
                    end
                    A(td(table.concat(typePart, ' / '), 'ra_type'))

                    A(td(getDescription(ra)))
                    A(tr())

                    for i, v in ipairs(ra.table or {}) do
                        f(v, prefix..ra.name..'.')
                    end
                end

                f(ra, '')
            end
        end

        A(div('section'))
        A(p(a(span(function_.prefix)..'<wbr>'..function_.name, '#'..function_.fullname, function_.fullname), 'function_heading'))
        A(p(getDescription(function_), 'function_description'))

        for _, variant in ipairs(function_.variants) do

            local function makeList(args, class)
                local argumentList = ''
                for argIndex, arg in ipairs(args or {}) do
                    argumentList = argumentList..span(arg.name, class)
                    if argIndex ~= #args then
                        argumentList = argumentList..', '
                    end
                end
                return argumentList
            end

            local returnList = ''
            if #variant.returns > 0 then
                returnList = makeList(variant.returns, 'returns')
                returnList = returnList..' = '
            end

            local argumentList = ''
            if #variant.arguments > 0 then
                argumentList = makeList(variant.arguments, 'arguments')
                argumentList = ' '..argumentList..' '
            end

            A(p(span(span(returnList..function_.prefix..'<wbr>'..function_.name..'('..argumentList..')', 'relative'), 'synopsis_background'), 'synopsis')) -- Relative position span is so background doesn't cover font descenders.

            local description = getDescription(variant)
            if description then
                A(p(description, 'variant_description'))
            end

            A(_table('ra_table'))
            A(doReturnsAndArguments(variant, 'returns'))
            A(doReturnsAndArguments(variant, 'arguments'))
            A(_table())
        end
        A(div()) -- section
    end
end

local function doEnums(enums)
    for _, enum in ipairs(enums or {}) do
        A(div('section'))
        A(p(a(enum.name, '#'..enum.name, enum.name), 'section_heading'))
        for _, constant in ipairs(enum.constants) do
            A(p(constant.name, 'constant_name'))
            A(p(getDescription(constant), 'constant_description'))
        end
        A(div()) -- section
    end
end

local function main()
    A([[
<html><head>
<title>L&Ouml;VE ]]..api.version..[[ Reference</title>
<link href="https://fonts.googleapis.com/css?family=Quicksand:500,700" rel="stylesheet">    
<style>
* {
    margin: 0;
    padding: 0;
    color: #333;
}

body {
    font-family: "Quicksand", "Trebuchet MS", sans-serif;
    font-weight: 500;
}

.section_heading a, .prefix a {
    color: #333;
}

a {
    color: #059dc5; /* Blue */
}

a:link {
    text-decoration: none;
}

a:hover  {
    text-decoration: underline;
}

.section_heading a:hover,
.function_heading a:hover {
    text-decoration: none;
}

.section_heading a,
.function_heading a {
    outline: none;
}

.side_navigation {
    position: fixed;
    left: 12px;
    top: 12px;
}

.container {
    margin-left: 84px;
}

p, td {
    font-size: 10pt;
}

.synopsis {
    font-size: 12pt;
    margin-top: 20px;
    margin-bottom: 12px;
}

.function_heading {
    margin-bottom: 14px;
    margin-top: 6px;
    font-size: 16pt;
    line-height: 1;
}

.section_heading {
    font-size: 28px;
}

.synopsis,
.ra_name,
.constant_name {
    font-family: "Consolas", monospace;
}

.ra_table {
    margin-bottom: 12px;
}

.ra_name {
    text-align: right;
    width: 120px;
}

.ra_type {
    padding-left: 16px;
    width: 100px;
}

.ra_name, .constant_name {
    font-weight: bold;
}

.function,
.section_navigation_link,
.section_navigation_subsection_heading {
    margin-left: 24px;
}

.section_navigation_subheading {
    margin-top: 14px;
    margin-bottom: 2px;
    font-weight: 700;
}

.section_navigation_subsection_heading {
    margin-top: 4px;
    margin-bottom: 2px;
    font-weight: 700;
}

.section_navigation_subheading {
    margin-bottom: 4px;
}

.constant_description {
    margin-bottom: 8px;
}

table {
    vertical-align: text-top;
}
td {
    vertical-align: top;
}

.function_heading a,
.constant_name {
    color: #E658A0; /* Pink */
}

.returns {
    color: #ab38c1; /* Purple */
}

.arguments {
    color: #d77818; /* Orange */
}

.synopsis_background {
    padding: 2px 5px 2px 5px;
    background-color: #efefef;
    border-radius: 6px;
    box-decoration-break: clone;
    -webkit-box-decoration-break: clone;
}

body {
    background-color: #efefef; /* Grey */
}

.section {
    padding: 12px;
    padding-left: 22px;
    margin-bottom: 12px;
    background-color: #ffffff;
    border-radius: 8px 0 0 8px;
}

.slash {
    color: #a7a7a7;
}

.section_heading,
.section_description, 
.variant_description,
.function_description,
.synopsis {
    margin-bottom: 12px;
}

td {
    padding-top: 8px;
}

.section_description, 
.variant_description {
    margin-top: 12px;
}

.relative {
    position: relative;
}

</style>
</head><body>
]])

    -- Side navigation
    A(div('side_navigation'))
    A(p(aLink('love', '#love')))
    for _, module_ in ipairs(api.modules) do
        if module_.name ~= 'love' then
            A(p(aLink(module_.name, '#'..module_.fullname)))
        end
    end
    A(div()) -- navigation

    -- The 'container' class sets a margin-left to move the contents away from the side navigation.
    A(div('container'))
    
    A([[
<div style="margin-left: 22px; margin-top: 12px; margin-bottom: 12px;">
<p style="margin: 8px 0;">This is an unofficial one-page reference for the L&Ouml;VE ]]..api.version..[[ API.</p>
<p style="margin: 8px 0;">Please note that this reference isn't complete! For the most up-to-date documentation go to <a href="https://love2d.org/wiki">love2d.org/wiki</a></p>
<p style="margin: 8px 0;">If you find an error, you can create a pull request or issue at <a href="https://github.com/love2d-community/love-api">github.com/love2d-community/love-api</a></p>
<p style="margin: 8px 0;">To save this page for offline viewing: Ctrl-S then select "Web Page, HTML only" instead of "Web Page, complete"
</div>
    ]])
    
    local function doModuleOrTypeSection(mt)
        A(div('section'))
        A(p(a(mt.fullname, '#'..mt.fullname, mt.fullname), 'section_heading'))
        if mt.what == 'type' then
            A(p(getDescription(mt), 'section_description'))
        end

        -- Module/type navigation
        local function subsection(s, t)
            if #t > 0 then
                A(p(s, 'section_navigation_subheading'))

                local function doModuleOrTypeNavigationLink(item)
                    local function f(getterName)
                        local getterPart = ''
                        if getterName then
                            getterPart = aLink(getterName, '#'..item.getter.fullname)..span('/', 'slash')
                        end
                        local minidescriptionPart = ''
                        if languageCode and item.minidescriptiont[languageCode] then
                            minidescriptionPart = '&emsp;'..item.minidescriptiont[languageCode]:gsub(' %[auto%]$', '')..' '
                        end
                        A(p((item.prefix or '')..getterPart..aLink(item.name, '#'..item.fullname)..minidescriptionPart..'', 'section_navigation_link'..(languageCode and ' section_navigation_link_minidescription' or '')))
                    end
                    if item.getter then
                        local withoutPrefix = item.name:gsub('^set', '')
                        local getterPrefix = item.getter.name:gsub(withoutPrefix, '')

                        if withoutPrefix == item.name or not getterPrefix then
                            f(item.getter.name)
                        else
                            f(getterPrefix)
                        end
                    elseif not item.setter then
                        f()
                    end
                end

                local mtOrder = order[mt.fullname]

                local done = {}

                for _, orderItem in ipairs((mtOrder and mtOrder[s:lower()]) or {}) do

                    local function doOrderItem(orderItem)
                        for i, v in ipairs(t) do -- Check to see if it's there
                            if orderItem == v.name then
                                doModuleOrTypeNavigationLink(v)
                                done[v.name] = true
                                break
                            end
                        end
                    end

                    if type(orderItem) == 'table' then
                        if not languageCode then
                            A(p(orderItem.name, 'section_navigation_subsection_heading'))
                        end
                        for _, item in ipairs(orderItem.items) do
                            doOrderItem(item)
                        end
                    else
                        doOrderItem(orderItem)
                    end
                end
                for i, v in ipairs(t) do
                    if not done[v.name] then
                        doModuleOrTypeNavigationLink(v)
                    end
                end
            end
        end

        if mt.what == 'module' then
            subsection('Types', mt.types)

            local nonConstructors = {}
            local callbacks = {}
            for _, v in ipairs(mt.noncallbackfunctions) do
                if (not v.constructs) or v.name == 'compress' or v.name == 'getJoysticks' then
                    table.insert(nonConstructors, v)
                end
            end
            subsection('Callbacks', mt.callbacks)
            subsection('Functions', nonConstructors)
            subsection('Enums', mt.enums)
        else -- mt.what == 'type'
            subsection('Constructors', mt.constructors)
            subsection('Functions', mt.functions)
            subsection('Supertypes', mt.supertypes)
            subsection('Subtypes', mt.subtypes)
        end
        A(div()) -- 'section'

        doFunctions(mt.functions)
        doEnums(mt.enums)
    end

    for _, module_ in ipairs(api.modules) do
        if module_.name == 'love' then
            print(module_.name)
            doModuleOrTypeSection(module_)
            for _, type_ in ipairs(module_.types or {}) do
                doModuleOrTypeSection(type_)
            end
        end
    end

    for _, module_ in ipairs(api.modules) do
        if module_.name ~= 'love' then
            print(module_.name)
            doModuleOrTypeSection(module_)
            for _, type_ in ipairs(module_.types or {}) do
                doModuleOrTypeSection(type_)
            end
        end
    end

    A(div()) -- container

    A('</body></html>')
end

local function f(lc)
    languageCode = lc
    output = {}
    main(languageCode)
    local file = io.open((languageCode or 'index')..'.html', 'w')
    local out = table.concat(output, '\n')
    if FAST_MODE then
        file:write(out)
    else
        file:write((out:gsub('Ö', '&Ouml;'):gsub('é', '&eacute;'):gsub('€', '&euro;')))
    end
    file:close()
end

f()

for _, class in ipairs(classes) do
    if not usedClasses[class] then
        print()
        print('Class not used: '..class)
    end
end
