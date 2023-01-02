# Regex

<table><thead><tr><th align="left">范例</th><th>说明</th></tr></thead><tbody><tr><td align="left"><code>[abc]</code></td><td>单个字符：<code>a</code>、<code>b</code> 或 <code>c</code></td></tr><tr><td align="left"><code>[^abc]</code></td><td>一个字符，除了：<code>a</code>、<code>b</code> 或 <code>c</code></td></tr><tr><td align="left"><code>[a-z]</code></td><td>范围内的字符：<code>a-z</code></td></tr><tr><td align="left"><code>[^a-z]</code></td><td>不在范围内的字符：<code>a-z</code></td></tr><tr><td align="left"><code>[0-9]</code></td><td>范围内的数字：<code>0-9</code></td></tr><tr><td align="left"><code>[a-zA-Z]</code></td><td>范围内的字符：<br><code>a-z</code> 或 <code>A-Z</code></td></tr><tr><td align="left"><code>[a-zA-Z0-9]</code></td><td>范围内的字符：<br><code>a-z</code>、<code>A-Z</code> 或 <code>0-9</code></td></tr></tbody></table>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="量词"><a aria-hidden="true" tabindex="-1" href="#量词"><span class="icon icon-link"></span></a>量词</h3><div class="wrap-body">

















































