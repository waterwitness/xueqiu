.class public final Lcom/xueqiu/android/cube/a/u;
.super Lcom/xueqiu/android/common/a/d;
.source "TopListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/cube/model/Cube;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Landroid/view/LayoutInflater;

.field private f:Lcom/d/a/b/d;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:I

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:I

.field private k:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const v7, 0x7f020393

    const/4 v1, 0x0

    const v6, 0x7f020395

    const v5, 0x7f020394

    const v4, 0x7f020208

    .line 44
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-static {v6}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/u;->g:Landroid/graphics/drawable/Drawable;

    .line 36
    iput v1, p0, Lcom/xueqiu/android/cube/a/u;->h:I

    .line 38
    invoke-static {v7}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/u;->i:Landroid/graphics/drawable/Drawable;

    .line 39
    iput v1, p0, Lcom/xueqiu/android/cube/a/u;->j:I

    .line 41
    invoke-static {v5}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/u;->k:Landroid/graphics/drawable/Drawable;

    .line 2089
    iget-object v0, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1133
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3089
    iget-object v1, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1134
    const v2, 0x7f0701ee

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4089
    iget-object v2, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1135
    const v3, 0x7f070570

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5089
    iget-object v1, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1136
    const v2, 0x7f070570

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    invoke-static {v5}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/u;->g:Landroid/graphics/drawable/Drawable;

    .line 1138
    invoke-static {v6}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/u;->i:Landroid/graphics/drawable/Drawable;

    .line 1139
    const v0, 0x7f0201e9

    iput v0, p0, Lcom/xueqiu/android/cube/a/u;->h:I

    .line 1140
    const v0, 0x7f0201ea

    iput v0, p0, Lcom/xueqiu/android/cube/a/u;->j:I

    .line 1147
    :goto_0
    invoke-static {v7}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/u;->k:Landroid/graphics/drawable/Drawable;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/u;->e:Landroid/view/LayoutInflater;

    .line 47
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 5293
    iput v4, v0, Lcom/d/a/b/e;->c:I

    .line 6270
    iput v4, v0, Lcom/d/a/b/e;->b:I

    .line 7248
    iput v4, v0, Lcom/d/a/b/e;->a:I

    .line 50
    new-instance v1, Lcom/d/a/b/c/c;

    const/high16 v2, 0x42200000    # 40.0f

    .line 51
    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v2}, Lcom/d/a/b/c/c;-><init>(I)V

    .line 7445
    iput-object v1, v0, Lcom/d/a/b/e;->q:Lcom/d/a/b/c/a;

    .line 52
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/u;->f:Lcom/d/a/b/d;

    .line 53
    return-void

    .line 1142
    :cond_0
    invoke-static {v6}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/u;->g:Landroid/graphics/drawable/Drawable;

    .line 1143
    invoke-static {v5}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/u;->i:Landroid/graphics/drawable/Drawable;

    .line 1144
    const v0, 0x7f0201eb

    iput v0, p0, Lcom/xueqiu/android/cube/a/u;->h:I

    .line 1145
    const v0, 0x7f0201e8

    iput v0, p0, Lcom/xueqiu/android/cube/a/u;->j:I

    goto :goto_0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 58
    if-nez p2, :cond_0

    .line 59
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/u;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f030104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 60
    new-instance v0, Lcom/xueqiu/android/cube/a/v;

    invoke-direct {v0, p0, p2}, Lcom/xueqiu/android/cube/a/v;-><init>(Lcom/xueqiu/android/cube/a/u;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/a/u;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Cube;

    .line 64
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/cube/a/v;

    .line 65
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/v;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/v;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getGainOnLevel()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 69
    const-wide v2, 0x408f400000000000L    # 1000.0

    cmpl-double v2, v4, v2

    if-lez v2, :cond_2

    .line 70
    iget-object v3, v1, Lcom/xueqiu/android/cube/a/v;->g:Landroid/widget/TextView;

    const-string v6, "%s%.1f%%"

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    cmpl-double v2, v4, v10

    if-lez v2, :cond_1

    const-string v2, "+"

    :goto_0
    aput-object v2, v7, v8

    const/4 v2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_6

    .line 76
    const-wide/16 v2, 0x0

    cmpl-double v2, v4, v2

    if-lez v2, :cond_4

    .line 77
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/v;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xueqiu/android/cube/a/u;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 93
    :goto_2
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getProfileLargeImageUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/xueqiu/android/cube/a/v;->b:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/xueqiu/android/cube/a/u;->f:Lcom/d/a/b/d;

    new-instance v6, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v6}, Lcom/xueqiu/android/base/util/o;-><init>()V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 95
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getRank()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_c

    .line 96
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/v;->a:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/v;->d:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getRank()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 99
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/v;->a:Landroid/widget/ImageView;

    const v3, 0x7f020202

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    :goto_3
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/v;->c:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getTrend()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_e

    .line 121
    iget-object v0, v1, Lcom/xueqiu/android/cube/a/v;->c:Landroid/widget/ImageView;

    const v1, 0x7f020239

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    :goto_4
    return-object p2

    .line 70
    :cond_1
    const-string v2, ""

    goto/16 :goto_0

    .line 72
    :cond_2
    iget-object v3, v1, Lcom/xueqiu/android/cube/a/v;->g:Landroid/widget/TextView;

    const-string v6, "%s%.2f%%"

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    cmpl-double v2, v4, v10

    if-lez v2, :cond_3

    const-string v2, "+"

    :goto_5
    aput-object v2, v7, v8

    const/4 v2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    const-string v2, ""

    goto :goto_5

    .line 78
    :cond_4
    const-wide/16 v2, 0x0

    cmpg-double v2, v4, v2

    if-gez v2, :cond_5

    .line 79
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/v;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xueqiu/android/cube/a/u;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 81
    :cond_5
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/v;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xueqiu/android/cube/a/u;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 84
    :cond_6
    const-wide/16 v2, 0x0

    cmpl-double v2, v4, v2

    if-lez v2, :cond_7

    .line 85
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/v;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xueqiu/android/cube/a/u;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 86
    :cond_7
    const-wide/16 v2, 0x0

    cmpg-double v2, v4, v2

    if-gez v2, :cond_8

    .line 87
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/v;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xueqiu/android/cube/a/u;->i:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 89
    :cond_8
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/v;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xueqiu/android/cube/a/u;->k:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 100
    :cond_9
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getRank()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 101
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/v;->a:Landroid/widget/ImageView;

    const v3, 0x7f020203

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 102
    :cond_a
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getRank()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    .line 103
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/v;->a:Landroid/widget/ImageView;

    const v3, 0x7f020201

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 105
    :cond_b
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/v;->a:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 108
    :cond_c
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/v;->a:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/v;->d:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getRank()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_d

    .line 112
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/v;->d:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 116
    :goto_6
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/v;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getRank()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 114
    :cond_d
    iget-object v2, v1, Lcom/xueqiu/android/cube/a/v;->d:Landroid/widget/TextView;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_6

    .line 122
    :cond_e
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getTrend()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    .line 123
    iget-object v0, v1, Lcom/xueqiu/android/cube/a/v;->c:Landroid/widget/ImageView;

    iget v1, p0, Lcom/xueqiu/android/cube/a/u;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 124
    :cond_f
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getTrend()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_10

    .line 125
    iget-object v0, v1, Lcom/xueqiu/android/cube/a/v;->c:Landroid/widget/ImageView;

    iget v1, p0, Lcom/xueqiu/android/cube/a/u;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 127
    :cond_10
    iget-object v0, v1, Lcom/xueqiu/android/cube/a/v;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4
.end method
