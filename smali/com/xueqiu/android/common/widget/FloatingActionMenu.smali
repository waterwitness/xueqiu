.class public Lcom/xueqiu/android/common/widget/FloatingActionMenu;
.super Landroid/widget/LinearLayout;
.source "FloatingActionMenu.java"


# instance fields
.field public a:Landroid/widget/LinearLayout;

.field public b:Landroid/content/res/TypedArray;

.field private c:Lcom/xueqiu/android/common/widget/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->c:Lcom/xueqiu/android/common/widget/j;

    .line 37
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->b:Landroid/content/res/TypedArray;

    .line 46
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a()V

    .line 47
    return-void

    .line 37
    :array_0
    .array-data 4
        0x7f010031
        0x7f01012e
        0x7f010130
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->c:Lcom/xueqiu/android/common/widget/j;

    .line 37
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->b:Landroid/content/res/TypedArray;

    .line 51
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a()V

    .line 52
    return-void

    .line 37
    :array_0
    .array-data 4
        0x7f010031
        0x7f01012e
        0x7f010130
    .end array-data
.end method

.method private a(ILjava/lang/String;ILjava/lang/String;Z)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 147
    if-eqz p5, :cond_0

    const v6, 0x7f020082

    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;ILjava/lang/String;ZI)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    goto :goto_0
.end method

.method private a(ILjava/lang/String;ILjava/lang/String;ZI)Landroid/view/View;
    .locals 9

    .prologue
    .line 207
    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;ILjava/lang/String;ZIII)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/widget/FloatingActionMenu;)Lcom/xueqiu/android/common/widget/j;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->c:Lcom/xueqiu/android/common/widget/j;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 55
    invoke-virtual {p0, v3}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->setOrientation(I)V

    .line 1061
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1062
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1063
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1064
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->addView(Landroid/view/View;)V

    .line 1066
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a:Landroid/widget/LinearLayout;

    .line 1067
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1068
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1070
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->addView(Landroid/view/View;)V

    .line 57
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;ILjava/lang/String;ZIII)Landroid/view/View;
    .locals 6

    .prologue
    .line 151
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 152
    const v0, 0x7f0e001a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 153
    invoke-virtual {v1, p6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 155
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080055

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 156
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    int-to-float v4, p7

    invoke-direct {v2, v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 157
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 160
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 161
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 162
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 163
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    if-lez p3, :cond_2

    .line 165
    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    :cond_0
    :goto_0
    const v0, 0x7f0e0019

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 170
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 172
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 173
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 174
    const/4 v3, 0x1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 175
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 176
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 177
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    const/4 v0, 0x2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 180
    if-eqz p8, :cond_3

    .line 181
    invoke-virtual {v2, p8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 187
    new-instance v0, Lcom/xueqiu/android/common/widget/FloatingActionMenu$3;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/widget/FloatingActionMenu$3;-><init>(Lcom/xueqiu/android/common/widget/FloatingActionMenu;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    if-nez p5, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1212
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1213
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1214
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->b:Landroid/content/res/TypedArray;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1215
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    return-object v1

    .line 166
    :cond_2
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 167
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    invoke-virtual {v0, p4, v2}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 183
    :cond_3
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p5, :cond_4

    const v0, 0x7f0d0148

    :goto_2
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->b:Landroid/content/res/TypedArray;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    goto :goto_2
.end method

.method public final a(II)Lcom/xueqiu/android/common/widget/i;
    .locals 6

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07022e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1110
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;ILjava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    .line 1112
    new-instance v1, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 1113
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030220

    invoke-direct {v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1115
    new-instance v3, Lcom/xueqiu/android/common/widget/i;

    invoke-direct {v3, v2}, Lcom/xueqiu/android/common/widget/i;-><init>(Landroid/widget/ArrayAdapter;)V

    .line 1116
    new-instance v4, Lcom/xueqiu/android/common/widget/FloatingActionMenu$1;

    invoke-direct {v4, p0, v1, v3}, Lcom/xueqiu/android/common/widget/FloatingActionMenu$1;-><init>(Lcom/xueqiu/android/common/widget/FloatingActionMenu;Landroid/widget/ListPopupWindow;Lcom/xueqiu/android/common/widget/i;)V

    invoke-virtual {v1, v4}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1130
    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1132
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1133
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 1134
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-static {v2, v4}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 1136
    new-instance v2, Lcom/xueqiu/android/common/widget/FloatingActionMenu$2;

    invoke-direct {v2, p0, v1}, Lcom/xueqiu/android/common/widget/FloatingActionMenu$2;-><init>(Lcom/xueqiu/android/common/widget/FloatingActionMenu;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-object v3
.end method

.method public final a(III)V
    .locals 6

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;ILjava/lang/String;Z)Landroid/view/View;

    .line 99
    return-void
.end method

.method public final a(ILjava/lang/String;I)V
    .locals 6

    .prologue
    .line 74
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;ILjava/lang/String;Z)Landroid/view/View;

    .line 75
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 86
    const/4 v5, 0x1

    const/4 v7, 0x2

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v6, p4

    move v8, v3

    invoke-virtual/range {v0 .. v8}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;ILjava/lang/String;ZIII)Landroid/view/View;

    .line 87
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 94
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;ILjava/lang/String;Z)Landroid/view/View;

    .line 95
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 7

    .prologue
    .line 90
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;ILjava/lang/String;ZI)Landroid/view/View;

    .line 91
    return-void
.end method

.method public setOnMenuItemSelectedListener(Lcom/xueqiu/android/common/widget/j;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->c:Lcom/xueqiu/android/common/widget/j;

    .line 249
    return-void
.end method
