.class public final Lcom/xueqiu/android/community/a/y;
.super Landroid/support/v7/widget/s;
.source "RecommendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/s",
        "<",
        "Landroid/support/v7/widget/ao;",
        ">;"
    }
.end annotation


# instance fields
.field c:Landroid/content/Context;

.field d:J

.field e:Lcom/xueqiu/android/base/b/ai;

.field private f:Landroid/view/LayoutInflater;

.field private g:I

.field private h:Lcom/google/gson/JsonArray;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/d/a/b/d;

.field private k:Lcom/d/a/b/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/google/gson/JsonArray;)V
    .locals 3

    .prologue
    const v2, 0x7f020208

    .line 95
    invoke-direct {p0}, Landroid/support/v7/widget/s;-><init>()V

    .line 81
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xueqiu/android/community/a/y;->d:J

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/a/y;->i:Ljava/util/List;

    .line 85
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 5270
    iput v2, v0, Lcom/d/a/b/e;->b:I

    .line 5293
    iput v2, v0, Lcom/d/a/b/e;->c:I

    .line 6248
    iput v2, v0, Lcom/d/a/b/e;->a:I

    .line 88
    new-instance v1, Lcom/d/a/b/c/c;

    const/high16 v2, 0x42960000    # 75.0f

    .line 89
    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v2}, Lcom/d/a/b/c/c;-><init>(I)V

    .line 6445
    iput-object v1, v0, Lcom/d/a/b/e;->q:Lcom/d/a/b/c/a;

    .line 89
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/y;->j:Lcom/d/a/b/d;

    .line 91
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/y;->k:Lcom/d/a/b/f;

    .line 93
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/y;->e:Lcom/xueqiu/android/base/b/ai;

    .line 96
    iput-object p1, p0, Lcom/xueqiu/android/community/a/y;->c:Landroid/content/Context;

    .line 97
    iput p2, p0, Lcom/xueqiu/android/community/a/y;->g:I

    .line 98
    iput-object p3, p0, Lcom/xueqiu/android/community/a/y;->h:Lcom/google/gson/JsonArray;

    .line 99
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/y;->f:Landroid/view/LayoutInflater;

    .line 100
    invoke-direct {p0}, Lcom/xueqiu/android/community/a/y;->c()V

    .line 101
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/xueqiu/android/community/a/y;->h:Lcom/google/gson/JsonArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/a/y;->h:Lcom/google/gson/JsonArray;

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget v0, p0, Lcom/xueqiu/android/community/a/y;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 109
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/a/y;->h:Lcom/google/gson/JsonArray;

    new-instance v2, Lcom/xueqiu/android/community/a/y$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/a/y$1;-><init>(Lcom/xueqiu/android/community/a/y;)V

    .line 110
    invoke-virtual {v2}, Lcom/xueqiu/android/community/a/y$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/xueqiu/android/community/a/y;->i:Ljava/util/List;

    goto :goto_0

    .line 111
    :cond_2
    iget v0, p0, Lcom/xueqiu/android/community/a/y;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 112
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/a/y;->h:Lcom/google/gson/JsonArray;

    new-instance v2, Lcom/xueqiu/android/community/a/y$7;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/a/y$7;-><init>(Lcom/xueqiu/android/community/a/y;)V

    .line 113
    invoke-virtual {v2}, Lcom/xueqiu/android/community/a/y$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 112
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/xueqiu/android/community/a/y;->i:Ljava/util/List;

    goto :goto_0

    .line 114
    :cond_3
    iget v0, p0, Lcom/xueqiu/android/community/a/y;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 115
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/a/y;->h:Lcom/google/gson/JsonArray;

    new-instance v2, Lcom/xueqiu/android/community/a/y$8;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/a/y$8;-><init>(Lcom/xueqiu/android/community/a/y;)V

    .line 116
    invoke-virtual {v2}, Lcom/xueqiu/android/community/a/y$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 115
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/xueqiu/android/community/a/y;->i:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/xueqiu/android/community/a/y;->i:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/a/y;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;)Landroid/support/v7/widget/ao;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 124
    iget v0, p0, Lcom/xueqiu/android/community/a/y;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 125
    new-instance v0, Lcom/xueqiu/android/community/a/z;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/y;->f:Landroid/view/LayoutInflater;

    const v2, 0x7f0300af

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/community/a/z;-><init>(Landroid/view/View;)V

    .line 131
    :goto_0
    return-object v0

    .line 126
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/community/a/y;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 127
    new-instance v0, Lcom/xueqiu/android/community/a/ab;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/y;->f:Landroid/view/LayoutInflater;

    const v2, 0x7f0300b1

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/community/a/ab;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 129
    :cond_1
    new-instance v0, Lcom/xueqiu/android/community/a/aa;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/y;->f:Landroid/view/LayoutInflater;

    const v2, 0x7f0300b0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/community/a/aa;-><init>(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/widget/ao;I)V
    .locals 12

    .prologue
    const v11, 0x7f020146

    const v8, 0x7f020145

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 137
    iget v0, p0, Lcom/xueqiu/android/community/a/y;->g:I

    if-ne v0, v9, :cond_6

    .line 138
    iget-object v0, p0, Lcom/xueqiu/android/community/a/y;->i:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 139
    check-cast p1, Lcom/xueqiu/android/community/a/z;

    .line 7220
    const-string v1, "cube"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 7221
    iget-object v1, p1, Lcom/xueqiu/android/community/a/z;->n:Landroid/widget/TextView;

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7222
    const-string v1, "total_gain"

    invoke-virtual {v3, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v4

    .line 7223
    iget-object v1, p1, Lcom/xueqiu/android/community/a/z;->m:Landroid/widget/TextView;

    const-string v6, "%+.2f%%"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7225
    const-string v1, "has_exist"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7226
    iget-object v1, p1, Lcom/xueqiu/android/community/a/z;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7231
    :goto_0
    iget-object v1, p1, Lcom/xueqiu/android/community/a/z;->o:Landroid/widget/TextView;

    const-string v4, "recommend_reason"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7233
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    const-string v4, "owner"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    const-class v5, Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/User;

    .line 7234
    iget-object v4, p0, Lcom/xueqiu/android/community/a/y;->k:Lcom/d/a/b/f;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/xueqiu/android/community/a/z;->p:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/xueqiu/android/community/a/y;->j:Lcom/d/a/b/d;

    invoke-virtual {v4, v5, v6, v7}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 7235
    iget-object v4, p1, Lcom/xueqiu/android/community/a/z;->q:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7238
    const-string v1, "rank"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 7239
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 7240
    const-string v1, "sub_scores"

    invoke-virtual {v4, v1}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v6

    move v1, v2

    .line 7241
    :goto_2
    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 7242
    invoke-virtual {v6, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    .line 7243
    const-string v8, "score"

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7241
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7228
    :cond_0
    iget-object v1, p1, Lcom/xueqiu/android/community/a/z;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 7235
    :cond_1
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 7246
    :cond_2
    const-string v1, "level"

    invoke-virtual {v4, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    .line 7247
    if-ne v1, v9, :cond_4

    .line 7248
    iget-object v1, p1, Lcom/xueqiu/android/community/a/z;->l:Lcom/xueqiu/android/common/widget/RadarChart;

    const-string v7, "#ffaa00"

    invoke-virtual {v1, v7}, Lcom/xueqiu/android/common/widget/RadarChart;->setPaintColor(Ljava/lang/String;)V

    .line 7255
    :goto_3
    const-string v1, "total_score"

    invoke-virtual {v4, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v8

    .line 7256
    const-string v1, "max_total_score"

    invoke-virtual {v4, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v10

    .line 7258
    iget-object v1, p1, Lcom/xueqiu/android/community/a/z;->l:Lcom/xueqiu/android/common/widget/RadarChart;

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/RadarChart;->setDrawLabel(Z)V

    .line 7259
    iget-object v1, p1, Lcom/xueqiu/android/community/a/z;->l:Lcom/xueqiu/android/common/widget/RadarChart;

    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/RadarChart;->setOutRadius(F)V

    .line 7260
    iget-object v1, p1, Lcom/xueqiu/android/community/a/z;->l:Lcom/xueqiu/android/common/widget/RadarChart;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/RadarChart;->setInRadius(F)V

    .line 7261
    iget-object v1, p1, Lcom/xueqiu/android/community/a/z;->l:Lcom/xueqiu/android/common/widget/RadarChart;

    const/high16 v2, 0x40f00000    # 7.5f

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/RadarChart;->setSpacing(F)V

    .line 7262
    iget-object v1, p1, Lcom/xueqiu/android/community/a/z;->l:Lcom/xueqiu/android/common/widget/RadarChart;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/RadarChart;->setItemRadius(F)V

    .line 7263
    iget-object v1, p1, Lcom/xueqiu/android/community/a/z;->l:Lcom/xueqiu/android/common/widget/RadarChart;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/RadarChart;->setValueSize(F)V

    .line 7264
    iget-object v1, p1, Lcom/xueqiu/android/community/a/z;->l:Lcom/xueqiu/android/common/widget/RadarChart;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/RadarChart;->setCircleWidth(F)V

    .line 7265
    iget-object v1, p1, Lcom/xueqiu/android/community/a/z;->l:Lcom/xueqiu/android/common/widget/RadarChart;

    invoke-static {v8, v9}, Ljava/lang/Math;->rint(D)D

    move-result-wide v8

    double-to-int v2, v8

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/RadarChart;->setTotalScore(I)V

    .line 7266
    iget-object v1, p1, Lcom/xueqiu/android/community/a/z;->l:Lcom/xueqiu/android/common/widget/RadarChart;

    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    int-to-double v6, v2

    div-double v6, v10, v6

    double-to-int v2, v6

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/RadarChart;->setSubMaxScore(F)V

    .line 7267
    iget-object v1, p1, Lcom/xueqiu/android/community/a/z;->l:Lcom/xueqiu/android/common/widget/RadarChart;

    invoke-virtual {v1, v5}, Lcom/xueqiu/android/common/widget/RadarChart;->setScores(Ljava/util/List;)V

    .line 7268
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7269
    iget-object v1, p1, Lcom/xueqiu/android/community/a/z;->l:Lcom/xueqiu/android/common/widget/RadarChart;

    const v2, 0x7f0d00c9

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/RadarChart;->setRadarBg(I)V

    .line 7270
    iget-object v1, p1, Lcom/xueqiu/android/community/a/z;->l:Lcom/xueqiu/android/common/widget/RadarChart;

    const v2, 0x7f0d00cb

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/RadarChart;->setRadarCircle(I)V

    .line 7271
    iget-object v1, p1, Lcom/xueqiu/android/community/a/z;->l:Lcom/xueqiu/android/common/widget/RadarChart;

    const v2, 0x7f0d00cd

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/RadarChart;->setRadarPoint(I)V

    .line 7273
    :cond_3
    iget-object v1, p1, Lcom/xueqiu/android/community/a/z;->l:Lcom/xueqiu/android/common/widget/RadarChart;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/RadarChart;->invalidate()V

    .line 7275
    iget-object v1, p1, Lcom/xueqiu/android/community/a/z;->r:Landroid/widget/ImageView;

    new-instance v2, Lcom/xueqiu/android/community/a/y$13;

    invoke-direct {v2, p0, v0, v3}, Lcom/xueqiu/android/community/a/y$13;-><init>(Lcom/xueqiu/android/community/a/y;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7284
    iget-object v0, p1, Lcom/xueqiu/android/community/a/z;->k:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/xueqiu/android/community/a/y$14;

    invoke-direct {v1, p0, v3}, Lcom/xueqiu/android/community/a/y$14;-><init>(Lcom/xueqiu/android/community/a/y;Lcom/google/gson/JsonObject;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    :goto_4
    return-void

    .line 7249
    :cond_4
    if-ne v1, v10, :cond_5

    .line 7250
    iget-object v1, p1, Lcom/xueqiu/android/community/a/z;->l:Lcom/xueqiu/android/common/widget/RadarChart;

    const-string v7, "#ff7700"

    invoke-virtual {v1, v7}, Lcom/xueqiu/android/common/widget/RadarChart;->setPaintColor(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 7252
    :cond_5
    iget-object v1, p1, Lcom/xueqiu/android/community/a/z;->l:Lcom/xueqiu/android/common/widget/RadarChart;

    const-string v7, "#ff3333"

    invoke-virtual {v1, v7}, Lcom/xueqiu/android/common/widget/RadarChart;->setPaintColor(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 140
    :cond_6
    iget v0, p0, Lcom/xueqiu/android/community/a/y;->g:I

    if-ne v0, v10, :cond_8

    .line 141
    iget-object v0, p0, Lcom/xueqiu/android/community/a/y;->i:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 142
    check-cast p1, Lcom/xueqiu/android/community/a/ab;

    .line 8155
    iget-object v1, p0, Lcom/xueqiu/android/community/a/y;->k:Lcom/d/a/b/f;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProfileLargeImageUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/xueqiu/android/community/a/ab;->l:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/xueqiu/android/community/a/y;->j:Lcom/d/a/b/d;

    invoke-virtual {v1, v2, v3, v4}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 8156
    iget-object v1, p1, Lcom/xueqiu/android/community/a/ab;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8157
    iget-object v1, p1, Lcom/xueqiu/android/community/a/ab;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getRecommendReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8158
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 8159
    iget-object v1, p1, Lcom/xueqiu/android/community/a/ab;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8163
    :goto_5
    iget-object v1, p1, Lcom/xueqiu/android/community/a/ab;->o:Landroid/widget/ImageView;

    new-instance v2, Lcom/xueqiu/android/community/a/y$9;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/community/a/y$9;-><init>(Lcom/xueqiu/android/community/a/y;Lcom/xueqiu/android/community/model/User;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8172
    iget-object v1, p1, Lcom/xueqiu/android/community/a/ab;->k:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/xueqiu/android/community/a/y$10;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/community/a/y$10;-><init>(Lcom/xueqiu/android/community/a/y;Lcom/xueqiu/android/community/model/User;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 8161
    :cond_7
    iget-object v1, p1, Lcom/xueqiu/android/community/a/ab;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 144
    :cond_8
    iget-object v0, p0, Lcom/xueqiu/android/community/a/y;->i:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/RecommendStock;

    .line 145
    check-cast p1, Lcom/xueqiu/android/community/a/aa;

    .line 8186
    iget-object v1, p1, Lcom/xueqiu/android/community/a/aa;->l:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RecommendStock;->getChange()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 8187
    iget-object v1, p1, Lcom/xueqiu/android/community/a/aa;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RecommendStock;->getCurrent()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8188
    iget-object v1, p1, Lcom/xueqiu/android/community/a/aa;->n:Landroid/widget/TextView;

    const-string v3, "%+.2f(%+.2f%%)"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RecommendStock;->getChange()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RecommendStock;->getPercentage()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8189
    iget-object v1, p1, Lcom/xueqiu/android/community/a/aa;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RecommendStock;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8190
    iget-object v1, p1, Lcom/xueqiu/android/community/a/aa;->p:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RecommendStock;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8191
    iget-object v1, p1, Lcom/xueqiu/android/community/a/aa;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RecommendStock;->getRecommendReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8192
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RecommendStock;->isHasExist()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 8193
    iget-object v1, p1, Lcom/xueqiu/android/community/a/aa;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8197
    :goto_6
    iget-object v1, p1, Lcom/xueqiu/android/community/a/aa;->r:Landroid/widget/ImageView;

    new-instance v2, Lcom/xueqiu/android/community/a/y$11;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/community/a/y$11;-><init>(Lcom/xueqiu/android/community/a/y;Lcom/xueqiu/android/community/model/RecommendStock;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8206
    iget-object v1, p1, Lcom/xueqiu/android/community/a/aa;->k:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/xueqiu/android/community/a/y$12;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/community/a/y$12;-><init>(Lcom/xueqiu/android/community/a/y;Lcom/xueqiu/android/community/model/RecommendStock;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 8195
    :cond_9
    iget-object v1, p1, Lcom/xueqiu/android/community/a/aa;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6
.end method

.method public final a(Lcom/google/gson/JsonArray;)V
    .locals 1

    .prologue
    .line 446
    iput-object p1, p0, Lcom/xueqiu/android/community/a/y;->h:Lcom/google/gson/JsonArray;

    .line 447
    invoke-direct {p0}, Lcom/xueqiu/android/community/a/y;->c()V

    .line 8338
    iget-object v0, p0, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/widget/t;->a()V

    .line 449
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/xueqiu/android/community/a/y;->c()V

    .line 9338
    iget-object v0, p0, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/widget/t;->a()V

    .line 454
    return-void
.end method
