.class public Lcom/xueqiu/android/common/widget/SNBKeyboardView;
.super Landroid/inputmethodservice/KeyboardView;
.source "SNBKeyboardView.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->a:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/inputmethodservice/KeyboardView;->onDraw(Landroid/graphics/Canvas;)V

    .line 31
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    .line 1039
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->b:Z

    .line 1040
    new-instance v4, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v4, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 1041
    const/4 v2, 0x0

    .line 1042
    const-string v1, ""

    .line 1043
    const-string v5, " "

    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1044
    const v2, 0x7f0100c7

    iget-object v5, p0, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/xueqiu/android/base/r;->b(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1077
    :cond_1
    :goto_1
    if-eqz v2, :cond_0

    .line 1078
    iget-boolean v5, p0, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->b:Z

    if-eqz v5, :cond_9

    .line 1079
    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    .line 1080
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v8, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 1081
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget v8, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v9, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    .line 1082
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 1079
    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1086
    :goto_2
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1088
    new-instance v2, Landroid/graphics/Rect;

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v8, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v7, v8

    iget v8, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v0, v8

    invoke-direct {v2, v5, v6, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1089
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 1090
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iget v6, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v5, v6

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v0, v5, v0

    div-int/lit8 v0, v0, 0x2

    .line 1092
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1093
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v2, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1045
    :cond_2
    const-string v5, "\u786e\u5b9a"

    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1046
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1047
    const-string v1, "\u786e\u5b9a"

    .line 1048
    const/high16 v5, 0x42280000    # 42.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1049
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 1050
    :cond_3
    const-string v5, "\u4e0b\u4e00\u9879"

    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1051
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1052
    const-string v1, "\u4e0b\u4e00\u9879"

    .line 1053
    const/high16 v5, 0x42280000    # 42.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1054
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 1055
    :cond_4
    const-string v5, "00"

    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1056
    const v1, 0x7f0100c7

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/r;->b(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1057
    const-string v1, "00"

    .line 1058
    const/high16 v5, 0x42700000    # 60.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1059
    const v5, 0x7f010120

    iget-object v6, p0, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xueqiu/android/base/r;->a(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 1060
    :cond_5
    const-string v5, "123"

    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1061
    const v1, 0x7f0100c7

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/r;->b(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1062
    const-string v1, "123"

    .line 1063
    const/high16 v5, 0x42280000    # 42.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1064
    const v5, -0xfb7d15

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 1065
    :cond_6
    const-string v5, "ABC"

    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1066
    const v1, 0x7f0100c7

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/r;->b(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1067
    const-string v1, "ABC"

    .line 1068
    const/high16 v5, 0x42280000    # 42.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1069
    const v5, -0xfb7d15

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 1070
    :cond_7
    iget-object v5, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/4 v6, -0x5

    if-ne v5, v6, :cond_8

    .line 1071
    const v2, 0x7f0100c8

    iget-object v5, p0, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/xueqiu/android/base/r;->b(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1072
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->b:Z

    goto/16 :goto_1

    .line 1073
    :cond_8
    iget-object v5, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/4 v6, -0x3

    if-ne v5, v6, :cond_1

    .line 1074
    const v2, 0x7f0100c9

    iget-object v5, p0, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/xueqiu/android/base/r;->b(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1075
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->b:Z

    goto/16 :goto_1

    .line 1084
    :cond_9
    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v8, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v7, v8

    iget v8, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v9, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v8, v9

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_2

    .line 35
    :cond_a
    return-void
.end method
