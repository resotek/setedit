/**[txh]********************************************************************

  Copyright (c) 2002 by Salvador E. Tropea
  Covered by the GPL License

  Description:
  This program was used to generate a .sft from the XFree86's 10x20.pcf
font.@*
  The code is a dirty hack, I don't even bothered looking for the PCF
format, I just figured out where is located what I need. Some comments are
in spanish. I keep it to easily add more symbols in the future.
  
***************************************************************************/

#include <stdio.h>
#include <stdlib.h>

typedef unsigned char uchar;
typedef unsigned short ushort;
typedef unsigned short uint16;

struct stIntCodePairs
{
 uint16 code,unicode;
};

stIntCodePairs InternalMap[]=
{
 {    0,      0 },
 {    1, 0x263a },
 {    2, 0x263b },
 {    3, 0x2665 },
 {    3, 0x2764 },
 {    4, 0x25c6 },
 {    4, 0x2666 },
 {    5, 0x2663 },
 {    6, 0x2660 },
 {    7, 0x2022 },
 {    7, 0x2024 },
 {    7, 0x22c5 },
 {    8, 0x25d8 },
 {    8, 0x25e6 },
 {    9, 0x25cb },
 {   10, 0x25d9 },
 {   11, 0x2642 },
 {   12, 0x2640 },
 {   13, 0x266a },
 {   14, 0x266b },
 {   15, 0x2609 },
 {   15, 0x263c },
 {   16, 0x25b6 },
 {   17, 0x25c0 },
 {   18, 0x2195 },
 {   19, 0x203c },
 {   20, 0x00b6 },
 {   21, 0x00a7 },
 {   22, 0x25ac },
 {   23, 0x21a8 },
 {   24, 0x2191 },
 {   25, 0x2193 },
 {   26, 0x2192 },
 {   27, 0x2190 },
 {   28, 0x221f },
 {   29, 0x2194 },
 {   30, 0x25b2 },
 {   31, 0x25bc },
 {   32, 0x0020 },
 {   32, 0x2423 },
 {   33, 0x0021 },
 {   34, 0x0022 },
 {   35, 0x0023 },
 {   36, 0x0024 },
 {   37, 0x0025 },
 {   38, 0x0026 },
 {   39, 0x0027 },
 {   40, 0x0028 },
 {   41, 0x0029 },
 {   42, 0x002a },
 {   43, 0x002b },
 {   44, 0x002c },
 {   45, 0x002d },
 {   46, 0x002e },
 {   47, 0x002f },
 {   48, 0x0030 },
 {   49, 0x0031 },
 {   50, 0x0032 },
 {   51, 0x0033 },
 {   52, 0x0034 },
 {   53, 0x0035 },
 {   54, 0x0036 },
 {   55, 0x0037 },
 {   56, 0x0038 },
 {   57, 0x0039 },
 {   58, 0x003a },
 {   59, 0x003b },
 {   60, 0x003c },
 {   61, 0x003d },
 {   62, 0x003e },
 {   63, 0x003f },
 {   64, 0x0040 },
 {   65, 0x0041 },
 {   65, 0x0391 },
 {   66, 0x0042 },
 {   66, 0x0392 },
 {   66, 0x0412 },
 {   67, 0x0043 },
 {   67, 0x0421 },
 {   68, 0x0044 },
 {   69, 0x0045 },
 {   69, 0x0395 },
 {   69, 0x0415 },
 {   70, 0x0046 },
 {   71, 0x0047 },
 {   72, 0x0048 },
 {   72, 0x0397 },
 {   72, 0x041d },
 {   73, 0x0049 },
 {   73, 0x0399 },
 {   74, 0x004a },
 {   75, 0x004b },
 {   75, 0x039a },
 {   75, 0x041a },
 {   76, 0x004c },
 {   77, 0x004d },
 {   77, 0x039c },
 {   77, 0x041c },
 {   78, 0x004e },
 {   78, 0x039d },
 {   79, 0x004f },
 {   79, 0x039f },
 {   79, 0x041e },
 {   80, 0x0050 },
 {   80, 0x03a1 },
 {   80, 0x0420 },
 {   81, 0x0051 },
 {   82, 0x0052 },
 {   83, 0x0053 },
 {   84, 0x0054 },
 {   84, 0x03a4 },
 {   84, 0x0422 },
 {   85, 0x0055 },
 {   86, 0x0056 },
 {   87, 0x0057 },
 {   88, 0x0058 },
 {   88, 0x03a7 },
 {   88, 0x0425 },
 {   89, 0x0059 },
 {   89, 0x03a5 },
 {   90, 0x005a },
 {   90, 0x0396 },
 {   91, 0x005b },
 {   92, 0x005c },
 {   93, 0x005d },
 {   94, 0x005e },
 {   95, 0x005f },
 {   96, 0x0060 },
 {   97, 0x0061 },
 {   97, 0x0430 },
 {   98, 0x0062 },
 {   99, 0x0063 },
 {   99, 0x0441 },
 {  100, 0x0064 },
 {  101, 0x0065 },
 {  101, 0x0435 },
 {  102, 0x0066 },
 {  103, 0x0067 },
 {  104, 0x0068 },
 {  105, 0x0069 },
 {  105, 0x0456 },
 {  106, 0x006a },
 {  106, 0x0458 },
 {  107, 0x006b },
 {  108, 0x006c },
 {  109, 0x006d },
 {  110, 0x006e },
 {  111, 0x006f },
 {  111, 0x03bf },
 {  111, 0x043e },
 {  112, 0x0070 },
 {  112, 0x0440 },
 {  113, 0x0071 },
 {  114, 0x0072 },
 {  115, 0x0073 },
 {  115, 0x0455 },
 {  116, 0x0074 },
 {  117, 0x0075 },
 {  118, 0x0076 },
 {  119, 0x0077 },
 {  120, 0x0078 },
 {  120, 0x0445 },
 {  121, 0x0079 },
 {  122, 0x007a },
 {  123, 0x007b },
 {  124, 0x007c },
 {  125, 0x007d },
 {  126, 0x007e },
 {  127, 0x2302 },
 {  128, 0x00c7 },
 {  129, 0x00fc },
 {  130, 0x00e9 },
 {  131, 0x00e2 },
 {  132, 0x00e4 },
 {  133, 0x00e0 },
 {  134, 0x00e5 },
 {  135, 0x00e7 },
 {  136, 0x00ea },
 {  137, 0x00eb },
 {  137, 0x0451 },
 {  138, 0x00e8 },
 {  139, 0x00ef },
 {  139, 0x0457 },
 {  140, 0x00ee },
 {  141, 0x00ec },
 {  142, 0x00c4 },
 {  143, 0x00c5 },
 {  144, 0x00c9 },
 {  145, 0x00e6 },
 {  146, 0x00c6 },
 {  147, 0x00f4 },
 {  148, 0x00f6 },
 {  149, 0x00f2 },
 {  150, 0x00fb },
 {  151, 0x00f9 },
 {  152, 0x00ff },
 {  153, 0x00d6 },
 {  154, 0x00dc },
 {  155, 0x00a2 },
 {  156, 0x00a3 },
 {  157, 0x00a5 },
 {  158, 0x20a7 },
 {  159, 0x0192 },
 {  160, 0x00e1 },
 {  161, 0x00ed },
 {  162, 0x00f3 },
 {  163, 0x00fa },
 {  164, 0x00f1 },
 {  165, 0x00d1 },
 {  166, 0x00aa },
 {  167, 0x00ba },
 {  168, 0x00bf },
 {  169, 0x2310 },
 {  170, 0x00ac },
 {  171, 0x00bd },
 {  172, 0x00bc },
 {  173, 0x00a1 },
 {  174, 0x00ab },
 {  175, 0x00bb },
 {  176, 0x2591 },
 {  177, 0x2592 },
 {  178, 0x2593 },
 {  179, 0x2502 },
 {  180, 0x2524 },
 {  181, 0x2561 },
 {  182, 0x2562 },
 {  183, 0x2556 },
 {  184, 0x2555 },
 {  185, 0x2563 },
 {  185, 0x252b },
 {  186, 0x2551 },
 {  186, 0x2503 },
 {  187, 0x2557 },
 {  187, 0x2513 },
 {  188, 0x255d },
 {  188, 0x251b },
 {  189, 0x255c },
 {  190, 0x255b },
 {  191, 0x2510 },
 {  192, 0x2514 },
 {  193, 0x2534 },
 {  194, 0x252c },
 {  195, 0x251c },
 {  196, 0x2500 },
 {  197, 0x253c },
 {  198, 0x255e },
 {  199, 0x255f },
 {  200, 0x255a },
 {  200, 0x2517 },
 {  201, 0x2554 },
 {  201, 0x250f },
 {  202, 0x2569 },
 {  202, 0x253b },
 {  203, 0x2566 },
 {  203, 0x2533 },
 {  204, 0x2560 },
 {  204, 0x2523 },
 {  205, 0x2550 },
 {  205, 0x2501 },
 {  206, 0x256c },
 {  206, 0x254b },
 {  207, 0x2567 },
 {  208, 0x2568 },
 {  209, 0x2564 },
 {  210, 0x2565 },
 {  211, 0x2559 },
 {  212, 0x2558 },
 {  213, 0x2552 },
 {  214, 0x2553 },
 {  215, 0x256b },
 {  216, 0x256a },
 {  217, 0x2518 },
 {  218, 0x250c },
 {  219, 0x2588 },
 {  220, 0x2584 },
 {  221, 0x258c },
 {  222, 0x2590 },
 {  223, 0x2580 },
 {  224, 0x03b1 },
 {  225, 0x00df },
 {  225, 0x03b2 },
 {  226, 0x0393 },
 {  227, 0x03c0 },
 {  228, 0x03a3 },
 {  229, 0x03c3 },
 {  230, 0x00b5 },
 {  230, 0x03bc },
 {  231, 0x03c4 },
 {  232, 0x03a6 },
 {  233, 0x0398 },
 {  234, 0x03a9 },
 {  235, 0x03b4 },
 {  236, 0x221e },
 {  237, 0x03c6 },
 {  238, 0x03b5 },
 {  239, 0x2229 },
 {  240, 0x2261 },
 {  241, 0x00b1 },
 {  242, 0x2265 },
 {  243, 0x2264 },
 {  244, 0x2320 },
 {  245, 0x2321 },
 {  246, 0x00f7 },
 {  247, 0x2248 },
 {  248, 0x00b0 },
 {  249, 0x2219 },
 {  250, 0x00b7 },
 {  251, 0x221a },
 {  252, 0x207f },
 {  253, 0x00b2 },
 {  254, 0x25a0 },
 {  255, 0x00a0 },
 {  256, 0x0107 },
 {  257, 0x013a },
 {  258, 0x0144 },
 {  259, 0x0155 },
 {  260, 0x015b },
 {  261, 0x00fd },
 {  262, 0x017a },
 {  263, 0x00c1 },
 {  264, 0x0106 },
 {  265, 0x00cd },
 {  266, 0x0139 },
 {  267, 0x0143 },
 {  268, 0x00d3 },
 {  269, 0x0154 },
 {  270, 0x015a },
 {  271, 0x00da },
 {  272, 0x00dd },
 {  273, 0x0179 },
 {  274, 0x0170 },
 {  275, 0x00c0 },
 {  276, 0x00c8 },
 {  277, 0x00cc },
 {  278, 0x00d2 },
 {  279, 0x00d9 },
 {  280, 0x00cb },
 {  280, 0x0401 },
 {  281, 0x00cf },
 {  281, 0x03aa },
 {  281, 0x0406 },
 {  282, 0x016e },
 {  283, 0x016f },
 {  284, 0x00e3 },
 {  285, 0x00f5 },
 {  286, 0x0171 },
 {  287, 0x00c3 },
 {  288, 0x00d5 },
 {  289, 0x00c2 },
 {  290, 0x00ca },
 {  291, 0x00ce },
 {  292, 0x00d4 },
 {  293, 0x00db },
 {  294, 0x010d },
 {  295, 0x0148 },
 {  296, 0x0159 },
 {  297, 0x0161 },
 {  298, 0x017e },
 {  299, 0x010c },
 {  300, 0x010e },
 {  301, 0x011a },
 {  302, 0x0147 },
 {  303, 0x0158 },
 {  304, 0x0160 },
 {  305, 0x0164 },
 {  306, 0x017d },
 {  307, 0x015f },
 {  308, 0x0163 },
 {  309, 0x015e },
 {  310, 0x0162 },
 {  311, 0x0105 },
 {  312, 0x0119 },
 {  313, 0x0104 },
 {  314, 0x0118 },
 {  315, 0x017c },
 {  316, 0x017b },
 {  317, 0x0142 },
 {  318, 0x00f8 },
 {  319, 0x0141 },
 {  320, 0x00d8 },
 {  321, 0x0111 },
 {  322, 0x00f0 },
 {  323, 0x00d0 },
 {  323, 0x0110 },
 {  324, 0x010f },
 {  325, 0x013e },
 {  326, 0x0165 },
 {  327, 0x013d },
 {  328, 0x0103 },
 {  329, 0x0115 },
 {  330, 0x0102 },
 {  331, 0x00a4 },
 {  332, 0x00fe },
 {  333, 0x00de },
 {  334, 0x00d7 },
 {  335, 0x00ae },
 {  336, 0x00a9 },
 {  337, 0x0131 },
 {  338, 0x00a6 },
 {  339, 0x00af },
 {  340, 0x00b4 },
 {  341, 0x00ad },
 {  342, 0x2017 },
 {  343, 0x00be },
 {  344, 0x00b8 },
 {  345, 0x00a8 },
 {  346, 0x00b9 },
 {  347, 0x00b3 },
 {  348, 0x02dd },
 {  349, 0x02db },
 {  350, 0x02c7 },
 {  351, 0x02d8 },
 {  352, 0x02d9 },
 {  353, 0x0151 },
 {  354, 0x0150 },
 {  355, 0x013e },
 {  356, 0x013d },
 {  357, 0x0165 },
 {  358, 0x011b },
 {  359, 0x010f },
 {  360, 0x0410 },
 {  361, 0x0411 },
 {  362, 0x0413 },
 {  363, 0x0414 },
 {  364, 0x0416 },
 {  365, 0x0418 },
 {  366, 0x0419 },
 {  367, 0x041b },
 {  368, 0x041f },
 {  369, 0x0423 },
 {  370, 0x0424 },
 {  371, 0x0426 },
 {  372, 0x0427 },
 {  373, 0x0428 },
 {  374, 0x0429 },
 {  375, 0x042a },
 {  376, 0x042b },
 {  377, 0x042c },
 {  378, 0x042d },
 {  379, 0x042e },
 {  380, 0x042f },
 {  381, 0x0431 },
 {  382, 0x0432 },
 {  383, 0x0433 },
 {  384, 0x0434 },
 {  385, 0x0436 },
 {  386, 0x0437 },
 {  387, 0x0438 },
 {  388, 0x0439 },
 {  389, 0x03ba },
 {  389, 0x043a },
 {  390, 0x043b },
 {  391, 0x043c },
 {  392, 0x043d },
 {  393, 0x043f },
 {  394, 0x0442 },
 {  395, 0x0443 },
 {  396, 0x0444 },
 {  397, 0x0446 },
 {  398, 0x0447 },
 {  399, 0x0448 },
 {  400, 0x0449 },
 {  401, 0x044a },
 {  402, 0x044b },
 {  403, 0x044c },
 {  404, 0x044d },
 {  405, 0x044e },
 {  406, 0x044f },
 {  407, 0x0404 },
 {  408, 0x0454 },
 {  409, 0x0417 },
 {  410, 0x045e },
 {  411, 0x2116 },
 {  412, 0x0402 },
 {  413, 0x0452 },
 {  414, 0x0403 },
 {  415, 0x0453 },
 {  416, 0x0407 },
 {  417, 0x0409 },
 {  418, 0x0459 },
 {  419, 0x040a },
 {  420, 0x045a },
 {  421, 0x040b },
 {  422, 0x045b },
 {  423, 0x040c },
 {  424, 0x045c },
 {  425, 0x040e },
 {  426, 0x045e },
 {  427, 0x040f },
 {  428, 0x045f },
 {  429, 0x201e },
 {  430, 0x2026 },
 {  431, 0x2020 },
 {  432, 0x2021 },
 {  433, 0x2030 },
 {  434, 0x201c },
 {  435, 0x201d },
 {  436, 0x2122 },
 {  437, 0x0490 },
 {  438, 0x0491 },
 {  439, 0xfffd },
 {  440, 0x0152 },
 {  441, 0x0153 },
 {  442, 0x2409 },
 {  443, 0x240c },
 {  444, 0x240d },
 {  445, 0x240a },
 {  446, 0x2424 },
 {  447, 0x240b },
 {  448, 0x2260 },
 {  449, 0x21b5 },
 {  450, 0x0178 },
 {  450, 0x03ab },
 {  451, 0xf801 },
 {  452, 0x2575 },
 {  453, 0x2576 },
 {  454, 0x2577 },
 {  455, 0x2574 },
 {  456, 0xf803 },
 {  457, 0x2579 },
 {  458, 0x257a },
 {  459, 0x257b },
 {  460, 0x2578 },
 {  461, 0x0138 },
 {  462, 0x014a },
 {  463, 0x014b },
 {  464, 0x0108 },
 {  465, 0x0109 },
 {  466, 0x011c },
 {  467, 0x011d },
 {  468, 0x0124 },
 {  469, 0x0125 },
 {  470, 0x0134 },
 {  471, 0x0135 },
 {  472, 0x015c },
 {  473, 0x015d },
 {  474, 0x0174 },
 {  475, 0x0175 },
 {  476, 0x0176 },
 {  477, 0x0177 },
 {  478, 0x1e02 },
 {  479, 0x1e03 },
 {  480, 0x010a },
 {  481, 0x010b },
 {  482, 0x1e0a },
 {  483, 0x1e0b },
 {  484, 0x1e1e },
 {  485, 0x1e1f },
 {  486, 0x0121 },
 {  487, 0x0130 },
 {  488, 0x1e40 },
 {  489, 0x1e41 },
 {  490, 0x1e56 },
 {  491, 0x1e57 },
 {  492, 0x1e60 },
 {  493, 0x1e61 },
 {  494, 0x1e6a },
 {  495, 0x1e6b },
 {  496, 0x0112 },
 {  497, 0x0113 },
 {  498, 0x012a },
 {  499, 0x012b },
 {  500, 0x014c },
 {  501, 0x014d },
 {  502, 0x016a },
 {  503, 0x016b },
 {  504, 0x011e },
 {  505, 0x011f },
 {  506, 0x012c },
 {  507, 0x012d },
 {  508, 0x016c },
 {  509, 0x016d },
 {  510, 0x0122 },
 {  511, 0x0123 },
 {  512, 0x0136 },
 {  513, 0x0137 },
 {  514, 0x0145 },
 {  515, 0x0146 },
 {  516, 0x0156 },
 {  517, 0x0157 },
 {  518, 0x0128 },
 {  519, 0x0129 },
 {  520, 0x0168 },
 {  521, 0x0169 },
 {  522, 0x012e },
 {  523, 0x012f },
 {  524, 0x0172 },
 {  525, 0x0173 },
 {  526, 0x1e80 },
 {  527, 0x1e81 },
 {  528, 0x1ef2 },
 {  529, 0x1ef3 },
 {  530, 0x1e82 },
 {  531, 0x1e83 },
 {  532, 0x1e84 },
 {  533, 0x1e85 },
 {  534, 0x0126 },
 {  535, 0x0127 },
 {  536, 0x0166 },
 {  537, 0x0167 },
 {  538, 0x01a0 },
 {  539, 0x01a1 },
 {  540, 0x01af },
 {  541, 0x01b0 },
 {  542, 0x0116 },
 {  543, 0x0117 },
 {  544, 0x013b },
 {  545, 0x013c },
 {  546, 0x03b3 },
 {  547, 0x03b6 },
 {  548, 0x03b7 },
 {  549, 0x03b8 },
 {  550, 0x03b9 },
 {  551, 0x03bb },
 {  552, 0x03bd },
 {  553, 0x03be },
 {  554, 0x03c1 },
 {  555, 0x03c2 },
 {  556, 0x03c5 },
 {  557, 0x03c7 },
 {  558, 0x03c8 },
 {  559, 0x03c9 },
 {  560, 0x0394 },
 {  561, 0x039e },
 {  562, 0x03a0 },
 {  563, 0x03a8 },
 {  564, 0x0385 },
 {  565, 0x03ac },
 {  566, 0x03ad },
 {  567, 0x03ae },
 {  568, 0x03af },
 {  569, 0x03cc },
 {  570, 0x03cd },
 {  571, 0x03ce },
 {  572, 0x0386 },
 {  573, 0x0388 },
 {  574, 0x0389 },
 {  575, 0x038a },
 {  576, 0x038c },
 {  577, 0x038e },
 {  578, 0x038f },
 {  579, 0x03ca },
 {  580, 0x03cb },
 {  581, 0x0390 },
 {  582, 0x03b0 },
 {  583, 0x039b },
 {  584, 0x0101 },
 {  585, 0x0100 },
 {  586, 0x0120 },
 {  587, 0x20ac }
};

