# AI 视频创作提示词与画面设计 · 通用手册

> 版本 V2.1（第二版）｜ 面向：创作者与剪辑学习者
> **工具无关**：所有法则与技法不绑定平台；模型/工具差异以一句话备注（例：可灵有独立负向栏，其他模型需写进正文）。
> 相互矛盾的知识并列呈现并注明适用条件，未擅自取舍。
> **V2.1 修正**：①4.1 每种形态新增感受性描述（感受速查表） ②新增4.4多样化路径速查坐标系 ③2.2数字人内容压缩至通用必要性 ④通用表述统一

### 如何使用本手册
- **想写好一个镜头**：第一部分（通用法则）→ 第二部分（要素词典，按需查）→ 附录速查（单镜写作流程）。
- **想知道AI视频能做什么**：第四部分4.1（形态谱系+感受速查表）凭感受选形式；4.2（风格流派）定视觉皮肤；第三部分（技法库）定实现路径。
- **陷入单一风格想破圈**：第四部分4.4（多样化路径速查坐标系）输入当前形态/风格，输出差异最大的替代方向。
- **出问题了**：第六部分（避坑排障）按症状查表，先补参考图再改提示词最后才换模型。
- **想知道各大模型的公式差异**：第五部分（框架公式汇编）横向对比。

---

## 第一部分 基础原理（通用法则）

### 1.1 权重公式：参考图 > 提示词 > 模型
- 效果做不出来时的排查顺序：① 补/换参考图 ② 改提示词 ③ 最后才换模型。别一上来就换模型重抽。
- 参考图可用来**逐个控制变量**：AI短片导演 DDOK 案例，6 秒内多角色多事件，靠逐版追加参考图（第1版1张失控 → 加道具图 → 加"磁带缠绕按键"关系图）最终全部落地。"全能参考未必要用来做分镜，可以用来做权重思考。"

### 1.2 注意力左右规则
- 提示词从左到右权重递减，**最重要的写前面**；主体放句首权重最高（可灵官方结构）。风格锁类内容则置顶成独立行（见 2.7）。

### 1.3 图生视频 vs 文生视频分工
- **图生视频铁律：静态归图片，动态归提示词**。图中已有的不要重复描述——重复描述会减少运动幅度甚至改变画面。
- 图生视频只写"主体如何运动 + 背景如何运动"，2-4 句起步；描述与图片相差过大会触发模型自行切镜头。
- 文生视频 = 图片公式（时间+主体+场景+风格）+ 视频公式（主体+动作+效果+节奏）拼接；图生视频成功率普遍高于纯文生视频，重要镜头优先 I2V。
- 静帧已负责外观时，视频 prompt 只写运动：`Only prompt the motion ("slow crane up"). If you re-describe the whole scene, the AI gets confused and the background melts.`
中文对照：只提示运动（"缓慢升摇"）。如果你重新描述整个场景，AI会混乱，背景会融化。

### 1.4 说人话原则
- AI 不挑词，只挑描述清不清晰。"画面里只出现角色的头部和肩膀"=特写；"我希望镜头微微的靠近，甚至贴近这个角色的眼睛"→AI 自动落成 zoom in/推镜头（专业术语可交给 AI 转译）。
- 说不清的效果直接问 AI："请给我××效果的提示词"/"分析这张参考图的打光思路并给出打光提示词"。但**自己会写仍是核心能力**——AI 反推再生成不会完全还原原图，AI 做得不好时你才知道怎么改。

### 1.5 迭代方法
- 同一提示词超过 3 次不达预期就换词，不死磕；崩了先**减词**再改词，从最简版起步。
- 崩哪段重跑哪段（可用片段只重做出错时间窗），不整条重来。
- 沉淀闭环：收藏好词 → 实测 → 拆成模板 → 用模板写另一主题 → 验证 → 沉淀为自己的规律。
- 质量/速度/成本三角恒成立："但凡告诉你这个模型又好又便宜又快，基本上就是假的"。

### 1.6 情绪可视化原则
- 不命名情绪，写可见行为。"He is sad" 不会渲染，下颌会；AI 不一定懂"腼腆"，但懂对应的台词+肢体动作组合。
- 通用两步法：第一步想明白这场戏要表达什么情绪；第二步用细节展示情绪——台词、动作、场景细节、声音。

### 1.7 闭环描述原则
- 一切运动写"起点 + 落幅"：`镜头缓慢向前推进，最后逐渐推进到女孩的肖像`。无落幅约束的推近会一直推到眼睛/鼻子不停（Vanity Zoom，见第六部分）。

### 1.8 分层工程
- 复杂项目四文档分层，各管一事：剧本（发生了什么）→ 视觉设定（连续性锁）→ 分镜（运镜动机+起点+终点）→ 视频提示词（只写起点到终点间模型要执行的动作）。
- 长片先求稳定再求花哨：先把最小可行字段跑通，再逐步加料。
- 交叉校验思想：用脚本核对文档引用一致性（时长、人物覆盖），如"分镜时长 2 秒与视频提示词 3 秒不一致"即报错——提示词只能原样照抄已接受的镜头时长。

### 1.9 评估任何新模型的四件事
- 时长上限 / 参考素材数 / 表演与理解力 / 分辨率。看它改变的不是数值而是**创作边界**（例：时长 15s→30s 让完整小故事免拼接；素材 15→50 使多角色长片可做；分辨率不足会让 AI+实拍合成露馅）。

### 1.10 先音频后视频工作律
- 有口播/台词的项目先做音频（TTS 或试镜），试听核对读音后再驱动视频——读音错误在音频层重做近乎零成本，视频生成后再改代价极高。
- 数字类信息（价格/编号/统计数）一律后期字幕层叠加，不写进生成提示词——AI 可能生成错误数字且难修改。

---

## 第二部分 提示词要素词典（怎么写）

### 2.1 主体描述（人与物）
- **定义**：主体=画面着重表现的对象（人/动物/植物/物品），写法=外观+服饰+状态，置句首。
- **人物五段式**："XXX人+XXX地+做XXX事，背景是XXX，五官精致，写实风格，丰富细节，最佳画质"。
- **三合一颗粒度**：`a lone grizzled fisherman mid-60s in a faded yellow slicker jacket, face weathered and focused`
中文对照：一位孤独沧桑的渔夫，六十多岁，穿着褪色的黄色雨衣，面容风霜满布且专注——年龄+衣着磨损+神态。
- **材料精确到工艺**：`polished concrete floor / brushed aluminum curtain wall / white oak veneer ceiling`
中文对照：抛光混凝土地板/拉丝铝幕墙/白橡木贴面天花板。"Vague descriptions produce vague results. Specificity is everything."
中文对照：模糊的描述产生模糊的结果。精确性是一切。
- **确定性物品必须给参考图**：只写字"枪"，模型可能给 AK47；给不同角度示意图+特写图锁定。
- **未见部分要锚定**：模型看不见的部分不写就瞎编——`the orc has no armor on the right shoulder, dark blue geometric tribal tattoos on the orc's shoulder`
中文对照：兽人右肩没有护甲，兽人肩膀上有深蓝色几何部落纹身。
- **产品一致性锁**：`Preserve the exact Kia Seltos identity, champagne-gold exterior color, front grille design, LED lighting signatures, alloy wheels, body proportions...throughout every shot.`
中文对照：在每个镜头中保持Kia Seltos的精确身份、香槟金外观色、前格栅设计、LED灯光特征、合金轮毂、车身比例。
- **多主体接触交互四段法**：① 分别锁定两个独立参考 → ② 明确设定接触点 → ③ 提示物理效果（`the rim of the cup rests on the saucer without deforming`
中文对照：杯沿搁在碟子上不变形）→ ④ 生成并精修。防融合补 `no merging, no blending, objects remain distinct`
中文对照：不融合，不混合，物体保持独立。
- **物体变形写物理过程**，不写 "change A to B"，写"爆开→漂浮→组装"三段；运动句刻意极简。
- 通用避坑：数字/数量词经常失效；新模型自带世界常识，不必再写"如何握住杯子"类物理常识说明（旧经验已过时）。