<table><thead><tr><th align="left">范例</th><th>说明</th></tr></thead><tbody><tr><td align="left"><code>a?</code></td><td>零个或一个<code>a</code></td></tr><tr><td align="left"><code>a*</code></td><td>零个或多个 <code>a</code></td></tr><tr><td align="left"><code>a+</code></td><td>一个或多个<code>a</code></td></tr><tr><td align="left"><code>[0-9]+</code></td><td><code>0-9</code>中的一个或多个</td></tr><tr><td align="left"><code>a{3}</code></td><td>正好 <code>3</code> 个 <code>a</code></td></tr><tr><td align="left"><code>a{3,}</code></td><td>3个或更多的<code>a</code></td></tr><tr><td align="left"><code>a{3,6}</code></td><td><code>a</code> 的 <code>3</code> 到 <code>6</code> 之间</td></tr><tr><td align="left"><code>a*</code></td><td>贪心量词</td></tr><tr><td align="left"><code>a*?</code></td><td>惰性量词</td></tr><tr><td align="left"><code>a*+</code></td><td>占有量词</td></tr></tbody></table>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="常用元字符"><a aria-hidden="true" tabindex="-1" href="#常用元字符"><span class="icon icon-link"></span></a>常用元字符</h3><div class="wrap-body">
<ul class="cols-3 style-none">
<li>^</li>
<li>{</li>
<li>+</li>
<li>&#x3C;</li>
<li>[</li>
<li>*</li>
<li>)</li>
<li>></li>
<li>.</li>
<li>(</li>
<li>|</li>
<li>$</li>
<li>\</li>
<li>?</li>
</ul>
<!--rehype:className=cols-3 style-none-->
<p>使用 <code>\</code> 转义这些特殊字符</p>
</div></div></div><div class="wrap h3body-not-exist row-span-4"><div class="wrap-header h3wrap"><h3 id="元序列"><a aria-hidden="true" tabindex="-1" href="#元序列"><span class="icon icon-link"></span></a>元序列</h3><div class="wrap-body">
<!--rehype:wrap-class=row-span-4-->









































































































































































<table><thead><tr><th align="left">范例</th><th>说明</th></tr></thead><tbody><tr><td align="left"><code>.</code></td><td>任何单个字符</td></tr><tr><td align="left"><code>\s</code></td><td>任何空白字符</td></tr><tr><td align="left"><code>\S</code></td><td>任何非空白字符</td></tr><tr><td align="left"><code>\d</code></td><td>任何数字，与 <code>[0-9]</code> 相同</td></tr><tr><td align="left"><code>\D</code></td><td>任何非数字，与 <code>[^0-9]</code> 相同</td></tr><tr><td align="left"><code>\w</code></td><td>任何单词字符</td></tr><tr><td align="left"><code>\W</code></td><td>任何非单词字符</td></tr><tr><td align="left"><code>\X</code></td><td>任何 Unicode 序列，包括换行符</td></tr><tr><td align="left"><code>\C</code></td><td>匹配一个数据单元</td></tr><tr><td align="left"><code>\R</code></td><td>Unicode 换行符</td></tr><tr><td align="left"><code>\v</code></td><td>垂直空白字符</td></tr><tr><td align="left"><code>\V</code></td><td><code>\v</code> 的否定 - 除了换行符和垂直制表符之外的任何内容</td></tr><tr><td align="left"><code>\h</code></td><td>水平空白字符</td></tr><tr><td align="left"><code>\H</code></td><td><code>\h</code> 的否定</td></tr><tr><td align="left"><code>\K</code></td><td>重置匹配</td></tr><tr><td align="left"><code>\n</code></td><td>匹配第 <code>n</code> 个子模式</td></tr><tr><td align="left"><code>\pX</code></td><td><code>Unicode</code> 属性 <code>X</code></td></tr><tr><td align="left"><code>\p{...}</code></td><td><code>Unicode</code> 属性或脚本类别</td></tr><tr><td align="left"><code>\PX</code></td><td><code>\pX</code> 的否定</td></tr><tr><td align="left"><code>\P{...}</code></td><td><code>\p</code> 的否定</td></tr><tr><td align="left"><code>\Q...\E</code></td><td>引用;视为文字</td></tr><tr><td align="left"><code>\k&#x3C;name></code></td><td>匹配子模式<code>name</code></td></tr><tr><td align="left"><code>\k'name'</code></td><td>匹配子模式<code>name</code></td></tr><tr><td align="left"><code>\k{name}</code></td><td>匹配子模式<code>name</code></td></tr><tr><td align="left"><code>\gn</code></td><td>匹配第 n 个子模式</td></tr><tr><td align="left"><code>\g{n}</code></td><td>匹配第 n 个子模式</td></tr><tr><td align="left"><code>\g&#x3C;n></code></td><td>递归第 n 个捕获组</td></tr><tr><td align="left"><code>\g'n'</code></td><td>递归第 n 个捕获组。</td></tr><tr><td align="left"><code>\g{-n}</code></td><td>匹配第 n 个相对前一个子模式</td></tr><tr><td align="left"><code>\g&#x3C;+n></code></td><td>递归第 n 个相对即将到来的子模式</td></tr><tr><td align="left"><code>\g'+n'</code></td><td>匹配第 n 个相对即将到来的子模式</td></tr><tr><td align="left"><code>\g'letter'</code></td><td>递归命名捕获组 <code>字母</code></td></tr><tr><td align="left"><code>\g{letter}</code></td><td>匹配先前命名的捕获组 <code>字母</code></td></tr><tr><td align="left"><code>\g&#x3C;letter></code></td><td>递归命名捕获组 <code>字母</code></td></tr><tr><td align="left"><code>\xYY</code></td><td>十六进制字符 <code>YY</code></td></tr><tr><td align="left"><code>\x{YYYY}</code></td><td>十六进制字符 <code>YYYY</code></td></tr><tr><td align="left"><code>\ddd</code></td><td>八进制字符<code>ddd</code></td></tr><tr><td align="left"><code>\cY</code></td><td>控制字符 <code>Y</code></td></tr><tr><td align="left"><code>[\b]</code></td><td>退格字符</td></tr><tr><td align="left"><code>\</code></td><td>使任何字符文字</td></tr></tbody></table>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="锚点"><a aria-hidden="true" tabindex="-1" href="#锚点"><span class="icon icon-link"></span></a>锚点</h3><div class="wrap-body">









































<table><thead><tr><th align="left">范例</th><th>说明</th></tr></thead><tbody><tr><td align="left"><code>\G</code></td><td>比赛开始</td></tr><tr><td align="left"><code>^</code></td><td>字符串的开始</td></tr><tr><td align="left"><code>$</code></td><td>字符串结束</td></tr><tr><td align="left"><code>\A</code></td><td>字符串的开始</td></tr><tr><td align="left"><code>\Z</code></td><td>字符串结束</td></tr><tr><td align="left"><code>\z</code></td><td>字符串的绝对结尾</td></tr><tr><td align="left"><code>\b</code></td><td>一个词的边界</td></tr><tr><td align="left"><code>\B</code></td><td>非单词边界</td></tr></tbody></table>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="替代"><a aria-hidden="true" tabindex="-1" href="#替代"><span class="icon icon-link"></span></a>替代</h3><div class="wrap-body">





























































<table><thead><tr><th align="left">范例</th><th>说明</th></tr></thead><tbody><tr><td align="left"><code>\0</code></td><td>完整的比赛内容</td></tr><tr><td align="left"><code>\1</code></td><td>捕获组 <code>1</code> 中的内容</td></tr><tr><td align="left"><code>$1</code></td><td>捕获组 <code>1</code> 中的内容</td></tr><tr><td align="left"><code>${foo}</code></td><td>捕获组 <code>foo</code> 中的内容</td></tr><tr><td align="left"><code>\x20</code></td><td>十六进制替换值</td></tr><tr><td align="left"><code>\x{06fa}</code></td><td>十六进制替换值</td></tr><tr><td align="left"><code>\t</code></td><td>标签</td></tr><tr><td align="left"><code>\r</code></td><td>回车</td></tr><tr><td align="left"><code>\n</code></td><td>新队</td></tr><tr><td align="left"><code>\f</code></td><td>换页</td></tr><tr><td align="left"><code>\U</code></td><td>大写转换</td></tr><tr><td align="left"><code>\L</code></td><td>小写转换</td></tr><tr><td align="left"><code>\E</code></td><td>终止任何转换</td></tr></tbody></table>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="组构造"><a aria-hidden="true" tabindex="-1" href="#组构造"><span class="icon icon-link"></span></a>组构造</h3><div class="wrap-body">





















































<table><thead><tr><th align="left">范例</th><th>说明</th></tr></thead><tbody><tr><td align="left"><code>(...)</code></td><td>捕获所有封闭的东西</td></tr><tr><td align="left"><code>(a|b)</code></td><td>匹配 <code>a</code> 或 <code>b</code></td></tr><tr><td align="left"><code>(?:...)</code></td><td>匹配随附的所有内容</td></tr><tr><td align="left"><code>(?>...)</code></td><td>原子组（非捕获）</td></tr><tr><td align="left"><code>(?|...)</code></td><td>重复的子模式组号</td></tr><tr><td align="left"><code>(?#...)</code></td><td>注解</td></tr><tr><td align="left"><code>(?'name'...)</code></td><td>命名捕获组</td></tr><tr><td align="left"><code>(?&#x3C;name>...)</code></td><td>命名捕获组</td></tr><tr><td align="left"><code>(?P&#x3C;name>...)</code></td><td>命名捕获组</td></tr><tr><td align="left"><code>(?imsxXU)</code></td><td>内联修饰符</td></tr><tr><td align="left"><code>(?(DEFINE)...)</code></td><td>在使用它们之前预定义模式</td></tr></tbody></table>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="断言"><a aria-hidden="true" tabindex="-1" href="#断言"><span class="icon icon-link"></span></a>断言</h3><div class="wrap-body">

































<table><thead><tr><th align="left">:-</th><th>-</th></tr></thead><tbody><tr><td align="left"><code>(?(1)yes|no)</code></td><td>条件语句</td></tr><tr><td align="left"><code>(?(R)yes|no)</code></td><td>条件语句</td></tr><tr><td align="left"><code>(?(R#)yes|no)</code></td><td>递归条件语句</td></tr><tr><td align="left"><code>(?(R&#x26;name)yes|no)</code></td><td>条件语句</td></tr><tr><td align="left"><code>(?(?=...)yes|no)</code></td><td>有条件的前瞻</td></tr><tr><td align="left"><code>(?(?&#x3C;=...)yes|no)</code></td><td>有条件的往后看</td></tr></tbody></table>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="递归"><a aria-hidden="true" tabindex="-1" href="#递归"><span class="icon icon-link"></span></a>递归</h3><div class="wrap-body">

































<table><thead><tr><th align="left">:-</th><th>-</th></tr></thead><tbody><tr><td align="left"><code>(?R)</code></td><td>递归整个模式</td></tr><tr><td align="left"><code>(?1)</code></td><td>递归第一个子模式</td></tr><tr><td align="left"><code>(?+1)</code></td><td>递归第一个相对子模式</td></tr><tr><td align="left"><code>(?&#x26;name)</code></td><td>递归子模式<code>name</code></td></tr><tr><td align="left"><code>(?P=name)</code></td><td>匹配子模式<code>name</code></td></tr><tr><td align="left"><code>(?P>name)</code></td><td>递归子模式<code>name</code></td></tr></tbody></table>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="标志修饰符"><a aria-hidden="true" tabindex="-1" href="#标志修饰符"><span class="icon icon-link"></span></a>标志/修饰符</h3><div class="wrap-body">





















































<table><thead><tr><th align="left">:-</th><th>-</th></tr></thead><tbody><tr><td align="left"><code>g</code></td><td>全部</td></tr><tr><td align="left"><code>m</code></td><td>多行</td></tr><tr><td align="left"><code>i</code></td><td>不区分大小写</td></tr><tr><td align="left"><code>x</code></td><td>忽略空格</td></tr><tr><td align="left"><code>s</code></td><td>单线</td></tr><tr><td align="left"><code>u</code></td><td>统一码</td></tr><tr><td align="left"><code>X</code></td><td>扩展</td></tr><tr><td align="left"><code>U</code></td><td>不贪心</td></tr><tr><td align="left"><code>A</code></td><td>锚</td></tr><tr><td align="left"><code>J</code></td><td>重复的组名</td></tr><tr><td align="left"><code>d</code></td><td>结果包含捕获组子字符串开始和结束的索引</td></tr></tbody></table>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="零宽度断言"><a aria-hidden="true" tabindex="-1" href="#零宽度断言"><span class="icon icon-link"></span></a>零宽度断言</h3><div class="wrap-body">









































<table><thead><tr><th align="left">:-</th><th>-</th></tr></thead><tbody><tr><td align="left"><code>(?=...)</code></td><td>正先行断言</td></tr><tr><td align="left"><code>(?!...)</code></td><td>负先行断言</td></tr><tr><td align="left"><code>(?&#x3C;=...)</code></td><td>正后发断言</td></tr><tr><td align="left"><code>(?&#x3C;!...)</code></td><td>负后发断言</td></tr><tr><td align="left"><code>?=</code></td><td>正先行断言-存在</td></tr><tr><td align="left"><code>?!</code></td><td>负先行断言-排除</td></tr><tr><td align="left"><code>?&#x3C;=</code></td><td>正后发断言-存在</td></tr><tr><td align="left"><code>?&#x3C;!</code></td><td>负后发断言-排除</td></tr></tbody></table>
<p>零宽度断言 允许您在主模式之前（向后看）或之后（lookahead）匹配一个组，而不会将其包含在结果中。</p>
</div></div></div><div class="wrap h3body-not-exist col-span-2"><div class="wrap-header h3wrap"><h3 id="posix-字符类"><a aria-hidden="true" tabindex="-1" href="#posix-字符类"><span class="icon icon-link"></span></a>POSIX 字符类</h3><div class="wrap-body">
<!--rehype:wrap-class=col-span-2-->


























































































<table class="show-header"><thead><tr><th align="left">字符类</th><th>如同</th><th>意义</th></tr></thead><tbody><tr><td align="left"><code>[[:alnum:]]</code></td><td><code>[0-9A-Za-z]</code></td><td>字母和数字</td></tr><tr><td align="left"><code>[[:alpha:]]</code></td><td><code>[A-Za-z]</code></td><td>字母</td></tr><tr><td align="left"><code>[[:ascii:]]</code></td><td><code>[\x00-\x7F]</code></td><td>ASCII 码 0-127</td></tr><tr><td align="left"><code>[[:blank:]]</code></td><td><code>[\t ]</code></td><td>仅空格或制表符</td></tr><tr><td align="left"><code>[[:cntrl:]]</code></td><td><code>[\x00-\x1F\x7F]</code></td><td>控制字符</td></tr><tr><td align="left"><code>[[:digit:]]</code></td><td><code>[0-9]</code></td><td>十进制数字</td></tr><tr><td align="left"><code>[[:graph:]]</code></td><td><code>[[:alnum:][:punct:]]</code></td><td>可见字符（不是空格）</td></tr><tr><td align="left"><code>[[:lower:]]</code></td><td><code>[a-z]</code></td><td>小写字母</td></tr><tr><td align="left"><code>[[:print:]]</code></td><td><code>[ -~] == [ [:graph:]]</code></td><td>可见字符</td></tr><tr><td align="left"><code>[[:punct:]]</code></td><td><code>[!"#$%&#x26;’()*+,-./:;&#x3C;=>?@[]^_`{|}~]</code></td><td>可见标点符号</td></tr><tr><td align="left"><code>[[:space:]]</code></td><td><code>[\t\n\v\f\r ]</code></td><td>空白</td></tr><tr><td align="left"><code>[[:upper:]]</code></td><td><code>[A-Z]</code></td><td>大写字母</td></tr><tr><td align="left"><code>[[:word:]]</code></td><td><code>[0-9A-Za-z_]</code></td><td>单词字符</td></tr><tr><td align="left"><code>[[:xdigit:]]</code></td><td><code>[0-9A-Fa-f]</code></td><td>十六进制数字</td></tr><tr><td align="left"><code>[[:&#x3C;:]]</code></td><td><code>[\b(?=\w)]</code></td><td>词的开头</td></tr><tr><td align="left"><code>[[:>:]]</code></td><td><code>[\b(?&#x3C;=\w)]</code></td><td>词尾</td></tr></tbody></table>
<!--rehype:className=show-header-->
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="控制动词"><a aria-hidden="true" tabindex="-1" href="#控制动词"><span class="icon icon-link"></span></a>控制动词</h3><div class="wrap-body">









































































































<table><thead><tr><th align="left">:-</th><th>-</th></tr></thead><tbody><tr><td align="left"><code>(*ACCEPT)</code></td><td>控制动词</td></tr><tr><td align="left"><code>(*FAIL)</code></td><td>控制动词</td></tr><tr><td align="left"><code>(*MARK:NAME)</code></td><td>控制动词</td></tr><tr><td align="left"><code>(*COMMIT)</code></td><td>控制动词</td></tr><tr><td align="left"><code>(*PRUNE)</code></td><td>控制动词</td></tr><tr><td align="left"><code>(*SKIP)</code></td><td>控制动词</td></tr><tr><td align="left"><code>(*THEN)</code></td><td>控制动词</td></tr><tr><td align="left"><code>(*UTF)</code></td><td>图案修饰符</td></tr><tr><td align="left"><code>(*UTF8)</code></td><td>图案修饰符</td></tr><tr><td align="left"><code>(*UTF16)</code></td><td>图案修饰符</td></tr><tr><td align="left"><code>(*UTF32)</code></td><td>图案修饰符</td></tr><tr><td align="left"><code>(*UCP)</code></td><td>图案修饰符</td></tr><tr><td align="left"><code>(*CR)</code></td><td>换行修饰符</td></tr><tr><td align="left"><code>(*LF)</code></td><td>换行修饰符</td></tr><tr><td align="left"><code>(*CRLF)</code></td><td>换行修饰符</td></tr><tr><td align="left"><code>(*ANYCRLF)</code></td><td>换行修饰符</td></tr><tr><td align="left"><code>(*ANY)</code></td><td>换行修饰符</td></tr><tr><td align="left"><code>\R</code></td><td>换行修饰符</td></tr><tr><td align="left"><code>(*BSR_ANYCRLF)</code></td><td>换行修饰符</td></tr><tr><td align="left"><code>(*BSR_UNICODE)</code></td><td>换行修饰符</td></tr><tr><td align="left"><code>(*LIMIT_MATCH=x)</code></td><td>正则表达式引擎修饰符</td></tr><tr><td align="left"><code>(*LIMIT_RECURSION=d)</code></td><td>正则表达式引擎修饰符</td></tr><tr><td align="left"><code>(*NO_AUTO_POSSESS)</code></td><td>正则表达式引擎修饰符</td></tr><tr><td align="left"><code>(*NO_START_OPT)</code></td><td>正则表达式引擎修饰符</td></tr></tbody></table>
</div></div></div></div></div><div class="wrap h2body-exist"><div class="wrap-header h2wrap"><h2 id="正则表达式示例"><a aria-hidden="true" tabindex="-1" href="#正则表达式示例"><span class="icon icon-link"></span></a>正则表达式示例</h2><div class="wrap-body">
</div></div><div class="h2wrap-body"><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="字符串"><a aria-hidden="true" tabindex="-1" href="#字符串"><span class="icon icon-link"></span></a>字符串</h3><div class="wrap-body">

































<table><thead><tr><th align="left">范例</th><th>说明</th></tr></thead><tbody><tr><td align="left"><code>ring</code></td><td>匹配 <yel>ring</yel> sp<yel>ring</yel>board 等。</td></tr><tr><td align="left"><code>.</code></td><td>匹配 <yel>a</yel>、<yel>9</yel>、<yel>+</yel> 等。</td></tr><tr><td align="left"><code>h.o</code></td><td>匹配 <yel>hoo</yel>、<yel>h2o</yel>、<yel>h/o</yel> 等。</td></tr><tr><td align="left"><code>ring\?</code></td><td>匹配 <yel>ring?</yel></td></tr><tr><td align="left"><code>\(quiet\)</code></td><td>匹配<yel>（安静）</yel></td></tr><tr><td align="left"><code>c:\\windows</code></td><td>匹配 <yel>c:\windows</yel></td></tr></tbody></table>
<p>使用 <code>\</code> 搜索这些特殊字符：<br> <code>[ \ ^ $ . | ? * + ( ) { }</code></p>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="速记类"><a aria-hidden="true" tabindex="-1" href="#速记类"><span class="icon icon-link"></span></a>速记类</h3><div class="wrap-body">

































<table><thead><tr><th align="left">范例</th><th>说明</th></tr></thead><tbody><tr><td align="left"><code>\w</code></td><td>“单词”字符 <br> <em>(字母、数字或下划线)</em></td></tr><tr><td align="left"><code>\d</code></td><td>数字</td></tr><tr><td align="left"><code>\s</code></td><td>空格 <br> <em>(空格、制表符、vtab、换行符)</em></td></tr><tr><td align="left"><code>\W, \D, or \S</code></td><td>不是单词、数字或空格</td></tr><tr><td align="left"><code>[\D\S]</code></td><td>表示不是数字或空格，两者都匹配</td></tr><tr><td align="left"><code>[^\d\s]</code></td><td>禁止数字和空格</td></tr></tbody></table>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="出现次数"><a aria-hidden="true" tabindex="-1" href="#出现次数"><span class="icon icon-link"></span></a>出现次数</h3><div class="wrap-body">





























<table><thead><tr><th align="left">范例</th><th>说明</th></tr></thead><tbody><tr><td align="left"><code>colou?r</code></td><td>匹配 <yel>color</yel> 或 <yel>color</yel></td></tr><tr><td align="left"><code>[BW]ill[ieamy's]*</code></td><td>匹配 <yel>Bill</yel>、<yel>Willy</yel>、<yel>William's</yel> 等。</td></tr><tr><td align="left"><code>[a-zA-Z]+</code></td><td>匹配 1 个或多个字母</td></tr><tr><td align="left"><code>\d{3}-\d{2}-\d{4}</code></td><td>匹配 SSN</td></tr><tr><td align="left"><code>[a-z]\w{1,7}</code></td><td>匹配 UW NetID</td></tr></tbody></table>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="备择方案"><a aria-hidden="true" tabindex="-1" href="#备择方案"><span class="icon icon-link"></span></a>备择方案</h3><div class="wrap-body">





















<table><thead><tr><th align="left">范例</th><th>说明</th></tr></thead><tbody><tr><td align="left"><code>cat|dog</code></td><td>匹配 <yel>cat</yel> 或 <yel>dog</yel></td></tr><tr><td align="left"><code>id|identity</code></td><td>匹配 <yel>id</yel> 或 <yel>id</yel>entity</td></tr><tr><td align="left"><code>identity|id</code></td><td>匹配 <yel>id</yel> 或 <yel>identity</yel></td></tr></tbody></table>
<p>当替代品重叠时，命令从长到短</p>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="字符类-1"><a aria-hidden="true" tabindex="-1" href="#字符类-1"><span class="icon icon-link"></span></a>字符类</h3><div class="wrap-body">





























<table><thead><tr><th align="left">范例</th><th>说明</th></tr></thead><tbody><tr><td align="left"><code>[aeiou]</code></td><td>匹配任何元音</td></tr><tr><td align="left"><code>[^aeiou]</code></td><td>匹配一个非元音</td></tr><tr><td align="left"><code>r[iau]ng</code></td><td>匹配<yel>ring</yel>、w<yel>rang</yel>le、sp<yel>rung</yel>等。</td></tr><tr><td align="left"><code>gr[ae]y</code></td><td>匹配 <yel>gray</yel> 或 <yel>grey</yel></td></tr><tr><td align="left"><code>[a-zA-Z0-9]</code></td><td>匹配任何字母或数字</td></tr></tbody></table>
<p>在 <code>[ ]</code> 中总是转义 <code>. \ ]</code> 有时是 <code>^ - .</code></p>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="贪婪与懒惰"><a aria-hidden="true" tabindex="-1" href="#贪婪与懒惰"><span class="icon icon-link"></span></a>贪婪与懒惰</h3><div class="wrap-body">

























<table><thead><tr><th align="left">范例</th><th>说明</th></tr></thead><tbody><tr><td align="left"><code>*  + {n,}</code><br><em>greedy</em></td><td>尽可能匹配</td></tr><tr><td align="left"><code>&#x3C;.+></code></td><td>在 <yel>&#x3C;b>bold&#x3C;/b></yel> 中找到 1 个大匹配项</td></tr><tr><td align="left"><code>*?  +? {n,}?</code><br><em>lazy</em></td><td>尽可能少匹配</td></tr><tr><td align="left"><code>&#x3C;.+?></code></td><td>在 &#x3C;<yel>b</yel>>bold&#x3C;<yel>/b</yel>> 中找到 2 个匹配项</td></tr></tbody></table>
</div></div></div><div class="wrap h3body-not-exist col-span-2"><div class="wrap-header h3wrap"><h3 id="范围"><a aria-hidden="true" tabindex="-1" href="#范围"><span class="icon icon-link"></span></a>范围</h3><div class="wrap-body">
<!--rehype:wrap-class=col-span-2-->





















































<table><thead><tr><th align="left">范例</th><th>说明</th></tr></thead><tbody><tr><td align="left"><code>\b</code></td><td>“单词”边缘（非“单词”字符旁边）</td></tr><tr><td align="left"><code>\bring</code></td><td>单词以“ring”开头，例如 <yel>ringtone</yel></td></tr><tr><td align="left"><code>ring\b</code></td><td>单词以“ring”结尾，例如 <yel>spring</yel></td></tr><tr><td align="left"><code>\b9\b</code></td><td>匹配单个数字 <yel>9</yel>，而不是 19、91、99 等。</td></tr><tr><td align="left"><code>\b[a-zA-Z]{6}\b</code></td><td>匹配 6 个字母的单词</td></tr><tr><td align="left"><code>\B</code></td><td>不是字边</td></tr><tr><td align="left"><code>\Bring\B</code></td><td>匹配 <yel>springs</yel> 和 <yel>wringer</yel></td></tr><tr><td align="left"><code>^\d*$</code></td><td>整个字符串必须是数字</td></tr><tr><td align="left"><code>^[a-zA-Z]{4,20}$</code></td><td>字符串必须有 4-20 个字母</td></tr><tr><td align="left"><code>^[A-Z]</code></td><td>字符串必须以大写字母开头</td></tr><tr><td align="left"><code>[\.!?"')]$</code></td><td>字符串必须以终端标点结尾</td></tr></tbody></table>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="修饰"><a aria-hidden="true" tabindex="-1" href="#修饰"><span class="icon icon-link"></span></a>修饰</h3><div class="wrap-body">

































<table><thead><tr><th align="left">范例</th><th>说明</th></tr></thead><tbody><tr><td align="left"><code>(?i)</code>[a-z]*<code>(?-i)</code></td><td>忽略大小写开/关</td></tr><tr><td align="left"><code>(?s)</code>.*<code>(?-s)</code></td><td>匹配多行（导致 . 匹配换行符）</td></tr><tr><td align="left"><code>(?m)</code>^.*;$<code>(?-m)</code></td><td><yel>^</yel> &#x26; <yel>$</yel> 匹配行不是整个字符串</td></tr><tr><td align="left"><code>(?x)</code></td><td>#free-spacing 模式，此 EOL 注释被忽略</td></tr><tr><td align="left"><code>(?-x)</code></td><td>自由空间模式关闭</td></tr><tr><td align="left">/regex/<code>ismx</code></td><td>修改整个字符串的模式</td></tr></tbody></table>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="组"><a aria-hidden="true" tabindex="-1" href="#组"><span class="icon icon-link"></span></a>组</h3><div class="wrap-body">

















<table><thead><tr><th align="left">范例</th><th>说明</th></tr></thead><tbody><tr><td align="left"><code>(in|out)put</code></td><td>匹配 <yel>input</yel> 或 <yel>output</yel></td></tr><tr><td align="left"><code>\d{5}(-\d{4})?</code></td><td>美国邮政编码 <em>(“+ 4”可选)</em></td></tr></tbody></table>
<p>如果组后匹配失败，解析器会尝试每个替代方案。
<br>
可能导致灾难性的回溯。</p>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="反向引用"><a aria-hidden="true" tabindex="-1" href="#反向引用"><span class="icon icon-link"></span></a>反向引用</h3><div class="wrap-body">





















<table><thead><tr><th align="left">范例</th><th>说明</th></tr></thead><tbody><tr><td align="left"><code>(to) (be) or not \1 \2</code></td><td>匹配 <yel>to be or not to be</yel></td></tr><tr><td align="left"><code>([^\s])\1{2}</code></td><td>匹配非空格，然后再相同两次   <yel>aaa</yel>, <yel>...</yel></td></tr><tr><td align="left"><code>\b(\w+)\s+\1\b</code></td><td>匹配双字</td></tr></tbody></table>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="非捕获组"><a aria-hidden="true" tabindex="-1" href="#非捕获组"><span class="icon icon-link"></span></a>非捕获组</h3><div class="wrap-body">













<table><thead><tr><th align="left">范例</th><th>说明</th></tr></thead><tbody><tr><td align="left"><code>on(?:click|load)</code></td><td>快于：<code>on(click|load)</code></td></tr></tbody></table>
<p>尽可能使用非捕获或原子组</p>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="原子组"><a aria-hidden="true" tabindex="-1" href="#原子组"><span class="icon icon-link"></span></a>原子组</h3><div class="wrap-body">

















<table><thead><tr><th align="left">范例</th><th>说明</th></tr></thead><tbody><tr><td align="left"><code>(?>red|green|blue)</code></td><td>比非捕获更快</td></tr><tr><td align="left"><code>(?>id|identity)\b</code></td><td>匹配 <yel>id</yel>，但不匹配 <yel>id</yel>entity</td></tr></tbody></table>
<p>"id" 匹配，但 <code>\b</code> 在原子组之后失败，
解析器不会回溯到组以重试“身份”</p>
<p>如果替代品重叠，请从长到短命令。</p>
</div></div></div><div class="wrap h3body-not-exist col-span-2 row-span-2"><div class="wrap-header h3wrap"><h3 id="零宽度断言-lookaround前后预查"><a aria-hidden="true" tabindex="-1" href="#零宽度断言-lookaround前后预查"><span class="icon icon-link"></span></a>零宽度断言 Lookaround(前后预查)</h3><div class="wrap-body">
<!--rehype:wrap-class=col-span-2 row-span-2-->













































<table><thead><tr><th align="left">范例</th><th>说明</th></tr></thead><tbody><tr><td align="left"><code>(?= )</code></td><td>向前看，如果你能提前找到</td></tr><tr><td align="left"><code>(?! )</code></td><td>向前看，如果你找不到前面</td></tr><tr><td align="left"><code>(?&#x3C;= )</code></td><td>向后看，如果你能找到后面</td></tr><tr><td align="left"><code>(?&#x3C;! )</code></td><td>向后看，如果你找不到后面</td></tr><tr><td align="left"><code>\b\w+?(?=ing\b)</code></td><td>匹配 <yel>warbl</yel>ing, <yel>str</yel>ing, <yel>fish</yel>ing, ...</td></tr><tr><td align="left"><code>\b(?!\w+ing\b)\w+\b</code></td><td>不以“ing”结尾的单词</td></tr><tr><td align="left"><code>(?&#x3C;=\bpre).*?\b</code></td><td>匹配 pre<yel>tend</yel>、pre<yel>sent</yel>、pre<yel>fix</yel>、...</td></tr><tr><td align="left"><code>\b\w{3}(?&#x3C;!pre)\w*?\b</code></td><td>不以“pre”开头的词</td></tr><tr><td align="left"><code>\b\w+(?&#x3C;!ing)\b</code></td><td>匹配不以“ing”结尾的单词</td></tr></tbody></table>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="if-then-else"><a aria-hidden="true" tabindex="-1" href="#if-then-else"><span class="icon icon-link"></span></a>If-then-else</h3><div class="wrap-body">
<p>匹配 <code>Mr.</code> 或 <code>Ms.</code> 如果单词 <code>her</code> 稍后在字符串中</p>
<pre><code class="code-highlight"><span class="code-line">M(?(?=.*?\bher\b)s|r)\.
</span></code></pre>
<p>需要环顾 <code>IF</code> 条件</p>
</div></div></div></div></div><div class="wrap h2body-exist"><div class="wrap-header h2wrap"><h2 id="基础实例"><a aria-hidden="true" tabindex="-1" href="#基础实例"><span class="icon icon-link"></span></a>基础实例</h2><div class="wrap-body">
</div></div><div class="h2wrap-body"><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="基本匹配"><a aria-hidden="true" tabindex="-1" href="#基本匹配"><span class="icon icon-link"></span></a>基本匹配</h3><div class="wrap-body">

















<table class="show-header"><thead><tr><th align="left">表达式</th><th>匹配示例</th></tr></thead><tbody><tr><td align="left"><code>the</code></td><td>The fat cat sat on <code>the</code> mat.</td></tr><tr><td align="left"><code>The</code></td><td><code>The</code> fat cat sat on the mat.</td></tr></tbody></table>
<!--rehype:className=show-header-->
<p>由字母<code>t</code>开始，接着是<code>h</code>，再接着是<code>e</code></p>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="点运算符-"><a aria-hidden="true" tabindex="-1" href="#点运算符-"><span class="icon icon-link"></span></a>点运算符 <code>.</code></h3><div class="wrap-body">













<table class="show-header"><thead><tr><th align="left">表达式</th><th>匹配示例</th></tr></thead><tbody><tr><td align="left"><code>.ar</code></td><td>The <code>car</code> <code>par</code>ked in the <code>gar</code>age.</td></tr></tbody></table>
<!--rehype:className=show-header-->
<p>表达式<code>.ar</code>匹配一个任意字符后面跟着是<code>a</code>和<code>r</code>的字符串</p>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="字符集"><a aria-hidden="true" tabindex="-1" href="#字符集"><span class="icon icon-link"></span></a>字符集</h3><div class="wrap-body">

















<table class="show-header"><thead><tr><th align="left">表达式</th><th>匹配示例</th></tr></thead><tbody><tr><td align="left"><code>.ar</code></td><td>The <code>car</code> <pur><code>par</code></pur>ked in the <code>gar</code>age.</td></tr><tr><td align="left"><code>ar[.]</code></td><td>A garage is a good place to park a c<code>ar</code>.</td></tr></tbody></table>
<!--rehype:className=show-header-->
<p>方括号的句号就表示句号。表达式 <code>ar[.]</code> 匹配 <code>ar.</code> 字符串</p>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="否定字符集"><a aria-hidden="true" tabindex="-1" href="#否定字符集"><span class="icon icon-link"></span></a>否定字符集</h3><div class="wrap-body">













<table class="show-header"><thead><tr><th align="left">表达式</th><th>匹配示例</th></tr></thead><tbody><tr><td align="left"><code>[^c]ar</code></td><td>The car <code>par</code>ked in the <code>gar</code>age.</td></tr></tbody></table>
<!--rehype:className=show-header-->
<p>表达式 <code>[^c]ar</code> 匹配一个后面跟着 <code>ar</code> 的除了<code>c</code>的任意字符。</p>
</div></div></div><div class="wrap h3body-exist row-span-2"><div class="wrap-header h3wrap"><h3 id="重复次数"><a aria-hidden="true" tabindex="-1" href="#重复次数"><span class="icon icon-link"></span></a>重复次数</h3><div class="wrap-body">
<!--rehype:wrap-class=row-span-2-->
<h4 id="-号"><a aria-hidden="true" tabindex="-1" href="#-号"><span class="icon icon-link"></span></a><code>*</code> 号</h4>

















<table><thead><tr><th align="left">表达式</th><th>匹配示例</th></tr></thead><tbody><tr><td align="left"><code>[a-z]*</code></td><td>T<code>he</code> <pur><code>car</code></pur> <code>parked</code> <pur><code>in</code></pur> <code>the</code> <pur><code>garage</code></pur> #21.</td></tr><tr><td align="left"><code>\s*cat\s*</code></td><td>The fat <code>cat</code> sat on the con<code>cat</code>enation.</td></tr></tbody></table>
<p>表达式 <code>[a-z]*</code> 匹配一个行中所有以小写字母开头的字符串。</p>
<h4 id="-号-1"><a aria-hidden="true" tabindex="-1" href="#-号-1"><span class="icon icon-link"></span></a><code>+</code> 号</h4>













<table><thead><tr><th align="left">表达式</th><th>匹配示例</th></tr></thead><tbody><tr><td align="left"><code>c.+t</code></td><td>The <code>fat cat sat on the mat</code>.</td></tr></tbody></table>
<p>表达式 <code>c.+t</code> 匹配以首字母c开头以t结尾，中间跟着至少一个字符的字符串。</p>
<h4 id="-号-2"><a aria-hidden="true" tabindex="-1" href="#-号-2"><span class="icon icon-link"></span></a><code>?</code> 号</h4>

















<table><thead><tr><th align="left">表达式</th><th>匹配示例</th></tr></thead><tbody><tr><td align="left"><code>[T]he</code></td><td><code>The</code> car is parked in the garage.</td></tr><tr><td align="left"><code>[T]?he</code></td><td><code>The</code> car is parked in t<code>he</code> garage.</td></tr></tbody></table>
<p>表达式 <code>[T]?he</code> 匹配字符串 <code>he</code> 和 <code>The</code>。</p>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="-号-3"><a aria-hidden="true" tabindex="-1" href="#-号-3"><span class="icon icon-link"></span></a><code>{}</code> 号</h3><div class="wrap-body">





















<table class="style-list-arrow"><thead><tr><th align="left">表达式</th><th>匹配示例</th></tr></thead><tbody><tr><td align="left"><code>[0-9]{2,3}</code></td><td>The number was 9.<code>999</code>7 but we rounded it off to <code>10</code>.0.</td></tr><tr><td align="left"><code>[0-9]{2,}</code></td><td>The number was 9.<code>9997</code> but we rounded it off to <code>10</code>.0.</td></tr><tr><td align="left"><code>[0-9]{3}</code></td><td>The number was 9.<code>999</code>7 but we rounded it off to 10.0.</td></tr></tbody></table>
<!--rehype:className=style-list-arrow-->
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="-特征标群"><a aria-hidden="true" tabindex="-1" href="#-特征标群"><span class="icon icon-link"></span></a><code>(...)</code> 特征标群</h3><div class="wrap-body">













<table class="show-header"><thead><tr><th align="left">表达式</th><th>匹配示例</th></tr></thead><tbody><tr><td align="left"><code>(c|g|p)ar</code></td><td>The <code>car</code> is <code>par</code>ked in the <code>gar</code>age.</td></tr></tbody></table>
<!--rehype:className=show-header-->
<p>表达式 <code>(c|g|p)ar</code> 匹配 <code>car</code> 或 <code>gar</code> 或 <code>par</code>。 注意 <code>\</code> 是在 Markdown 中为了不破坏表格转义 <code>|</code>。</p>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="-或运算符"><a aria-hidden="true" tabindex="-1" href="#-或运算符"><span class="icon icon-link"></span></a><code>|</code> 或运算符</h3><div class="wrap-body">













<table class="show-header"><thead><tr><th align="left">表达式</th><th>匹配示例</th></tr></thead><tbody><tr><td align="left"><code>(T|t)he|car</code></td><td>The car is parked in the garage.</td></tr></tbody></table>
<!--rehype:className=show-header-->
<p>表达式 <code>(T|t)he|car</code> 匹配 <code>(T|t)he</code> 或 <code>car</code></p>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="转码特殊字符"><a aria-hidden="true" tabindex="-1" href="#转码特殊字符"><span class="icon icon-link"></span></a>转码特殊字符</h3><div class="wrap-body">













<table class="show-header"><thead><tr><th align="left">表达式</th><th>匹配示例</th></tr></thead><tbody><tr><td align="left"><code>(f|c|m)at\.?</code></td><td>The <code>fat</code> <code>cat</code> sat on the <code>mat.</code></td></tr></tbody></table>
<!--rehype:className=show-header-->
<p>如果想要匹配句子中的 <code>.</code> 则要写成 <code>\.</code> 以下这个例子 <code>\.?</code> 是选择性匹配.</p>
</div></div></div><div class="wrap h3body-exist row-span-2"><div class="wrap-header h3wrap"><h3 id="锚点-1"><a aria-hidden="true" tabindex="-1" href="#锚点-1"><span class="icon icon-link"></span></a>锚点</h3><div class="wrap-body">
<!--rehype:wrap-class=row-span-2-->
<p>匹配指定开头或结尾的字符串就要使用到锚点。</p>
<h4 id="-号-符串的开头"><a aria-hidden="true" tabindex="-1" href="#-号-符串的开头"><span class="icon icon-link"></span></a><code>^</code> 号 (符串的开头)</h4>

















<table class="show-header"><thead><tr><th align="left">表达式</th><th>匹配示例</th></tr></thead><tbody><tr><td align="left"><code>(T|t)he</code></td><td><code>The</code> car is parked in <code>the</code> garage.</td></tr><tr><td align="left"><code>^(T|t)he</code></td><td><code>The</code> car is parked in the garage.</td></tr></tbody></table>
<!--rehype:className=show-header-->
<h4 id="-号-否是最后一个"><a aria-hidden="true" tabindex="-1" href="#-号-否是最后一个"><span class="icon icon-link"></span></a><code>$</code> 号 (否是最后一个)</h4>

















<table class="show-header"><thead><tr><th align="left">表达式</th><th>匹配示例</th></tr></thead><tbody><tr><td align="left"><code>(at\.)</code></td><td>The fat c<code>at.</code> s<code>at.</code> on the m<code>at.</code></td></tr><tr><td align="left"><code>(at\.)$</code></td><td>The fat cat. sat. on the m<code>at.</code></td></tr></tbody></table>
<!--rehype:className=show-header-->
</div></div></div><div class="wrap h3body-not-exist row-span-4"><div class="wrap-header h3wrap"><h3 id="简写字符集"><a aria-hidden="true" tabindex="-1" href="#简写字符集"><span class="icon icon-link"></span></a>简写字符集</h3><div class="wrap-body">
<!--rehype:wrap-class=row-span-4-->





























































<table class="show-header"><thead><tr><th align="center">简写</th><th>描述</th></tr></thead><tbody><tr><td align="center"><code>.</code></td><td>除换行符外的所有字符</td></tr><tr><td align="center"><code>\w</code></td><td>匹配所有字母数字<br>等同于 <code>[a-zA-Z0-9_]</code></td></tr><tr><td align="center"><code>\W</code></td><td>匹配所有非字母数字，即符号<br>等同于： <code>[^\w]</code></td></tr><tr><td align="center"><code>\d</code></td><td>匹配数字： <code>[0-9]</code></td></tr><tr><td align="center"><code>\D</code></td><td>匹配非数字： <code>[^\d]</code></td></tr><tr><td align="center"><code>\s</code></td><td>匹配所有空格字符<br>等同于：<code>[\t\n\f\r\p{Z}]</code></td></tr><tr><td align="center"><code>\S</code></td><td>匹配所有非空格字符： <code>[^\s]</code></td></tr><tr><td align="center"><code>\f</code></td><td>匹配一个换页符</td></tr><tr><td align="center"><code>\n</code></td><td>匹配一个换行符</td></tr><tr><td align="center"><code>\r</code></td><td>匹配一个回车符</td></tr><tr><td align="center"><code>\t</code></td><td>匹配一个制表符</td></tr><tr><td align="center"><code>\v</code></td><td>匹配一个垂直制表符</td></tr><tr><td align="center"><code>\p</code></td><td>匹配 CR/LF(等同于 <code>\r\n</code>)<br>用来匹配 DOS 行终止符</td></tr></tbody></table>
<!--rehype:className=show-header-->
<p>正则表达式提供一些常用的字符集简写。</p>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="-正先行断言"><a aria-hidden="true" tabindex="-1" href="#-正先行断言"><span class="icon icon-link"></span></a><code>?=...</code> 正先行断言</h3><div class="wrap-body">













<table class="show-header"><thead><tr><th align="left">表达式</th><th>匹配示例</th></tr></thead><tbody><tr><td align="left"><code>(T|t)he(?=\sfat)</code></td><td><code>The</code> fat cat sat on the mat.</td></tr></tbody></table>
<!--rehype:className=show-header-->
<p><code>The</code> 和 <code>the</code> 后面紧跟着 <code>(空格)fat</code>。</p>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="-负先行断言"><a aria-hidden="true" tabindex="-1" href="#-负先行断言"><span class="icon icon-link"></span></a><code>?!...</code> 负先行断言</h3><div class="wrap-body">













<table class="show-header"><thead><tr><th align="left">表达式</th><th>匹配示例</th></tr></thead><tbody><tr><td align="left"><code>(T|t)he(?!\sfat)</code></td><td>The fat cat sat on <code>the</code> mat.</td></tr></tbody></table>
<!--rehype:className=show-header-->
<p>匹配 <code>The</code> 和 <code>the</code>，且其后不跟着 <code>(空格)fat</code>。</p>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="--正后发断言"><a aria-hidden="true" tabindex="-1" href="#--正后发断言"><span class="icon icon-link"></span></a><code>?&#x3C;= ...</code> 正后发断言</h3><div class="wrap-body">













<table class="show-header"><thead><tr><th align="left">表达式</th><th>匹配示例</th></tr></thead><tbody><tr><td align="left"><code>(?&#x3C;=(T|t)he\s)(fat|mat)</code></td><td>The <code>fat</code> cat sat on the <code>mat</code>.</td></tr></tbody></table>
<!--rehype:className=show-header-->
<p>匹配 <code>fat</code> 和 <code>mat</code>，且其前跟着 <code>The</code> 或 <code>the</code>。</p>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="-负后发断言"><a aria-hidden="true" tabindex="-1" href="#-负后发断言"><span class="icon icon-link"></span></a><code>?&#x3C;!...</code> 负后发断言</h3><div class="wrap-body">













<table class="show-header"><thead><tr><th align="left">表达式</th><th>匹配示例</th></tr></thead><tbody><tr><td align="left"><code>(?&#x3C;!(T|t)he\s)(cat)</code></td><td>The cat sat on <code>cat</code>.</td></tr></tbody></table>
<!--rehype:className=show-header-->
<p>匹配 <code>cat</code>，且其前不跟着 <code>The</code> 或 <code>the</code>。</p>
</div></div></div><div class="wrap h3body-not-exist"><div class="wrap-header h3wrap"><h3 id="忽略大小写-case-insensitive"><a aria-hidden="true" tabindex="-1" href="#忽略大小写-case-insensitive"><span class="icon icon-link"></span></a>忽略大小写 (Case Insensitive)</h3><div class="wrap-body">

















<table class="show-header"><thead><tr><th align="left">表达式</th><th>匹配示例</th></tr></thead><tbody><tr><td align="left"><code>The</code></td><td>The <code>fat</code> cat sat on the mat.</td></tr><tr><td align="left"><code>/The/gi</code></td><td><code>The</code> fat cat sat on <code>the</code> mat.</td></tr></tbody></table>