const int providedUnicodes=sizeof(InternalMap)/sizeof(stIntCodePairs);

int Compa(const void *a, const void *b)
{
 const int da=((stIntCodePairs *)a)->code;
 const int db=((stIntCodePairs *)b)->code;

 return (da>db)-(da<db);
}


void Sorta()
{
 qsort(InternalMap,providedUnicodes,sizeof(stIntCodePairs),Compa);
 int i;
 for (i=0; i<providedUnicodes; i++)
     printf("{ %4d, 0x%04x },\n",InternalMap[i].code,InternalMap[i].unicode);
}

// 0x38c dice la cantidad
// 0x38e a 0x569A son 5 bytes por caracter: 0x80, 0x8A, 0x8A, 0x90, 0x84
// Parecen tener siempre el bit 7 a 1 y ser 0,10,10,16,4.
// 4 son los bytes por l�nea y 10 el ancho �y el 20?
// 0x56A4 son los 4252 offsets de cada font de 80 bytes (17008 bytes=>0x4270)
// Despu�s vienen los 4252 shapes
// La 1er letra 0x9924 y son 4*4252*20=340160 bytes => hasta 0x5C9E4
// Ah� dice 0x102, luego 4252 0x61cf5-0x5c9ea, ser�an otros 5 bytes por caracter:
// 0x61d04 son 2 bytes y van diciendo para cada unicode que s�mbolo lo resuelve.
// Si no hay s�mbolo pone 0xFFFF. Son unas 0x3100 entradas.
// Luego viene una tabla de 0x1e0 y luego otra para los nombres.