### 2.2 人物一致性与真实感
**角色资产化（一致性不靠文字靠参考图）**
- 角色参考包标准：三格 full body front + back + close-up，**背景灰色不用白色**（白底过曝人物）；抹掉全身视图上的脸（多张小脸被模型平均化导致 character drift）。
- **不要用文字重新描述角色**：每次写脸都给模型一次重新解释的机会；上传 sheet 后 tag by name；跨镜一致=每镜复用完全相同 reference set。
- CHAR 四层控制：身份ID（脸，最硬锁死）→ 外观资产（服装可换装：`outfit swap while keeping his facial identity locked in`）→ 画面风格 → 镜头语言。角色参考包=主图+表情库+不同角度+关键道具 4-6 张。
- 分镜表必写"参考图/资产 ID"字段，没有它=高概率变脸；锁面短语跨镜原样复用（如 `pine-green lapel service jacket`）。
- **变脸分级修正**：
 - 情形 A（脸完全变成另一个人）：`保持人物与参考图完全一致，面部特征百分百相同`（"百分百"强制模型对比像素差异）。
 - 情形 B（轻微漂移，源于模型审美优化）：`保持相同的骨骼结构，眼距和下颚几何形状，禁止美化，禁止改变年龄`。
 - ⚠️ 矛盾：同源称"平时**不需要**写保持人物一致性（模型默认维持）"——适用条件：默认良好时不写；崩了按 A/B 分级补写。
- 数字人三视图制作、多角度定妆图法、casting 流等专项参数详见 **→ 3.4 一致性系**。

**防AI感三律（反直觉铁律）**
1. **写真实相机+镜头型号**，不写 "cinematic feel"：`Simulated IMAX film camera + Panavision C-series lens (35mm focal, f/4 aperture)`
中文对照：模拟IMAX电影摄影机+Panavision C系列镜头（35mm焦距，f/4光圈）——训练数据把精确字符串绑定到真实电影美学。
2. **描述不完美**：`Battle-damaged armor, paint worn off, oil in the joints, minor facial blemishes preserved`
中文对照：战损装甲，油漆剥落，关节处有油渍，保留细微面部瑕疵。完美=假。核心哲学：`stop asking for perfect.. prompt the mistakes a real person makes with a phone`
中文对照：别追求完美...提示真人用手机拍摄时会犯的错误。
3. **结尾留白**：`No dialogue. No explosion. No light burst. Just a figure standing in the smoke.`
中文对照：没有对话。没有爆炸。没有光爆。只有一个人影站在烟雾中。

**皮肤/镜头瑕疵词**
- 毛孔级+眼神光：`visible pores, the fine baby hairs catching light along the jaw, and above everything else, wet eyes with catchlights`
中文对照：可见毛孔，下颌边缘细小汗毛捕捉光线，最重要的是有眼神光的湿润双眼——catchlights（眼神光）是活人感关键。
- 主动要求镜头瑕疵：`anamorphic flares + subtle color fringing + fine 35mm grain`
中文对照：变形镜头光晕+微妙色边+精细35mm颗粒；UGC 反电影感：`slightly soft image, a little digital noise, deep focus, no colour grading`
中文对照：略微柔和的画面，少许数码噪点，深焦，无调色。
- 物理与重量：`the cushion sinks deep under him and a puff of dust jumps into the lamplight right on impact`
中文对照：坐垫在他身下深深凹陷，一团灰尘在冲击时跃入灯光中——漂浮道具和不着地的脚是最响的 AI 信号。
- 光源纪律：禁写 `cinematic lighting`（无物理可解信息），只写场景内实用光源 实用光源（practical sources）：`a lantern / a television glowing in a dark room`
中文对照：一盏灯笼/一台在暗室中发光的电视——光在参与表演。

### 2.3 动作与表演
- **动作指令化**：写清主语——写 `蒙娜丽莎用手戴上墨镜`，不写"戴墨镜"；**没写的动作不会发生**。
- **情绪外化**：写 `His jaw is set, his breathing is short through his nose`
中文对照：他下颌紧绷，通过鼻子短促呼吸，不写 `tense`（紧张）。
- **每镜三个物理事实**：一个环境压力 + 一个身体微动作 + 一个声音锚点或视觉母题。
- **复杂动作拆步**（把 AI 当成没有想象力的执行者）：`主体身体略微偏向右后方` → `由正面转换为背面` → `逐渐向画面深处移动` + 质量词 `动作连贯自然`。
- **表演三轴**（控制幅度）：内在压力/外在幅度/自我控制。压力5+幅度1+控制5 → 只写"视线短暂失焦、下颌轻微收紧"，不写大哭。
- **身体部位传导链**：眼神先变→眼睑眉间→嘴角→下颌→呼吸→肩膀→双手→声音。违反顺序="五官同时变化"的AI味。
- **表演因果链**（微剧情用）：触发事件→目标→障碍→保护策略→情绪泄露→顶点→余韵；写动作前先答五问：刚看见/听见什么？想得到什么？什么在阻止？用什么保护自己？什么话不能说？
- **场景公式**：`desire + obstacle + geometry + gaze + rhythm`
中文对照：欲望+障碍+几何+凝视+节奏。
- 微表情密度标尺：`pupils slightly dilated, his Adam's apple gently rolls... fingertips tremble slightly`
中文对照：瞳孔微微扩张，喉结轻微滚动...指尖轻微颤抖 + 对白停顿 `natural short pauses between 200-400 milliseconds`
中文对照：200-400毫秒的自然短暂停顿。
- 背对镜头说话可行：描述清楚 + `以画外音的方式说道`。

### 2.4 运镜（完整词库含实测有效性）
**运镜四要素句式**：名字+时长+速度+方向。或写具体数值：`a rise up the building at exactly six meters per second, locked and shake free`
中文对照：以精确的每秒六米速度沿建筑上升，锁定无抖动——"That number is doing all the heavy lifting."
中文对照："那个数字承担了所有重活。"

**30 种运镜全表**

| 类别 | 运镜 | 何时用 |
|---|---|
| 三脚架类 | static shot | 锁定注意力、张力内敛、自然剪辑点 |
| | pan / whip pan | 扫视/揭示；whip pan 用于爆点切换 |
| | tilt up / tilt down | 仰拍显宏伟弱小 / 俯视交代 |
| | zoom slow / fast / crash zoom | 蓄势聚焦 / 突然发现 / 震惊强调 |
| 物理移动类 | dolly in / dolly out | 亲密逼近 / 被抛下的孤独 |
| | truck / slider | 跟走旁观 / 桌面横扫 |
| | pedestal up/down | 垂直升降，脚到头介绍人物 |
| | push past / pass by | 越过前景障碍进入房间，偷拍感 |
| | arc / orbit | 背后绕到正面 / 360°环绕（英雄感） |
| 跟主体类 | tracking / reverse tracking | 同速跟随 / 倒退跟拍锁表情 |
| | follow OTS / low tracking | 强迫观众用角色视角 / 低机位追脚 |
| | vehicle tracking / chase shot | 高速载具 / 粗暴追赶 |
| 人味类 | handheld / snorricam | 轻晃真实感 / 绑胸口背景剧震脸不动 |
| 高空类 | crane / drone / FPV / helicopter | 揭示全景 / 穿窗过门 / 高速穿梭 / 大场面开场 |
| 特殊类 | POV / tilt shift / infinite zoom / time lapse | 镜头即眼睛 / 真景变微缩 / 梦境层递 / 流光变化 |
| 焦点类 | rack focus / dolly zoom | 前后景切焦 / 主体不变背景拉伸 |
| 剪辑语法 | match cut / J-cut | 同形状动作衔接 / 声音先于画面切 |

