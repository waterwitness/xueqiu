.class public final Lcom/xueqiu/android/cube/a/c;
.super Ljava/lang/Object;
.source "CubeCardAdapter.java"


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/ImageView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/ImageView;

.field k:Landroid/widget/LinearLayout;

.field l:Landroid/widget/RelativeLayout;

.field m:Landroid/widget/TextView;

.field n:Lcom/xueqiu/android/cube/a/b;

.field o:Landroid/view/LayoutInflater;

.field p:Landroid/widget/TextView;

.field q:Landroid/widget/TextView;

.field r:Lcom/d/a/b/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(D)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 250
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 251
    const-string v1, "%.2f"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 253
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_0

    .line 254
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 255
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 257
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 262
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 263
    const-string v1, " \u4e3b\u7406"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 264
    const-string v1, "  "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 266
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#666666"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 267
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 268
    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    const-string v4, "\u4eba"

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 269
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 270
    const-string v1, " \u5173\u6ce8"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 272
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/LayoutInflater;Lcom/xueqiu/android/cube/a/b;Lcom/d/a/b/d;)Lcom/xueqiu/android/cube/a/c;
    .locals 1

    .prologue
    .line 119
    const v0, 0x7f0e027d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/c;->a:Landroid/view/View;

    .line 120
    const v0, 0x7f0e00a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/c;->b:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f0e03ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/c;->e:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f0e0396

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/c;->f:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f0e01eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/c;->c:Landroid/widget/ImageView;

    .line 124
    const v0, 0x7f0e03ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/c;->d:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f0e03f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/c;->h:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f0e03d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/c;->g:Landroid/widget/ImageView;

    .line 127
    const v0, 0x7f0e03f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/c;->i:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0e01ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/c;->j:Landroid/widget/ImageView;

    .line 129
    const v0, 0x7f0e03bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/c;->k:Landroid/widget/LinearLayout;

    .line 130
    const v0, 0x7f0e0164

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/c;->l:Landroid/widget/RelativeLayout;

    .line 131
    const v0, 0x7f0e03ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/c;->m:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0e01ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/c;->p:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f0e03f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/c;->q:Landroid/widget/TextView;

    .line 134
    iput-object p3, p0, Lcom/xueqiu/android/cube/a/c;->n:Lcom/xueqiu/android/cube/a/b;

    .line 135
    iput-object p2, p0, Lcom/xueqiu/android/cube/a/c;->o:Landroid/view/LayoutInflater;

    .line 136
    iput-object p4, p0, Lcom/xueqiu/android/cube/a/c;->r:Lcom/d/a/b/d;

    .line 137
    return-object p0
.end method

.method public final a(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/model/CubeCalGainType;ZZ)V
    .locals 10

    .prologue
    const/4 v9, -0x2

    const/16 v8, 0x8

    const/4 v3, 0x0

    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/c;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 153
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getStyle()Lcom/xueqiu/android/cube/model/Style;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getStyle()Lcom/xueqiu/android/cube/model/Style;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Style;->getColor0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v3

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getStyle()Lcom/xueqiu/android/cube/model/Style;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Style;->getColor1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 155
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 156
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 157
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    aget v0, v0, v3

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/c;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 161
    :cond_0
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getTag()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getTag()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v2, v3

    .line 163
    :goto_0
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getTag()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 164
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getTag()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 165
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 167
    if-nez v2, :cond_1

    move v1, v3

    .line 168
    :goto_1
    invoke-virtual {v4, v1, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 169
    iget-object v5, p0, Lcom/xueqiu/android/cube/a/c;->k:Landroid/widget/LinearLayout;

    .line 1141
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/c;->o:Landroid/view/LayoutInflater;

    const v6, 0x7f030117

    iget-object v7, p0, Lcom/xueqiu/android/cube/a/c;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1142
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {v5, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/c;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v1, v5}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    goto :goto_1

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/c;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/cube/a/c;->j:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/xueqiu/android/cube/a/c;->r:Lcom/d/a/b/d;

    new-instance v5, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v5}, Lcom/xueqiu/android/base/util/o;-><init>()V

    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 177
    sget-object v0, Lcom/xueqiu/android/cube/model/CubeCalGainType;->DAILY:Lcom/xueqiu/android/cube/model/CubeCalGainType;

    if-ne p2, v0, :cond_3

    .line 178
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getDailyGain()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 179
    const v0, 0x7f0700d3

    .line 187
    :goto_2
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/c;->e:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lcom/xueqiu/android/cube/a/c;->a(D)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/c;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 189
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/c;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getVerifyType()Lcom/xueqiu/android/community/model/UserVerifyType;

    move-result-object v0

    sget-object v1, Lcom/xueqiu/android/community/model/UserVerifyType;->ADVISER:Lcom/xueqiu/android/community/model/UserVerifyType;

    if-ne v0, v1, :cond_5

    .line 191
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/c;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    :goto_3
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/c;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getFollowerCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/cube/a/c;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/c;->l:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/xueqiu/android/cube/a/c$1;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/cube/a/c$1;-><init>(Lcom/xueqiu/android/cube/a/c;Lcom/xueqiu/android/cube/model/Cube;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getMarket()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/cube/model/Market;->valueOf(Ljava/lang/String;)Lcom/xueqiu/android/cube/model/Market;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/c;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Market;->description()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/c;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Market;->bgResId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 208
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 209
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/c;->c:Landroid/widget/ImageView;

    const v1, 0x7f020146

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    :goto_4
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getMarket()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p3, :cond_7

    .line 214
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/c;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/c;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/cube/a/c$2;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/cube/a/c$2;-><init>(Lcom/xueqiu/android/cube/a/c;Lcom/xueqiu/android/cube/model/Cube;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    :goto_5
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getRecommendReason()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p4, :cond_8

    .line 236
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/c;->p:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getRecommendReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/c;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/c;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    :goto_6
    return-void

    .line 180
    :cond_3
    sget-object v0, Lcom/xueqiu/android/cube/model/CubeCalGainType;->MONTHLY:Lcom/xueqiu/android/cube/model/CubeCalGainType;

    if-ne p2, v0, :cond_4

    .line 181
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getMonthlyGain()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 182
    const v0, 0x7f0700e7

    goto/16 :goto_2

    .line 184
    :cond_4
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getTotalGain()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 185
    const v0, 0x7f070106

    goto/16 :goto_2

    .line 193
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/c;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 211
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/c;->c:Landroid/widget/ImageView;

    const v1, 0x7f020145

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 225
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/c;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/c;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/xueqiu/android/cube/a/c$3;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/cube/a/c$3;-><init>(Lcom/xueqiu/android/cube/a/c;Lcom/xueqiu/android/cube/model/Cube;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 239
    :cond_8
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getRecommendReason()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    if-nez p4, :cond_9

    .line 240
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/c;->q:Landroid/widget/TextView;

    const-string v1, "\u70b9\u8bc4\uff1a"

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getRecommendReason()Ljava/lang/String;

    move-result-object v2

    const-string v4, "#ff7700"

    invoke-static {v1, v2, v4}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/c;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/c;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 244
    :cond_9
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/c;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/c;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6
.end method