#define NUM_FONTS 587
typedef struct
{
 int first, last, lines;
 int width;
} Font;

char *Signature="SET's editor font\x1A";
char *Name="XFree86 10x20";
FILE *f;
ushort unicodes[0x3100];

void SaveChar(int v, FILE *d)
{
 unsigned i,j,mask,mask2,val,vres;
 if (v==unicodes[0x2578])
   {// BOX DRAWINGS HEAVY LEFT, but Linux uses *DOUBLE*
    for (i=0; i<16; i++)
        fputc(0,d);
    fputc(0xF8,d); fputc(0,d);
    fputc(0x08,d); fputc(0,d);
    fputc(0xF8,d); fputc(0,d);
    for (i=0; i<18; i++)
        fputc(0,d);
    return;
   }
 if (v==unicodes[0x2579])
   {// BOX DRAWINGS HEAVY UP, but Linux uses *DOUBLE*
    for (i=0; i<9; i++)
       {
        fputc(0x12,d); fputc(0,d);
       }
    fputc(0x1E,d); fputc(0,d);
    for (i=0; i<20; i++)
        fputc(0,d);
    return;
   }
 if (v==unicodes[0x257A])
   {// BOX DRAWINGS HEAVY RIGHT, but Linux uses *DOUBLE*
    for (i=0; i<16; i++)
        fputc(0,d);
    fputc(0x07,d); fputc(0xC0,d);
    fputc(0x04,d); fputc(0,d);
    fputc(0x07,d); fputc(0xC0,d);
    for (i=0; i<18; i++)
        fputc(0,d);
    return;
   }
 if (v==unicodes[0x257B])
   {// BOX DRAWINGS HEAVY DOWN, but Linux uses *DOUBLE*
    for (i=0; i<20; i++)
        fputc(0,d);
    fputc(0x1E,d); fputc(0,d);
    for (i=0; i<9; i++)
       {
        fputc(0x12,d); fputc(0,d);
       }
    return;
   }
 if (v==0xF801)
   {
    for (i=0; i<5*2; i++)
        fputc(0,d);
    fputc(0xFF,d); fputc(0xC0,d);
    for (i=0; i<14*2; i++)
        fputc(0,d);
    return;
   }
 if (v==0xF803)
   {
    for (i=0; i<14*2; i++)
        fputc(0,d);
    fputc(0xFF,d); fputc(0xC0,d);
    for (i=0; i<5*2; i++)
        fputc(0,d);
    return;
   }
 fseek(f,0x9924+v*80,SEEK_SET);
 uchar c[4];

 for (j=0; j<20; j++)
    {
     fread(c,4,1,f);
     for (i=0; i<2; i++)
        {
         val=c[i];
         vres=0;
         for (mask=1,mask2=0x80; mask2; mask<<=1, mask2>>=1)
             if (val & mask)
                vres|=mask2;
         fputc(vres,d);
        }
    }
}