**基础运镜逐条写法（H3 实测，原生即可）**
- 摇镜以**摄像机**为轴，写 `机位摇过 45 度`；变焦推拉 vs 机身推拉是两种镜头——变焦=机位不动画面缩放，机身推拉=机位真实前走/后退。
- 横移写起始取景+**落幅**：`人向左走机位同步左移，末尾主体去到画面右侧`。
- 弧形横移：`机位沿弧形绕行 90 度，全程（人物）站立原地`。
- 摇臂三段：仰视→平视→俯视；写 `机位升到高位，全程往下俯摇`——只写"升到高位"会拍到屋顶。
- 固定镜头：`镜头位置保持不动，构图稳定，画面无明显抖动`；手持感：`强烈的手持晃动背后的跟随`。
- 360°环绕用**拆段法**：`镜头从正前方启动，顺时针环绕女孩 180 度至女孩的背面，继续顺时针环绕 180 度回到正前方`。
- 揭示运镜三要素：一开始是什么 → 镜头如何移动 → 末帧落在什么。
- 视差/遮挡：说清遮挡物方位——"木桩在近景处、在机位和主体之间"，物品就不会跑到人前面。

**中文运镜体系与括号语法**
- 可灵：6 基本运镜（水平/垂直运镜、推进/拉远、垂直摇镜、旋转摇镜、水平摇镜）+4 大师运镜（左旋推进、右旋推进、推进上移、下移拉远）。
- 即梦 8 基础运镜：静态镜头/推/拉/摇/移/跟/环绕/主观；组合技（移+推）可增强叙事层次。
- 海螺 Director 括号语法：`[左摇][推进][变焦拉远]` 等方括号词内嵌 prompt；同时发生 `[左摇,右移]`，先后发生 `xxx[左摇]，xxx[右移]`。

**写法要点与实测有效性**
- 变焦≠推移：写明 `the camera never moves, only the field of view tightens`
中文对照：相机不动，只是视野收窄。FOV 用度数：`at 84° the frame swallows the whole room, at 29 it leans in close enough to feel someone breathe`
中文对照：84度时画面吞没整个房间，29度时贴近到能感受到呼吸。
- handheld 单独写=地震；写摄影师身体行为：`the camera rises and dips with their footsteps, then drifts a few degrees off level before gently correcting itself`
中文对照：相机随脚步起伏，偏离水平几度后轻柔修正。
- 复合运镜（推+摇）必须有锚点：落幅写实（"落在胸口以上景别"不能推到脸上）。
- 甩镜三要素：主体A → 极速甩过 → 落在主体B；两物需大致水平（"甩向太阳"失败→`向右上方甩向太阳`）。
- 速度梯度：轻微 gently → 缓慢 slowly（默认）→ 匀速 steadily → 快速 rapidly（慎用）→ 剧烈 aggressively（禁用）。要速度感用物理细节（衣角飘动、背景拉丝）代替"快速"。
- FPV 万能模板：`A dynamic high speed FPV fly through shot weaving and tightly cutting corners through (your scene description), motion blur, lens glare.`
中文对照：高速FPV穿越镜头，在（你的场景描述）中穿梭急转弯，带运动模糊和镜头眩光。
- 机位物理写法：`Camera 8 cm above the pavement, 18mm-style perspective, shoe dominating the foreground, skyscrapers converging behind.`
中文对照：相机离地面8厘米，18mm广角透视，鞋子占据前景，摩天楼在后方汇聚。
- 每镜一个连续 take 原则：描述顺序=镜头到达顺序；H3 中全环绕/荷兰角/快速变焦/希区柯克变焦 4 类原生成功率低，需改写拆解兜底。

### 2.5 景别与构图
- 景别七级：大远景/远景/全景/中景/近景/特写/超大特写；**相邻镜头景别必须错开**（全景接特写），全同景别=画面闷。
- 焦段语感：35mm=自然日常 / 85mm=人像压缩 / wide 拉伸空间 / long 压扁；`F4 全景清晰 / F1.4 背景全糊；50mm 自然无畸变；anamorphic 出宽银幕感`。
- 角度语义：平视=客观 / 低角度仰拍=宏伟敬畏 / 高角度俯拍=叙事者视角。
- 深度层级：明确前景/中景/背景（"前景枫枝、中景水瀑、背景楼栋"）。
- 构图词：对称构图、引导线构图、九宫格构图、画面留白、主体突出。
- 构图负向经验："video models really love the middle"（视频模型偏爱居中）——非中心构图需把偏离指令连写多遍强调。

### 2.6 光线氛围词库
- **时间=最便捷的光影写法**：不懂布光就写时间——"傍晚"一步拿到夕阳暖光；进阶写方向（"主光从左上方打来"）。
- **方向+色温+材质反应**：`Warm sodium light from camera-right, cool ambient rain fill, hard reflections across wet asphalt.`
中文对照：相机右侧暖色钠光，冷色环境雨幕补光，湿沥青上的硬质反光。
- **Kelvin 色温法**："Warm lighting has fifty interpretations. 3200K tungsten has two."
中文对照："暖光有五十种解读，3200K钨丝灯只有两种。"——3200K=钨丝灯暖调；5600K=日光；6500K=阴天冷调。角色化复用字符串跨镜头粘贴：`split-toned amber (#D89B5A) and emerald (#2E5F4A), 3200K key`。
- **三点光标准位**：key 主光约 45° 侧+45° 上；fill 补光对侧强度 1/2-1/3；rim 背光分离主体与背景。
- **单光源原则**：`Practical motivated light only, one source at a time.`
中文对照：仅用场景内实用光源，每次一个光源。（另路：多角度立体光也可成立——适用条件：单光源=真实感优先；轮廓补光=质感优先）
- 光型词（提示词词库）：hard light（硬光）/ soft natural light（自然柔光）/ gentle window lighting（窗光）/ volumetric light（体积光）/ lens flares（镜头光晕）/ neon（霓虹）/ practicals（场景内实用光源）。
- 时段词：golden hour（日出后/日落前暖光）、blue hour（日落后冷蓝调）、magic hour。
- 高对比硬光：`a hard white light straight down from overhead with deep crushed blacks and high contrast`
中文对照：正上方硬白光，深黑压暗，高对比度。
- 平光/棚拍光：`Flat frontal fill lighting directly from camera position - even, soft, shadowless... Neutral white light temperature.`
中文对照：相机位置正面平光补光——均匀、柔和、无阴影...中性白光色温。
- 动态光效词：流光溢彩、光斑移动、闪烁灯光；光线参与叙事时写光的行为而非名字。
- 中文词库：晨光、夕阳、丁达尔效应、逆光剪影、体积光、黄金时段、蓝调时刻、霓虹灯效、烛光、月光、氛围光照。
- 图生视频防AI重打光：写 `light consistent with source image`（中文对照：与源图光线一致）+ 具体方向/色温词。

### 2.7 风格质感词库
- **介质锁（最高频技巧）**：介质名+年代+画幅+缺陷，模型自动补UI和质感——bodycam / CCTV / 手机前摄UGC / VHS-DV（`raw handheld early-2000s DV footage: shaky framing, autofocus hunting, exposure shifts, mild CCD noise`
中文对照：2000年代初DV手持素材：摇摇晃晃，自动对焦寻焦，曝光漂移，轻微CCD噪点）/ `old, shaky handheld camera, low quality recording with old timestamp; Year and style: year 2007`
中文对照：老式手持相机，低质量录像带旧时间戳；年份风格：2007年。
- **画风锁置顶+双重否定收尾**：`rendered entirely in the exact same dark surrealist oil-on-canvas style. ... Never photorealistic, never clean CGI.`
中文对照：完全以相同的黑暗超现实油画风格渲染...绝不写实，绝不干净的CGI。
- **单色规则**（防风格漂移）：`black and white, the gold cross is the only color`
中文对照：黑白画面，金色十字架是唯一的颜色。
- **风格锚收尾**：`architectural photography style, Tadao Ando influenced minimalism`
中文对照：建筑摄影风格，受安藤忠雄影响的极简主义——显著提升跨代视觉连贯。
- **风格+调色+光比打包**：`ultra-realistic, cinematic portrait + teal and orange color grade with some harsh rim lighting`
中文对照：超写实电影人像+青橙色调配一些硬质轮廓光。
- **时代/地域风格行**：`90s Hong Kong Art Cinema style, retro film feel, high ISO grain, ambiguous yellow-green tint`
中文对照：90年代香港艺术电影风格，复古胶片感，高ISO颗粒，暧昧的黄绿色调；名导参照：`Christopher Nolan-style cinematic production using actual 70mm IMAX cameras`
中文对照：克里斯托弗·诺兰风格电影制作，使用真实70mm IMAX摄影机、`Robert Eggers or Andrei Tarkovsky film - grounded, tactile, lived-in`
中文对照：罗伯特·艾格斯或安德烈·塔可夫斯基电影——脚踏实地，有触感，有生活气息。
- **风格具体化原则**：写"动漫风格"不如写"吉卜力动画风格，色彩柔和，线条细腻，画面有轻微颗粒感"。
- **质感六问法**：像导演一样告诉AI——什么光、什么颜色、什么材质、什么空气、什么镜头、什么情绪；反对堆砌"高级/电影感/8K"空洞词。
- **材质模板**：PBR——`使用PBR物理材质，都市中的金属、玻璃、混凝土具有真实的光影`；哑光——`所有物体为黏土材质，表面柔软哑光，边缘圆润，有轻微颗粒感，光线温暖柔和`。
- 中文风格词：电影质感、胶片质感、赛博朋克、复古港风、日系小清新；中国风加"东方意境、中国、亚洲"。
- **避免堆词**：词汇堆砌、风格混搭会互相干扰——每类词（景别/光影/质感）选 1-2 个即可；"优先保证最想要的效果"。
- 兜底质感词：`fine 35mm grain`；`写实的摄影海报，高端的荧屏广告质感 + 自然的漫射光 + 低反差镜头`。
- 平台特性备注：即梦有"风格码"锁定风格防跨镜漂移（仅该平台）。

### 2.8 节奏与切镜头
- **单镜头铁律**：`One shot. One camera setup. One clear beat.`
中文对照：一个镜头。一个机位。一个清晰的节拍——"You don't generate a movie; you generate a shot list. If you try to do too much at once, it turns into AI soup."
中文对照："你不是在生成一部电影，你是在生成一个镜头列表。一次做太多就会变成AI大杂烩。"
- **段内切镜头（省成本王牌）**：在一段提示词内写切换，一次生成自带分镜。示例：`镜头缓慢推进，天上从晴天变成阴天下雨。切镜头，特写机器人的脸部，他的眼睛在逐渐变红……切镜头，特写机器人的手捏紧了拳头……切镜头回到最开始的镜头，大远景，镜头缓慢拉远，天上突然打雷了。`（剧情量大时时长参数设 10 秒以上。）
- **防漂移铁律**：`hard cuts at exact seconds`（精确秒数硬切）+ `the crop changes only on the cut with no zoom`（裁切只在切点变化，无缩放）。
- **beats 不写段落**：30s 一大段会让模型"pick one scene and loop it"（选一个场景循环）；标准四拍 `0-5 hook / 5-16 develop / 16-25 escalate / final 5 stick the landing`
中文对照：0-5秒钩子/5-16秒发展/16-25秒升级/最后5秒收尾落地。
- **命名最后一帧**：不写"the clip just drifts to a stop"（片段慢慢停下来）；写 `freezes on our suspect caught mid turn, staring straight down the lens`
中文对照：定格在嫌疑人转身中途、直视镜头——该帧同时是下一代的输入。
- **节奏是楼梯**：`long → shorter → shorter → pause → impact`（长→更短→更短→停顿→冲击）；impact 前半秒 total silence（彻底静音）再 hit。
- **对白工程**：台词加引号（触发 lip sync）+ 指名说话人 + 各自独占时间窗 + 放在片段前 10 秒（超 10s 就崩——平台限制备注）。
- **每 prompt 词量**：每镜 120-180 词；多镜头时每条 prompt 重写视觉锚点。
- 广告卡点写死数字：`quick, cinematic cuts timed at exactly one shot every 2 seconds across a complete 30-second timeline`
中文对照：快速电影感剪切，精确每2秒一个镜头，贯穿完整30秒时间轴。
- 长镜头 movements 分段：`Action (continuous, single unbroken take, three movements)`
中文对照：动作（连续，单一不中断长镜头，三个运动）——Movement one/two/three 划分戏剧节拍。
- 时长经验值：慢速360°环绕≈6秒一批；子弹时间3秒一批最完美；翻滚12秒；5秒节奏偏快可延长到8秒；30-60秒不能全程一个机位。
- 30秒级完整小剧情：按"启承转合"拆4部分写，并**具体到每一秒发生什么**——省去分段生成+拼接+衔接打磨。
- 5秒镜头法：单集2分钟≈24镜头；按地点/时间拆Scene（6-12个），Scene内拆Shot（3-6s），每个Shot标剧情目的（铺垫/升级/悬念钩子）。
- **秒级对白时刻表**：一个角色7s说、另一个紧接着答，`timed them down to the exact second`；从"描述发生什么"到"规定何时发生"是提示词最大的跃迁。
- **分屏/多机位写法**：`4个机位，春夏秋冬`——一个提示词内要求多个机位画面；Sora2 按时间轴拆「镜头1（0-2s）……镜头2（2-5s）……」。

### 2.9 声音（四层声音观/音效写法）
- **四层声音观**：①人声（讲什么）②音效（动作声：脚步/拉链——管真实感）③环境音（雨声/虫鸣——管空间感）④BGM（管情绪氛围）。多数人只做第4层；高手四层一起设计。AI时代红利：写画面提示词时同时写声音提示词，"声画同时诞生"。
- **声音结构句**：`环境音 + 动作音效 + 音乐情绪`。例：`凄厉的雨声，远处传来闷雷，泥土稀疏声，蘑菇生长时轻快的鼓点`。
- **三技巧**：① 写具体拟声词不写抽象形容（`金属摩擦的刺耳声`——AI对拟声词很敏感）；② 带情绪强度词（`轻快的脚步` vs `沉重缓慢的脚步`）；③ 给声音加空间感（`远处传来隐约的雷声`、`低声耳语`）。
- **音频是第6要素**：`the creak of the boat, rhythmic thrum of waves, and wet slap of the net`
中文对照：船的吱嘎声，波浪的节奏性低鸣，渔网的湿拍声。
- **官方三规则**：台词用引号；音效写具体事件（谁在响、怎么响）；单独定义背景声场。
- **限词原则**：`Dialogue limited to short lines only: "No way!" "Go!!" No music, no narration.`
中文对照：台词仅限短句："不可能！""走！！"无音乐，无旁白。——台词越短越稳。
- **声音节拍控制**：`light lo-fi guitar under the first half, and a low tense string drone from 19s`
中文对照：前半段轻柔lo-fi吉他，19秒起低沉紧张的弦乐持续音；情绪静音：`all ambient sound drops out`（所有环境音消失）。
- **静默是最强音效**：impact 前半秒 total silence。
- **画外空间**：`远处有汽车的喇叭声`——画面没出现汽车但观众感觉它存在。
- **BGM 工程规则**：多段成片 BGM 一律后期剪辑统一加；prompt 写 `不需要生成背景音乐`。适用条件：单镜头原生音频成片可在 prompt 内写音乐节拍；多镜头拼接必须后期。
- 角色音色一致性：试镜（上传设定图+一句台词）→ 选最自然片段 → 音频分离保存 → 跨镜头复用该声音标准。
- **声画同生局限**：BGM 与音效混轨不可分离是最大坑；分层生成（画面+音效环境音一条、BGM 后期）是唯一解。

### 2.10 负向提示词与约束（按模型机制分轨）
**机制分轨表（跨模型必查）**

| 模型 | 负向机制 | 写法 |
|---|---|---|
| 可灵 Kling | 唯一提供专用负向入口的主流模型（API ≤2500字符；图生视频 API 不支持） | 独立栏内逗号分隔短语，可积极使用 |
| Veo | 有字段但**只接受名词短语**（`extra limbs, glitch morphs`）；官方倾向正向描述 | 名词短语列举；禁 `no/don't` 命令式 |
| Runway | **完全不支持**负向：`no distorted hands` 反而召唤 distorted hands | 只能正向描述 + 参考图 |
| Sora | 无字段；实测写 "no tree" 反而渲染出树——**白熊效应** | 正向改写：`locked camera`（锁定相机）替代 `no camera movement` |
| Seedance/即梦 | 消费端无可靠负向字段 | 用正向描述想要的来否定 |
| 开源工作流 | **CFG=1 时负向词引导力为 0，完全不生效**（二手证据，机制推断合理） | 写负向词前先核对采样配置 |