void GenSFT(void)
{
 FILE *f=fopen("10x20.sft","wb");
 fwrite(Signature,strlen(Signature),1,f);
 int version=2;
 fwrite(&version,4,1,f);
 int cant=1;
 fwrite(&cant,4,1,f);
 short len=strlen(Name)+1;
 fwrite(&len,2,1,f);
 fputs(Name,f);

 Font fnt={0,providedUnicodes,20,10};
 fwrite(&fnt,sizeof(fnt),1,f);

 int ant=-1,uni,code,i;
 for (i=0; i<providedUnicodes; i++)
    {
     code=InternalMap[i].code;
     if (code==ant) continue;
     if (code!=ant+1) printf("%d\n",code);
     ant=code;
     uni=InternalMap[i].unicode;
     if (uni>=0x3100)
       {
        if (uni==0xF801 || uni==0xF803)
           SaveChar(uni,f);
        else
           SaveChar(4251,f);
       }
     else
       {
        int val=unicodes[uni];
        if (val==0xFFFF)
           SaveChar(4251,f);
        else
           SaveChar(val,f);
       }
    }

 fclose(f);
}

void DrawChar(int v)
{
 fseek(f,0x9924+v*80,SEEK_SET);
 uchar c[4];
 unsigned i,j,mask,mask2,val,vres;

 for (j=0; j<20; j++)
   {
    fread(c,4,1,f);
    for (i=0; i<4; i++)
       {
        val=c[i];
        for (mask=1; mask<0x100; mask<<=1)
           {
            if (val & mask)
               printf("X");
            else
               printf(" ");
           }
       }
    printf("\n");
   }
}