- **摆放原则**：多数模型不需要独立负向栏——配对法：`The weather is sunny, no rain`——正向在前、负向封口、紧跟被保护元素。
- **正向句式内嵌禁止项（最稳）**：`禁止美化，禁止改变年龄`。
- **词库**：
 - 中文写实负向包：动画、模糊、变形、毁容、低质量、拼贴、粒状、标志、抽象、插图、计算机生成、扭曲。
 - 英文综合 starter：`blurry, low quality, morphing, warping, deformed, distorted anatomy, extra fingers, fused fingers, unstable motion, flickering, jittery, duplicate objects, watermark, text artifacts`
中文对照：模糊、低质量、形变、扭曲、解剖结构变形、多指、融合指、不稳定运动、闪烁、抖动、重复物体、水印、文字伪影。
 - 视频特有时序负向：morphing、flickering、unstable motion、jittery eyes、frozen lips、warping fingers、melted features。
 - 防AI感组：`No cinematic composition, stabilization, slow motion, or polished commercial look. No music, narration, subtitles, captions, logos, watermarks, or on-screen text. No CGI appearance, distorted hands, extra fingers, duplicated people, identity drift.`
中文对照：无电影感构图、防抖、慢动作或精致商业质感。无音乐、旁白、字幕、说明文字、Logo、水印或屏幕文字。无CGI感、扭曲的手、多指、重复人物、身份漂移。
- **两类无效负向**：愿望式（`保持人物一致性`——模型默认在做）；物理常识式（新模型自带世界认知，越教越乱）。
- ⚠️ 矛盾：负向词**数量**——知乎主张写实"全加"；实战经验主张"5-8个最佳，过多画面僵硬"。适用条件：独立负向栏可列长清单；正文内嵌负向宜精简。
- 负向非100%可靠，工作流必须有后期兜底（去水印工具、片段定点重生成、剪辑剔除）。

---

## 第三部分 技法玩法库（能做什么）⭐核心

### 3.1 首尾帧系
> 原理：锁定头尾两帧，文字补中间过程——图生视频的可控强化版。"首尾帧的本质不是『过渡』，而是『因果』"——用因果而非过渡写提示词，观众看到的就是故事。

**Meta 判型法（万能首尾帧 Meta 提示词）**
> 你是一位顶尖的创意视频导演和VFX概念艺术家。任务是为AI视频生成模型设计从【起始帧】到【结束帧】的转场过程。
> 第一步：分析差异。A类-关联性强（主体/场景一致，仅状态/风格/环境改变）；B类-差异巨大（主体和场景完全不同）。
> 第二步：选择转场策略。A类优先"原地演变"；B类采用"运镜驱动转场"（用推、拉、摇、移、旋转引导过渡）。
> 第三步：构思具体变化——主体变化：形态/材质/服装/分解/出现；环境变化：时间/季节/空间切换；风格/特效变化：像素化/火吞/水彩/光效粒子。
> 输出规则：整合为一个连贯段落；避免模糊比喻；严格遵守摄像机移动策略。
（实测以可灵2.1类模型效果最好——平台备注。）

**技法子族**
1. **环绕展示（"机械臂运镜"）**：同主体两个角度各拍一张→ 图生图擦除入镜物→ AI打光→ 两图作首尾帧，4秒即可：`模拟机械臂运镜，镜头从图一环绕到图二`。匀速缺陷解法：生成后用剪辑软件"曲线变速"分段调。
2. **空镜转场 / 动接动**：动接动原则——上一镜在动、下一镜也要动且动作能衔接；更简单的**空镜法**：首帧=A段结尾角色离开后的空镜，尾帧=B段开头空镜。适用：vlog、广告、故事短片、参观漫游类。
3. **循环动画**：首帧=尾帧同一张图，结尾回到开头。循环句式：`using the supplied image as the exact first frame and matching final frame... End on a frame matching the supplied image so the next repetition flows directly into the opening movement.`
中文对照：使用提供的图片作为精确的首帧和匹配的末帧...以匹配提供图片的帧结束，使下一次重复直接衔接开场动作。
4. **时段变化**：同机位晨图+昏图作首尾帧，提示词只写光线流动（`时间从清晨流动到黄昏`）。
5. **子弹时间**：时间静止+环绕。实拍素材法：双机位+慢动作模式拍摄，各截一帧作首尾；提示词：`模拟子弹时间，保持角色和场景一致，镜头围着人物向右环绕`。H3实测360°环绕3秒一批最完美。
6. **续镜（shot chaining）**：`show me what happens next in the video, use the last frame as the start frame`
中文对照：展示视频中接下来发生什么，用最后一帧作为起始帧；接缝技巧：`delete the first frame of an extended clip & adjust speed slightly`
中文对照：删除扩展片段的第一帧并微调速度。
7. **动作Match Cut（帧级写法）**：`Hard cut at the exact moment... Preserve across the cut: leg extension, torso rotation, body orientation, movement direction, screen position and continuous physical momentum.`
中文对照：在精确时刻硬切...跨越切点保持：腿部伸展、躯干旋转、身体朝向、运动方向、屏幕位置和连续物理动量。——动量连续性>场景连续性。
8. **花式转场**：黑帧藏转场（手机掉落黑屏期间完成换景换装）；首帧跳切；隐形转场（`make the cut completely invisible`，让剪切完全不可见）；一镜到底的转场必须由物理动作触发。

**通用规则**：两图的场景描述保持一致，只改风格/状态部分；构图差异越大中间变形风险越高，宜小角度渐进。平台备注：可灵 multi-shot 模式与首尾帧互斥。

### 3.2 一镜多镜系
1. **段内切镜头**：见 2.8（省积分王牌；替代"多图多段+剪辑拼接"）。
2. **分镜直出**：① 让大模型生成文字分镜表；② 分镜表+产品/角色图一起给视频模型：`按图片一给出的文字分镜，生成一则关于图片二这瓶香水的广告`；③ 升级图文分镜——"文字分镜表上每条镜头描述，本身就是一段文生图提示词"。AI短片导演经验：分镜别写死——AI有不确定性，分镜辅助不限制。
3. **时间码分镜**：`[00:00-00:04] / [00:04-00:07]...` 每段只写机位+动作+一句对白+环境声；Multi-cut 每镜标秒数 `Shot 1 (3s): ...`——镜头顺序不必等于成片顺序。
4. **节奏卡点**：AI识别音频节奏点让画面动作自动卡点。链路：文生图模特 → 文生图服装 → 换装 → 平台生成音乐 → 音乐+造型图一起生成。音频参考上限15秒——过长先裁。
5. **穿越式转场**：一个连续前推写成三拍——`approach the locked door / pass through the brass keyhole / emerge inside the office`
中文对照：接近锁着的门/穿过黄铜钥匙孔/出现在办公室内，单规则 `no cuts and no other camera movement`
中文对照：不剪切，无其他相机运动。
6. **单镜内 speed ramp**：正常速度→timed window 慢到爬行→硬弹回；加 `audio stretches and snaps along with the picture`（音频随画面拉伸和弹回）。

### 3.3 参考系
1. **全能参考（多类型素材引用）**：图片+视频+音频混合参考。**视频参考独特价值**：动作、表演、运镜这些没受过影像训练很难用文字说清的参数，"丢一段视频"替代专业描述。**@引用法**：`@小猫这张图，戴上@墨镜这张图`；`背景音乐使用@这段音乐`。素材分层引用防串味：`转场参考视频一的转场`——只说"参考视频一"会把场景风格一起继承。
2. **动作迁移（换角色）**：原视频+替换人物图一起上传，**时长设为与原视频相等**：`@视频中的角色，换成@图片中的角色`——动作、运镜全部保留。
3. **运镜迁移**：想到运镜但文字难描述→ 手机实拍一段运镜视频→ 配目标场景图→ `参考视频中的运镜，把场景换成图片`。真实运镜节奏+AI场景，天然规避"AI运镜呆板"。
4. **换背景/换光影**：入口是"视频编辑"（不是视频生成），时长与原视频一致。人物换景：`把视频中的背景换成室外雪景`；只改光影不动背景：`把@视频中的光影效果，换成@图片中的光影效果，其他不变`。
5. **九宫格扩机位**：一张图→ 15秒9机位视频→ 挑空间关系正确的截帧→ 高清放大作背景图/分镜参考。产物不直接成片，只当**素材厂**。
6. **反推提示词**：上传参考图→"给我这张图的提示词"→ 可继续"直接用这段提示词生成新图"。局限：反推再生成不会完全还原原图；反推工作流可整片复刻。
7. **成片级定点编辑**：已生成后不重 roll，上传成片当参考+两行编辑：`Remove the sconces so the light snaps fully off, and preserve everything else frame by frame`
中文对照：移除壁灯使灯光完全熄灭，逐帧保留其他一切；可叠加第二次编辑。
8. **先白模后生成**：在3D软件搭白模+相机路径+空间关系，再交给AI生成——避免漫游类镜头抽卡。
9. **视频台词翻译（多语言分发）**：视频中中文台词可翻成英语且保持原说话人音色；现缺陷：口型张合不完全匹配。
10. **纯音频参考**：只给有声小说音频+提示词 → 直接生成动画，无需任何图片素材（仅新一代模型具备）。
11. **多图长镜头**：4张没有明显逻辑关系的图，按序排列+非常详细的提示词 → 生成复杂运镜且角色表演精确的长镜头。

### 3.4 一致性系
- **跨镜人物锁定**：每镜复用完全相同 reference set；分镜表必写资产ID；锁面短语原样贴进每条提示词（连续性锁机制）。
- **场景锁定**：先做 location sheet 再生成——实测带 sheet 一次命中，不带 sheet 三次各造一个"再也回不去的办公室"；群演也做 Character Sheet（`让模型把它们当成世界里的固定资产`）。
- **跨镜光线/色调锁定**：Kelvin+HEX 字符串跨镜头粘贴；`physics_rules` 与 `visual_rules` 分离字段化。
- **多主体防融合**：一景一主体，或严格分离主体描述+独立参考图；素材过多会"打架"→ 减少同时上场主体。
- **人物入场景三查**：①还是同一个人吗 ②人景融不融合 ③情绪符不符合这场戏（情绪调节滑块可只改其中一人）。
- **数字人三视图制作（专项参数）**：① 图生图生成角色的正面、侧面、正侧面、背面四个角度放一张图上，纯白背景；② 同法生成一张脸部特写图；③ 两图挂参考，提示词：`人物细节参考@图片一和@图片二`。
- **纯文字造演员（casting 流）**：直接写 `生成一个亚洲帅哥` 出三视图=第1个AI演员；再从三视图生成不同着装设定图，确认后把角色图丢进视频模型。版权红线：用知名公众人物形象或IP有侵权风险——建议打造纯AI演员。
- **数字人口播实战参数**：一个角色可吃掉3-5个素材位：全身三视图+脸部三视图+道具特写+专属音色；几十分钟项目必须如此框定。

---

## 第四部分 创意形式与风格谱系（做什么类型）⭐核心

### 4.1 视频形态谱系（浏览"AI 视频能做出什么"）
| 形态 | 结构公式 | 要点与出处 |
|---|---|---|
| 微剧情短剧 | Hook(3-5s钩子) → Pressure → **Crack(必留)** → Impact → Aftermath；单集≈24镜头 | 竖屏钩子+悬念；对白放前10s；台词短句 |
| 漫游Vlog/第一人称探索 | POV/手持开场 → 空镜/动接动串联多空间 → 拉远收尾 | 课程"参观豪宅"演示；`selfie mode entire time with slight handheld shake`（全程自拍模式带轻微手持抖动） |
| 产品广告/电商 | 产品锁置顶 → reveal（crate panels retract...car revealed）→ 2s一切卡点 → ending 定格 |；`loop_hint: hold final 6 frames`（保持最后6帧）适配循环播放 |
| 静物变形/美食 | 特写静物(85mm浅景深) → 缓慢拉远 → bursts explosion → 零件慢动作扩散 → 场景转换 |；变形写物理过程（爆开→漂浮→组装） |
| MV/节奏卡点 | 音乐节奏点 × 造型序列（从左到右从上到下） |；音频参考≤15s；竖构图更饱满 |
| 建筑漫游 | ①运镜动词打头 ②材料工艺精确 ③光线全定义 ④风格锚收尾 |；空间一致性是当前硬伤；进阶：白模先行 |
| UGC/自拍口播 | selfie handheld + `Mouth movement synced to speech`（口型与语音同步）+ 微动作 + 浅景深 |；`speaks directly into the camera`（直视镜头说话）+ 表情语气必写 |
| 伪纪实 Mockumentary | `Mockumentary, mobile Vlog perspective, hyperrealistic CG combined with real scenes`
（中文对照：伪纪录片，手机Vlog视角，超写实CG与真实场景结合）+ `network delay feel`（网络延迟感） |
| CG 质感大片 | 长文案叙事直出：场景设定→威胁出现→英雄登场→动作高潮→定格收尾 | 课程示范；30s 按启承转合逐秒写 |
| 生活流/空镜循环 | 首帧=尾帧循环 + 微动态（水纹/光斑/树叶）+ 环境音 |；GIF/动态壁纸/直播间底图 |
| 双人短剧/正反打 | 过肩镜位 → 正反打（背身者写 `以画外音的方式说道`）→ 过肩推进到特写 |；台词+口型对齐是观感提升最大字段 |
| 文字 VFX 片头 | `Diving into [介质]. The camera [穿行动作]. [粒子] form "WORD" ... [三词情绪收尾].`
中文对照：潜入[介质]。相机[穿行动作]。[粒子]组成"词语"...[三词情绪收尾]。 |
| 汽车商业/载具片 | 车身质感交静帧，prompt 只写速度与模糊：`Canyon walls blur into streaks, dust clouds explode`（峡谷壁化为条纹，尘云爆炸） |
| 旅行 Vlog / 航拍风光 | FPV 万能模板 + 动词链 `racing over... diving through... weaving past... spiraling above`
（中文对照：飞越...俯冲穿过...绕行穿过...盘旋上升）；场所感（place sense）模板|
**▶ 感受速查表（凭感受选形式，而非只看技术公式）**

| 形态 | 视觉感受 · 情绪基调 · 节奏感 | 适合的表达心境 |
|---|---|---|
| 微剧情短剧 | 高密度情绪流，紧迫如翻滚山路，观看时几乎喘不过气 | 有一段感情/冲突/反转要说，想让观众被卷进去 |
| 漫游Vlog/第一人称探索 | 沉浸轻盈，像跟着镜头在空间里漫步；节奏随环境自然起伏 | 想带人去某个地方，分享在场感 |
| 产品广告/电商 | 干净克制，每一帧都是精准的击打；情绪服务于美学 | 想让产品本身"发光"，美学优先于故事 |
| 静物变形/美食 | 细腻慢热，近景+质感+慢动作让日常物品生出奇异之美 | 迷恋细节，想把小东西拍出宇宙感 |
| MV/节奏卡点 | 感官爽感与视觉糖果；节拍驱动一切，情绪是感官的非叙事的 | 想让人兴奋，不想讲故事只想制造刺激 |
| 建筑漫游 | 冷静精致，有距离感；节奏缓慢稳定，空间感压倒一切 | 想让观众感受宏大与秩序之美 |
| UGC/自拍口播 | 亲近真实，有呼吸感；像信任的朋友直接说话；节奏甚至有磕绊 | 想说真话，建立连接，不怕"不精致" |
| 伪纪实 Mockumentary | 暧昧感，介于真实与虚构之间；观众反复想"这是真的吗" | 想玩弄现实边界，制造认知错位 |
| CG 质感大片 | 史诗感震撼感；视觉冲击是核心，观众无需思考只需感受 | 想造一个梦，追求宏大叙事 |
| 生活流/空镜循环 | 安静冥想，绵延的时间感；像一首无词的诗；节奏极慢 | 想让观众停下来感受，不追求情节 |
| 双人短剧/正反打 | 紧绷的张力感；两人之间的游戏在进行；节奏是对话节奏 | 想探索关系、对抗与摩擦，情绪来自碰撞 |
| 文字 VFX 片头 | 仪式感与开场感；一个词的出现本身成为事件；节奏是宣告式的 | 想宣告某件事开始，用标题制造情绪落差 |
| 汽车商业/载具片 | 速度与力量感；机器之美；节奏随速度紧绷 | 迷恋"在运动中的物体"，力量美学优先 |
| 旅行Vlog/航拍风光 | 开阔抒情，地球很大人很小；节奏由地貌和光线决定 | 想传递宽广与渺小之美，追求自然的崇高感 |