int main(int argc, char *argv[])
{
 // 4252 caracteres
 f=fopen("10x20.pcf","rb");
 if (!f) return 1;

 fseek(f,0x61d06,SEEK_SET);
 fread(unicodes,2,0x3100,f);

 unsigned i;
 #if 0
 for (i=0; i<0x3100; i++)
     printf("U%04X => 0x%04X\n",i,unicodes[i]);
 #endif

 #if 0
 // Box drawings
 for (i=0x2500; i<0x2600; i++)
     if (unicodes[i]!=0xFFFF)
        DrawChar(unicodes[i]);
 #endif

 GenSFT();
 return 0;

 fseek(f,0x9924,SEEK_SET);
 uchar c[4];

 // Used to sort the InternalTable to get the reverse mapping
 //Sorta();

 unsigned mask,val,co=0;
 do
   {
    fread(c,4,1,f);
    co+=4;
    //for (i=4; i; i--)
    for (i=0; i<4; i++)
       {
        //val=c[i-1];
        val=c[i];
        for (mask=1; mask<0x100; mask<<=1)
           {
            if (val & mask)
               printf("X");
            else
               printf(" ");
           }
       }
    printf("\n");
    if (co>=340160) break;
   }
 while (!feof(f));

 fseek(f,0x703fc,SEEK_SET);
 i=0;
 do
   {
    val=fgetc(f);
    if (!val)
      {
       printf("\n");
       i++;
       if (i==4252) break;
      }
    else
       printf("%c",val);
   }
 while (!feof(f));

 int ant=-1,uni,code;
 for (i=0; i<providedUnicodes; i++)
    {
     code=InternalMap[i].code;
     if (code==ant) continue;
     ant=code;
     uni=InternalMap[i].unicode;
     if (uni>=0x3100)
       {
        if (uni==0xFFFD)
           printf("%d => 4251\n",code);
        else
           printf("C�digo %d est� fuera del rango\n",code);
       }
     else
       {
        int val=unicodes[uni];
        if (val==0xFFFF)
           printf("Falta %d?\n",code);
        else
           printf("%d => %d\n",code,val);
       }
    }

 return 0;
}