### 4.2 视觉风格流派（附风格词）
| 流派 | 风格词（保留原文） |
|---|---|
| 写实电影感 | `Simulated IMAX film camera, Panavision C-series lens, 35mm focal, f/4 aperture`（模拟IMAX摄影机）+ 实用光源 + `fine 35mm grain`（精细35mm颗粒）；`teal and orange color grade with harsh rim lighting`（青橙调色配硬质轮廓光） |
| UGC 手机感 | `slightly soft image, a little digital noise and compression, deep focus ... no colour grading`（略微柔和，轻微数码噪点和压缩，深焦...无调色） |
| 复古介质 | bodycam / CCTV / `early-2000s DV footage` / `1960s BBC` / `Year and style: year 2007` |
| 手绘动画 | `Cinematic 90s anime film look, hand-painted backgrounds, soft film grain`（90年代电影感动画，手绘背景，柔和胶片颗粒）；"吉卜力动画风格，色彩柔和，线条细腻" |
| 3D/风格化 | 粘土风、lowpoly 3D 游戏画风、"3D超逼真"；哑光黏土材质模板 |
| MG/插画 | `clean ink linework, flat shading, no 3D`（干净墨线，平涂阴影，无3D） |
| 油画/艺术 | `dark surrealist oil-on-canvas style: thick impasto, visible canvas fibers, scraped pigment... Never photorealistic`（黑暗超现实油画风格：厚重厚涂，可见画布纤维，刮刀颜料...绝不写实） |
| 建筑可视化 | `architectural visualization`（建筑可视化）+ 建筑渲染七要素（subject+style+materials+lighting+camera+atmosphere+rendering） |
| 超写实合成 | `hyperrealistic CG combined with real scenes`（超写实CG与真实场景结合） |
| 单色/极简 | `black and white, the gold cross is the only color` |
| 名导名片锚 | `Christopher Nolan-style... actual 70mm IMAX`（诺兰风格...真实70mm IMAX）/ `Tarkovsky film - grounded, tactile, lived-in`（塔可夫斯基电影——脚踏实地，有触感，有生活气息） |
| 东亚意境 | "东方意境、中国、亚洲"；`90s Hong Kong Art Cinema style`（90年代香港艺术电影风格） |

### 4.3 创意组合思路
- **组合逻辑：形态（4.1）× 风格（4.2）× 技法（第三部分）** 三层正交叠加。形态定结构骨架，风格定视觉皮肤，技法定实现路径。
- 组合示例：漫游Vlog（形态）× 复古DV（风格）× 空镜转场+续镜（技法）＝90年代家庭录像式探店片；产品广告（形态）× 超写实合成（风格）× 环绕展示+子弹时间（技法）＝发布会级 product film；微剧情（形态）× 单色规则（风格）× Match Cut（技法）＝风格化叙事短片。
- 先定"唯一彩色物/唯一介质"类强锚点再展开，防多元素互相干扰；每加一个新元素问一次 smixs 三职务法则：这镜改变了情绪/推进了动作/加压了吗？都没有就删。
- 跨模型策略：同一镜头跑多个模型对比挑选——模型表现不恒定，以故事表达、情感表达为目的挑选。
- 灵感检索法：按类型（ads/UGC/cinematic/anime）在提示词画廊检索同行结构再改写，是迭代加速器。

### 4.4 多样化路径速查坐标系（破圈工具）

> **使用方法**：输入"我上条视频用了什么形态/风格/技法"，在差异矩阵中找到自己所在行，向"差异最大的替代方向"列移动即可获得建议。坐标系帮助创作者从当前惯用风格出发，系统性地跳出单一风格，而非随机试错。

**① 形态差异矩阵（叙事感 × 影像质感两轴定位）**

| 叙事感↓ 影像质感→ | 写实/生活感 | 风格化/艺术感 | 实验/奇观感 |
|---|---|---|---|
| **情绪驱动型** | 微剧情短剧、双人短剧 | 手绘动画MV、复古介质片 | CG大片、文字VFX |
| **信息/功能型** | UGC口播、产品广告 | 建筑漫游 | 伪纪实Mockumentary |
| **奇观/感官型** | 旅行Vlog、航拍风光 | MV卡点、汽车商业 | 静物变形、生活流循环 |

**② 当前形态 → 差异最大替代方向速查**

| 若你一直在做… | 差异最大的3个替代方向 | 主要差异维度 |
|---|---|---|
| 建筑漫游 | UGC口播 / 双人短剧 / MV卡点 | 冷静无人→亲近有人；慢节奏→快节奏 |
| 微剧情短剧 | 生活流空镜 / 航拍风光 / 产品广告 | 高情绪密度→安静/奇观；叙事→非叙事 |
| 产品广告 | 伪纪实 / 漫游Vlog / CG大片 | 克制精准→暧昧/沉浸/震撼 |
| UGC口播 | 建筑漫游 / 文字VFX / 静物变形 | 人感→无人感；叙事→纯视觉 |
| MV卡点 | 伪纪实 / 生活流 / 双人短剧 | 纯感官→叙事；快节奏→慢节奏 |
| 汽车商业/载具 | 伪纪实 / UGC口播 / 生活流 | 力量美学→真实感/诗意感 |

**③ 风格差异化速查**

| 已用风格 | 差异最大的风格方向 | 搭配技法建议 |
|---|---|---|
| 写实电影感 | 手绘动画 / 单色极简 / 东亚意境 | 首尾帧变形 / Match Cut |
| UGC手机感 | 建筑可视化 / 油画风格 / 3D风格化 | 时间流逝 / speed ramp |
| 复古介质 | 超写实合成 / MG插画 / 极简单色 | 循环动画 / 段内切镜 |

**三条破圈路径示例**

**路径一：从"建筑漫游"出发**
- 叙事转型：建筑漫游（形态）× 伪纪实（风格）× 首尾帧时段变化（技法）＝同一空间不同时间的"时间流逝"片，带出空间故事感
- 情绪转型：建筑漫游（形态）× 东亚意境（风格）× 空镜串联+环境音（技法）＝诗意空间片，无台词纯视觉
- 感官转型：产品广告（形态）× 超写实合成（风格）× 子弹时间（技法）＝建筑细节的发布会级产品片

**路径二：从"UGC口播"出发**
- 去人化路径：生活流/空镜循环（形态）× 单色极简（风格）× 循环动画（技法）＝品牌调性片，无人无台词
- 戏剧化路径：双人短剧（形态）× 写实电影感（风格）× 正反打+对白工程（技法）＝角色对话片，情绪张力远超口播

**路径三：从"MV卡点"出发**
- 叙事化路径：微剧情短剧（形态）× 复古介质（风格）× Match Cut（技法）＝有年代感的情绪叙事短片
- 奇观化路径：CG大片（形态）× 超写实合成（风格）× 段内切镜+首尾帧（技法）＝连续视觉冲击的场景大片

---

## 第五部分 框架公式汇编

| 流派/模型 | 公式 |
|---|---|
| 八字公式（教学通用） | 图片=时间+主体+场景+风格；视频=主体+动作+效果+节奏 |
| 可灵官方 | 主体+运动+场景，可选+镜头语言+光影+氛围；主体句首权重最高 |
| 可灵进阶/4.0 | （镜头语言+光影）+主体+主体运动+场景+（氛围）／主体+动作+场景+镜头+光影+**声音** |
| Seedance | 8要素公式（官方53页PDF）；时间轴分段范式 `Style: ... [00-05s] Shot 1: ...`|
| Veo 3.1 | cinematography→subject→action→context→style&ambiance（+audio 第6要素） |
| Sora 2 | 分层 Shot List；场景+主体+动作+摄影参数+氛围+音频要求 |
| Kling | 5层公式+三套写法+6守则+Constraint Sandwich+Style Bible Line |
| Wan 2.2 | 主体描述→情绪表情→核心动作→镜头语言（含落幅）→光线；元素全堆叠互扰 |
| jnMetaCode 5阶段 | ①Core theme ②Character&scene ③Atmosphere&quality ④Camera rules ⑤Storyboard |
| Runway Gen-4 | `[shot type], [subject+action+motion+direction] [env]. [Camera motion], [lighting], [mood].` |
| 零基础式 | 景别+运镜+主体+动作/环境+风格 |
| 通用万能模板 | 目标+时长+镜头+主体+动作+场景+光线+风格+运镜+禁止项 |
| JSON字段化 | `{"subject","scene","camera","style"}` 四键起；进阶含beats/physics_rules/visual_rules/negative_prompt/loop_hint |
| 五锁经验法则 | 锁规格→锁主体→锁时间（节拍）→锁声音（引号+环境）→锁负面 |
| L1-L5进阶体系 | L1一句话→L2五件事→L3导运镜四件套→L4结构化→L5资产化 |
| 全框架（24字段级） | INTENT→SUBJECT+ACTION→FRAME→OPTICS→CAMERA→PERFORMANCE+PHYSICS→LIGHT+SPACE→CONTINUITY |
| smixs剧作法层 | 场景公式 desire+obstacle+geometry+gaze+rhythm；每镜三物理事实；5锚点 |
| PJ Veo 尾块 | 正文叙事 + `He says:` 台词 + `Time of Day / Lens / POV / Audio / Background` 尾块 |
| PJ长镜头 | Duration/Mode → POV setup → Characters → Action → Camera Style → Audio → Global style lock |
| Shami三段式 | MASTER PROMPT → TIMELINE(每镜Camera/Action/对白/Sound) → Negative |
| Sora字段式 | Scenes / Camera / Year and style / Sound 四行 |
| 反推复刻流 | 上传成片→反推逐镜提示词→换素材→重生成 |
| 全能参考三部曲 | ①视频定位+基调 ②素材分工 ③场景设计+分镜设计|
---

## 第六部分 避坑与排障（通用失败机制）

> 总原则：参考图 > 提示词 > 模型。症状 → 根因 → 修法。

| 症状 | 根因 | 修法 |
|---|---|---|
| Vanity Zoom（推近不停，推到眼睛/鼻子） | 无落幅约束，模型不知道何时停 | 闭环描述写落幅：`最后逐渐推进到女孩的肖像`/`落在胸口以上景别` |
| Missing Legs / 物体漂浮失重 | prompt 没写物理与重量 | `the cushion sinks deep under him...a contact shadow gluing him to the floor`
中文对照：坐垫深深凹陷...接触阴影把他粘在地板上；负向组 `no weightless bodies, no floating characters`（无失重身体，无漂浮角色） |
| 白熊效应（no XX 召唤 XX） | 模型忽略否定词直接响应名词（Sora/Veo/Runway 均实测） | 正向改写：`locked camera`（锁定相机）替代 `no camera movement`；仅在支持负向栏的模型用名词短语负向 |
| 运动模糊/画面糊 | 写"快速/剧烈"速度词 | 速度梯度降档（缓慢/匀速为默认）；速度感用物理细节（背景拉丝、衣角飘动）表达 |
| 人物一致崩坏（变脸/换装/双胞胎） | 文字重描述角色；多张模糊小脸被平均化；模型审美优化 | sheet+抹脸+tag by name；分级修正句（2.2）；锁面短语跨镜复用；三视图检查眼镜/发型/服装主色 |
| 动作被压缩/随机比划 | 未写时间节拍，时长装不下内容 | 动作按秒写死（0-2s 做什么）；时长先核算；一镜只装一件事 |
| 图生视频画面被改/多东西 | 描述了图中已有静态内容；无锁定句 | 静态归图片；加锁定声明（`严禁修改图中任何元素，不得添加、删除、移动图中任何物体`） |
| 模型自行切镜头（I2V） | 描述与图片相差过大 | 只写运动不重述画面；差异大的场景走首尾帧或文生 |
| 空间一致性漂移（窗位移动/柱距变化） | 扩散模型无精确空间记忆 | 属当前模型硬伤：概念期使用；白模先行+截帧校验；逐镜同场景图锁定 |
| 长片接缝断裂/越接越怪 | 单段超模型能力上限；曝光光线差异 | beats 分段+尾帧链式衔接；`delete the first frame & adjust speed slightly`（删除第一帧并微调速度）；必要时二次融合 |
| "AI 味"塑料感 | cinematic 空词+完美无瑕+过顺滑运镜 | 防AI感三律（真实相机/不完美/留白）+ catchlights + practical 光源 + 轻微 handheld |
| 抽卡地狱 | 提示词简短模糊 → AI 猜 | 加信息密度（具体特征/落幅/时间轴）；3 次不成就换写法；先求稳定再求花哨 |
| 多段 BGM 混乱 | 各段各配音乐混轨不可分离 | 多镜头成片 BGM 一律后期统一；prompt 写 `不需要生成背景音乐` |
| 多主体融合/拿错道具 | 素材打架、主体未分离描述 | 独立参考图+distinct 描述+接触点显式写；减少同时上场主体 |
| 群像/人群动画崩 | 官方文档不写模型短板 | 改写为"众人沉默注视"等低动态表达传达同样信息 |
| 负向词调了没效果 | CFG=1 时负向不生效（开源链路） | 先查采样配置再调词 |
| 嘴型不同步/ frozen lips | 对白无独立时间窗；音频时长超出 | 台词引号+指名说话人+独占窗口+放前 10s；`口型幅度自然收敛，不要夸张开合` |
| 面部运动中扭曲/异常眨眼 | 时序伪影 | 时序负向组 `unnatural blinking, face warping during movement`（非自然眨眼，运动中面部扭曲） |
| 背景闪烁/漂移/卡顿感 | 时序不稳 | `background is shifting, morphing, and flickering`（背景偏移、形变、闪烁）、`frame skipping, micro-stuttering, jittery movement`（跳帧、微卡顿、抖动运动）负向 |
| 转场衔接处卡顿两下 | AI 生成视频头尾偶有静止重复帧 | 找到重复画面剪掉再拼（"砍重复帧"） |
| 效果怎么调都不对 | 变量太多同时失控 | 用参考图逐个控制变量，一次只锁一个元素 |
| 环绕中段双脸/站位位移 | 360° 环绕中段是模型弱区 | 拆 180°+180°；弃中段；双人环绕少用 |
| 分镜执行走样 | 把分镜当硬约束 | 分镜辅助不限制：见招拆招，保留意外好镜头 |
| AI 工作流黑盒化，问题越滚越多 | 前期规划缺失 | 前期就规划到位：角色/环境/美术信息先行，测试通过再进分镜 |

**抽卡经济学**：质量/速度/成本三角恒成立；免费额度策略=同一提示词生成两三次挑最稳版本；元素堆叠过多时"优先保证最想要的效果"。

---

## 附：单镜提示词写作流程速查
1. **分工**：有底图→图生视频（只写运动）；无图→文生（图片公式+视频公式拼接）；头尾已确定→首尾帧。
2. **排序**：风格锁/主体置顶（注意力左右规则）→ 动作与物理 → 运镜（一个镜头一种+落幅）→ 光线（方向/色温/时刻）→ 声音（四层）→ 负向（按模型机制分轨）。
3. **自检三问**：够不够细、会不会产生别的理解？是否冗余？方向是"教 AI 做事"还是"引导 AI 走向"？
4. **排障**：出问题回第六部分按症状查表；先补参考图，再改提示词，最后才换模型。

> 版本 V2.1（第二版）｜ 整合自六源提炼文档（GitHub/YouTube/知乎/B站/Twitter 多平台深挖 + Round2 补搜 + 影视飓风AI实战课），并已剥离场景与平台特化内容 ｜ 整理：明源云·广分数营·AI+业务负责人·陈加林 ｜ 2026-10-21
