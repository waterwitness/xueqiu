.class public Lcom/xueqiu/android/community/a/at;
.super Landroid/widget/BaseAdapter;
.source "UserGuideRecommendAdapter.java"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/a/av;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/xueqiu/android/community/a/aw;

.field private d:Landroid/content/Context;

.field private e:Lcom/d/a/b/f;

.field private f:Lcom/d/a/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/xueqiu/android/community/a/at;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/community/a/at;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const v1, 0x7f020208

    .line 72
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    .line 51
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/at;->e:Lcom/d/a/b/f;

    .line 55
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 1270
    iput v1, v0, Lcom/d/a/b/e;->b:I

    .line 1293
    iput v1, v0, Lcom/d/a/b/e;->c:I

    .line 2248
    iput v1, v0, Lcom/d/a/b/e;->a:I

    .line 58
    new-instance v1, Lcom/d/a/b/c/c;

    const/high16 v2, 0x42920000    # 73.0f

    .line 59
    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v2}, Lcom/d/a/b/c/c;-><init>(I)V

    .line 2445
    iput-object v1, v0, Lcom/d/a/b/e;->q:Lcom/d/a/b/c/a;

    .line 59
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/at;->f:Lcom/d/a/b/d;

    .line 73
    iput-object p1, p0, Lcom/xueqiu/android/community/a/at;->d:Landroid/content/Context;

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/a/at;)Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Z)Z
    .locals 1

    .prologue
    .line 41
    .line 2463
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 41
    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/a/at;)Lcom/xueqiu/android/community/a/aw;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at;->b:Lcom/xueqiu/android/community/a/aw;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/a/at;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at;->d:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/RecommendStock;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/RecommendCube;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 88
    if-eqz p1, :cond_2

    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 90
    if-lt v0, v6, :cond_0

    move v0, v2

    .line 91
    :goto_0
    if-ge v0, v6, :cond_2

    .line 92
    new-instance v1, Lcom/xueqiu/android/community/a/av;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/av;-><init>(Lcom/xueqiu/android/community/a/at;)V

    .line 93
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v1, Lcom/xueqiu/android/community/a/av;->a:Ljava/lang/Object;

    .line 94
    sget-object v3, Lcom/xueqiu/android/community/a/ay;->a:Lcom/xueqiu/android/community/a/ay;

    iput-object v3, v1, Lcom/xueqiu/android/community/a/av;->b:Lcom/xueqiu/android/community/a/ay;

    .line 95
    iput-boolean v5, v1, Lcom/xueqiu/android/community/a/av;->c:Z

    .line 96
    iget-object v3, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 99
    :goto_1
    if-ge v1, v0, :cond_1

    .line 100
    new-instance v3, Lcom/xueqiu/android/community/a/av;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/community/a/av;-><init>(Lcom/xueqiu/android/community/a/at;)V

    .line 101
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lcom/xueqiu/android/community/a/av;->a:Ljava/lang/Object;

    .line 102
    sget-object v4, Lcom/xueqiu/android/community/a/ay;->a:Lcom/xueqiu/android/community/a/ay;

    iput-object v4, v3, Lcom/xueqiu/android/community/a/av;->b:Lcom/xueqiu/android/community/a/ay;

    .line 103
    iput-boolean v5, v3, Lcom/xueqiu/android/community/a/av;->c:Z

    .line 104
    iget-object v4, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 106
    :cond_1
    :goto_2
    if-ge v0, v6, :cond_2

    .line 107
    new-instance v1, Lcom/xueqiu/android/community/a/av;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/av;-><init>(Lcom/xueqiu/android/community/a/at;)V

    .line 109
    iput-object v7, v1, Lcom/xueqiu/android/community/a/av;->a:Ljava/lang/Object;

    .line 110
    sget-object v3, Lcom/xueqiu/android/community/a/ay;->a:Lcom/xueqiu/android/community/a/ay;

    iput-object v3, v1, Lcom/xueqiu/android/community/a/av;->b:Lcom/xueqiu/android/community/a/ay;

    .line 111
    iput-boolean v2, v1, Lcom/xueqiu/android/community/a/av;->c:Z

    .line 112
    iget-object v3, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 116
    :cond_2
    if-eqz p2, :cond_5

    .line 117
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 118
    if-lt v0, v6, :cond_3

    .line 119
    :goto_3
    if-ge v2, v0, :cond_5

    .line 120
    new-instance v1, Lcom/xueqiu/android/community/a/av;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/av;-><init>(Lcom/xueqiu/android/community/a/at;)V

    .line 121
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v1, Lcom/xueqiu/android/community/a/av;->a:Ljava/lang/Object;

    .line 122
    sget-object v3, Lcom/xueqiu/android/community/a/ay;->b:Lcom/xueqiu/android/community/a/ay;

    iput-object v3, v1, Lcom/xueqiu/android/community/a/av;->b:Lcom/xueqiu/android/community/a/ay;

    .line 123
    iput-boolean v5, v1, Lcom/xueqiu/android/community/a/av;->c:Z

    .line 124
    iget-object v3, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    move v1, v2

    .line 127
    :goto_4
    if-ge v1, v0, :cond_4

    .line 128
    new-instance v3, Lcom/xueqiu/android/community/a/av;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/community/a/av;-><init>(Lcom/xueqiu/android/community/a/at;)V

    .line 129
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lcom/xueqiu/android/community/a/av;->a:Ljava/lang/Object;

    .line 130
    sget-object v4, Lcom/xueqiu/android/community/a/ay;->b:Lcom/xueqiu/android/community/a/ay;

    iput-object v4, v3, Lcom/xueqiu/android/community/a/av;->b:Lcom/xueqiu/android/community/a/ay;

    .line 131
    iput-boolean v5, v3, Lcom/xueqiu/android/community/a/av;->c:Z

    .line 132
    iget-object v4, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 134
    :cond_4
    :goto_5
    if-ge v0, v6, :cond_5

    .line 135
    new-instance v1, Lcom/xueqiu/android/community/a/av;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/av;-><init>(Lcom/xueqiu/android/community/a/at;)V

    .line 137
    iput-object v7, v1, Lcom/xueqiu/android/community/a/av;->a:Ljava/lang/Object;

    .line 138
    sget-object v3, Lcom/xueqiu/android/community/a/ay;->b:Lcom/xueqiu/android/community/a/ay;

    iput-object v3, v1, Lcom/xueqiu/android/community/a/av;->b:Lcom/xueqiu/android/community/a/ay;

    .line 139
    iput-boolean v2, v1, Lcom/xueqiu/android/community/a/av;->c:Z

    .line 140
    iget-object v3, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 145
    :cond_5
    if-eqz p3, :cond_6

    .line 146
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/RecommendCube;

    .line 147
    new-instance v2, Lcom/xueqiu/android/community/a/av;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/a/av;-><init>(Lcom/xueqiu/android/community/a/at;)V

    .line 148
    iput-object v0, v2, Lcom/xueqiu/android/community/a/av;->a:Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/xueqiu/android/community/a/ay;->c:Lcom/xueqiu/android/community/a/ay;

    iput-object v0, v2, Lcom/xueqiu/android/community/a/av;->b:Lcom/xueqiu/android/community/a/ay;

    .line 150
    iput-boolean v5, v2, Lcom/xueqiu/android/community/a/av;->c:Z

    .line 151
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 154
    :cond_6
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/av;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 172
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 442
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    .line 453
    :goto_0
    return v0

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/av;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/av;->b:Lcom/xueqiu/android/community/a/ay;

    sget-object v1, Lcom/xueqiu/android/community/a/ay;->a:Lcom/xueqiu/android/community/a/ay;

    if-ne v0, v1, :cond_1

    .line 446
    sget-object v0, Lcom/xueqiu/android/community/a/ay;->a:Lcom/xueqiu/android/community/a/ay;

    iget v0, v0, Lcom/xueqiu/android/community/a/ay;->d:I

    goto :goto_0

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/av;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/av;->b:Lcom/xueqiu/android/community/a/ay;

    sget-object v1, Lcom/xueqiu/android/community/a/ay;->b:Lcom/xueqiu/android/community/a/ay;

    if-ne v0, v1, :cond_2

    .line 448
    sget-object v0, Lcom/xueqiu/android/community/a/ay;->b:Lcom/xueqiu/android/community/a/ay;

    iget v0, v0, Lcom/xueqiu/android/community/a/ay;->d:I

    goto :goto_0

    .line 449
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/av;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/av;->b:Lcom/xueqiu/android/community/a/ay;

    sget-object v1, Lcom/xueqiu/android/community/a/ay;->c:Lcom/xueqiu/android/community/a/ay;

    if-ne v0, v1, :cond_3

    .line 450
    sget-object v0, Lcom/xueqiu/android/community/a/ay;->c:Lcom/xueqiu/android/community/a/ay;

    iget v0, v0, Lcom/xueqiu/android/community/a/ay;->d:I

    goto :goto_0

    .line 453
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const/high16 v8, 0x42900000    # 72.0f

    const/16 v10, 0x8

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 177
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    if-nez v0, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-object v1

    .line 180
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/a/at;->getItemViewType(I)I

    move-result v6

    .line 185
    if-nez p2, :cond_6

    .line 186
    sget-object v0, Lcom/xueqiu/android/community/a/ay;->a:Lcom/xueqiu/android/community/a/ay;

    iget v0, v0, Lcom/xueqiu/android/community/a/ay;->d:I

    if-ne v6, v0, :cond_4

    .line 187
    new-instance v2, Lcom/xueqiu/android/community/a/az;

    invoke-direct {v2, v5}, Lcom/xueqiu/android/community/a/az;-><init>(B)V

    .line 188
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f03008e

    invoke-virtual {v0, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 190
    const v0, 0x7f0e011c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/xueqiu/android/community/a/az;->b:Landroid/widget/ImageView;

    .line 191
    const v0, 0x7f0e0260

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/xueqiu/android/community/a/az;->c:Landroid/widget/TextView;

    .line 192
    const v0, 0x7f0e0261

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/xueqiu/android/community/a/az;->d:Landroid/widget/TextView;

    .line 193
    const v0, 0x7f0e01fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/xueqiu/android/community/a/az;->e:Landroid/view/View;

    .line 194
    const v0, 0x7f0e025f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/xueqiu/android/community/a/az;->f:Landroid/widget/ImageView;

    .line 195
    const v0, 0x7f0e0268

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v2, Lcom/xueqiu/android/community/a/az;->a:Landroid/widget/RelativeLayout;

    .line 196
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, v1

    move-object v4, v2

    move-object v2, v1

    .line 234
    :goto_1
    sget-object v0, Lcom/xueqiu/android/community/a/ay;->a:Lcom/xueqiu/android/community/a/ay;

    iget v0, v0, Lcom/xueqiu/android/community/a/ay;->d:I

    if-ne v6, v0, :cond_b

    .line 235
    sget-object v2, Lcom/xueqiu/android/community/a/at;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "getView is instance of User"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/av;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/av;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/av;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/av;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/xueqiu/android/community/model/User;

    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/av;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/av;->a:Ljava/lang/Object;

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 238
    if-eqz v0, :cond_0

    .line 241
    iget-object v1, p0, Lcom/xueqiu/android/community/a/at;->e:Lcom/d/a/b/f;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProfileLargeImageUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v4, Lcom/xueqiu/android/community/a/az;->b:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/xueqiu/android/community/a/at;->f:Lcom/d/a/b/d;

    invoke-virtual {v1, v2, v3, v6}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 242
    iget-object v1, v4, Lcom/xueqiu/android/community/a/az;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v1, v4, Lcom/xueqiu/android/community/a/az;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getRecommendReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v1, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/av;

    iget-boolean v1, v1, Lcom/xueqiu/android/community/a/av;->c:Z

    if-eqz v1, :cond_9

    .line 245
    iget-object v1, v4, Lcom/xueqiu/android/community/a/az;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    :goto_2
    iget-object v1, v4, Lcom/xueqiu/android/community/a/az;->a:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/xueqiu/android/community/a/at$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/xueqiu/android/community/a/at$1;-><init>(Lcom/xueqiu/android/community/a/at;ILcom/xueqiu/android/community/model/User;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    rem-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_a

    .line 275
    iget-object v0, v4, Lcom/xueqiu/android/community/a/az;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 278
    const/high16 v1, 0x41a00000    # 20.0f

    :try_start_0
    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    float-to-int v1, v1

    .line 282
    :goto_3
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 283
    iget-object v1, v4, Lcom/xueqiu/android/community/a/az;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    :cond_2
    :goto_4
    div-int/lit8 v0, p1, 0x3

    if-gtz v0, :cond_3

    .line 298
    iget-object v0, v4, Lcom/xueqiu/android/community/a/az;->e:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 301
    const/high16 v0, 0x41a00000    # 20.0f

    :try_start_1
    invoke-static {v0}, Lcom/xueqiu/android/base/util/ay;->a(F)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    float-to-int v0, v0

    .line 305
    :goto_5
    iget-object v1, v4, Lcom/xueqiu/android/community/a/az;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5, v0, v5, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :cond_3
    :goto_6
    move-object v1, p2

    .line 431
    goto/16 :goto_0

    .line 197
    :cond_4
    sget-object v0, Lcom/xueqiu/android/community/a/ay;->b:Lcom/xueqiu/android/community/a/ay;

    iget v0, v0, Lcom/xueqiu/android/community/a/ay;->d:I

    if-ne v6, v0, :cond_5

    .line 198
    new-instance v2, Lcom/xueqiu/android/community/a/ax;

    invoke-direct {v2, v5}, Lcom/xueqiu/android/community/a/ax;-><init>(B)V

    .line 199
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f03008d

    invoke-virtual {v0, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 201
    const v0, 0x7f0e0264

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/xueqiu/android/community/a/ax;->b:Landroid/widget/LinearLayout;

    .line 202
    const v0, 0x7f0e0265

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/xueqiu/android/community/a/ax;->c:Landroid/widget/TextView;

    .line 203
    const v0, 0x7f0e0266

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/xueqiu/android/community/a/ax;->d:Landroid/widget/TextView;

    .line 205
    const v0, 0x7f0e0260

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/xueqiu/android/community/a/ax;->e:Landroid/widget/TextView;

    .line 206
    const v0, 0x7f0e0267

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/xueqiu/android/community/a/ax;->f:Landroid/widget/TextView;

    .line 207
    const v0, 0x7f0e01fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/xueqiu/android/community/a/ax;->g:Landroid/view/View;

    .line 208
    const v0, 0x7f0e025f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/xueqiu/android/community/a/ax;->h:Landroid/widget/ImageView;

    .line 209
    const v0, 0x7f0e0262

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v2, Lcom/xueqiu/android/community/a/ax;->a:Landroid/widget/RelativeLayout;

    .line 210
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, v2

    move-object v4, v1

    move-object v2, v1

    goto/16 :goto_1

    .line 211
    :cond_5
    sget-object v0, Lcom/xueqiu/android/community/a/ay;->c:Lcom/xueqiu/android/community/a/ay;

    iget v0, v0, Lcom/xueqiu/android/community/a/ay;->d:I

    if-ne v6, v0, :cond_14

    .line 212
    new-instance v2, Lcom/xueqiu/android/community/a/au;

    invoke-direct {v2, v5}, Lcom/xueqiu/android/community/a/au;-><init>(B)V

    .line 213
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f03008c

    invoke-virtual {v0, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 215
    const v0, 0x7f0e025c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/xueqiu/android/community/a/au;->b:Landroid/widget/LinearLayout;

    .line 216
    const v0, 0x7f0e025d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/xueqiu/android/community/a/au;->c:Landroid/widget/TextView;

    .line 217
    const v0, 0x7f0e0260

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/xueqiu/android/community/a/au;->d:Landroid/widget/TextView;

    .line 218
    const v0, 0x7f0e0261

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/xueqiu/android/community/a/au;->e:Landroid/widget/TextView;

    .line 219
    const v0, 0x7f0e01fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/xueqiu/android/community/a/au;->f:Landroid/view/View;

    .line 220
    const v0, 0x7f0e025f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/xueqiu/android/community/a/au;->g:Landroid/widget/ImageView;

    .line 221
    const v0, 0x7f0e025b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v2, Lcom/xueqiu/android/community/a/au;->a:Landroid/widget/RelativeLayout;

    .line 222
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, v1

    move-object v4, v1

    goto/16 :goto_1

    .line 225
    :cond_6
    sget-object v0, Lcom/xueqiu/android/community/a/ay;->a:Lcom/xueqiu/android/community/a/ay;

    iget v0, v0, Lcom/xueqiu/android/community/a/ay;->d:I

    if-ne v6, v0, :cond_7

    .line 226
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/az;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v0

    goto/16 :goto_1

    .line 227
    :cond_7
    sget-object v0, Lcom/xueqiu/android/community/a/ay;->b:Lcom/xueqiu/android/community/a/ay;

    iget v0, v0, Lcom/xueqiu/android/community/a/ay;->d:I

    if-ne v6, v0, :cond_8

    .line 228
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/ax;

    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    goto/16 :goto_1

    .line 229
    :cond_8
    sget-object v0, Lcom/xueqiu/android/community/a/ay;->c:Lcom/xueqiu/android/community/a/ay;

    iget v0, v0, Lcom/xueqiu/android/community/a/ay;->d:I

    if-ne v6, v0, :cond_14

    .line 230
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/au;

    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    goto/16 :goto_1

    .line 247
    :cond_9
    iget-object v1, v4, Lcom/xueqiu/android/community/a/az;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 279
    :catch_0
    move-exception v1

    .line 280
    sget-object v2, Lcom/xueqiu/android/community/a/at;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Exception e = "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v5

    goto/16 :goto_3

    .line 284
    :cond_a
    rem-int/lit8 v0, p1, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 285
    iget-object v0, v4, Lcom/xueqiu/android/community/a/az;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 288
    const/high16 v1, 0x41a00000    # 20.0f

    :try_start_2
    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    float-to-int v1, v1

    .line 292
    :goto_7
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 293
    iget-object v1, v4, Lcom/xueqiu/android/community/a/az;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 289
    :catch_1
    move-exception v1

    .line 290
    sget-object v2, Lcom/xueqiu/android/community/a/at;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Exception e = "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v5

    goto :goto_7

    .line 302
    :catch_2
    move-exception v0

    .line 303
    sget-object v1, Lcom/xueqiu/android/community/a/at;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v5

    goto/16 :goto_5

    .line 308
    :cond_b
    sget-object v0, Lcom/xueqiu/android/community/a/ay;->b:Lcom/xueqiu/android/community/a/ay;

    iget v0, v0, Lcom/xueqiu/android/community/a/ay;->d:I

    if-ne v6, v0, :cond_12

    .line 309
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/av;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/av;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/xueqiu/android/community/model/RecommendStock;

    if-eqz v0, :cond_3

    .line 310
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/av;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/av;->a:Ljava/lang/Object;

    check-cast v0, Lcom/xueqiu/android/community/model/RecommendStock;

    .line 311
    if-eqz v0, :cond_0

    .line 316
    :try_start_3
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RecommendStock;->getCurrent()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    .line 321
    :goto_8
    iget-object v2, v3, Lcom/xueqiu/android/community/a/ax;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v1, v3, Lcom/xueqiu/android/community/a/ax;->d:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v4, "%+.2f(%+.2f%%)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RecommendStock;->getChange()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v5

    const/4 v7, 0x1

    .line 323
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RecommendStock;->getPercentage()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    .line 322
    invoke-static {v2, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v1, v3, Lcom/xueqiu/android/community/a/ax;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RecommendStock;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v1, v3, Lcom/xueqiu/android/community/a/ax;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RecommendStock;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v1, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/av;

    iget-boolean v1, v1, Lcom/xueqiu/android/community/a/av;->c:Z

    if-eqz v1, :cond_e

    .line 327
    iget-object v1, v3, Lcom/xueqiu/android/community/a/ax;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    :goto_9
    iget-object v1, v3, Lcom/xueqiu/android/community/a/ax;->a:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/xueqiu/android/community/a/at$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/xueqiu/android/community/a/at$2;-><init>(Lcom/xueqiu/android/community/a/at;ILcom/xueqiu/android/community/model/RecommendStock;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    rem-int/lit8 v1, p1, 0x3

    if-nez v1, :cond_f

    .line 349
    iget-object v1, v3, Lcom/xueqiu/android/community/a/ax;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 352
    const/high16 v2, 0x41a00000    # 20.0f

    :try_start_4
    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v2

    float-to-int v2, v2

    .line 356
    :goto_a
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 357
    iget-object v2, v3, Lcom/xueqiu/android/community/a/ax;->g:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    :cond_c
    :goto_b
    div-int/lit8 v1, p1, 0x3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    .line 372
    iget-object v1, v3, Lcom/xueqiu/android/community/a/ax;->g:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 375
    const/high16 v1, 0x41a00000    # 20.0f

    :try_start_5
    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-result v1

    float-to-int v1, v1

    .line 379
    :goto_c
    iget-object v2, v3, Lcom/xueqiu/android/community/a/ax;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5, v1, v5, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 382
    :cond_d
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RecommendStock;->getChange()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_10

    .line 383
    iget-object v0, v3, Lcom/xueqiu/android/community/a/ax;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f0d011c

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_6

    .line 317
    :catch_3
    move-exception v1

    move-object v2, v1

    .line 318
    const-string v1, ""

    .line 319
    sget-object v4, Lcom/xueqiu/android/community/a/at;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "exception = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 329
    :cond_e
    iget-object v1, v3, Lcom/xueqiu/android/community/a/ax;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9

    .line 353
    :catch_4
    move-exception v2

    .line 354
    sget-object v4, Lcom/xueqiu/android/community/a/at;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception e = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v5

    goto :goto_a

    .line 358
    :cond_f
    rem-int/lit8 v1, p1, 0x3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 359
    iget-object v1, v3, Lcom/xueqiu/android/community/a/ax;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 362
    const/high16 v2, 0x41a00000    # 20.0f

    :try_start_6
    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result v2

    float-to-int v2, v2

    .line 366
    :goto_d
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 367
    iget-object v2, v3, Lcom/xueqiu/android/community/a/ax;->g:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_b

    .line 363
    :catch_5
    move-exception v2

    .line 364
    sget-object v4, Lcom/xueqiu/android/community/a/at;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception e = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v5

    goto :goto_d

    .line 376
    :catch_6
    move-exception v1

    .line 377
    sget-object v2, Lcom/xueqiu/android/community/a/at;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Exception e = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v5

    goto/16 :goto_c

    .line 384
    :cond_10
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RecommendStock;->getChange()D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_11

    .line 385
    iget-object v0, v3, Lcom/xueqiu/android/community/a/ax;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0118

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_6

    .line 387
    :cond_11
    iget-object v0, v3, Lcom/xueqiu/android/community/a/ax;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f0d011a

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_6

    .line 390
    :cond_12
    sget-object v0, Lcom/xueqiu/android/community/a/ay;->c:Lcom/xueqiu/android/community/a/ay;

    iget v0, v0, Lcom/xueqiu/android/community/a/ay;->d:I

    if-ne v6, v0, :cond_3

    .line 391
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/av;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/av;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/xueqiu/android/cube/model/RecommendCube;

    if-eqz v0, :cond_3

    .line 392
    iget-object v0, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/av;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/av;->a:Ljava/lang/Object;

    check-cast v0, Lcom/xueqiu/android/cube/model/RecommendCube;

    .line 393
    if-eqz v0, :cond_0

    .line 396
    iget-object v1, v2, Lcom/xueqiu/android/community/a/au;->c:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "%.2f%%"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RecommendCube;->getCube()Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xueqiu/android/cube/model/Cube;->getTotalGain()Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v1, v2, Lcom/xueqiu/android/community/a/au;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RecommendCube;->getCube()Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v1, v2, Lcom/xueqiu/android/community/a/au;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RecommendCube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u4e3b\u7406"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 400
    invoke-static {v8}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v8}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 401
    new-instance v3, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 402
    invoke-static {v8}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v4

    invoke-static {v8}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v6

    invoke-virtual {v3, v4, v6}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    .line 403
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RecommendCube;->getCube()Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xueqiu/android/cube/model/Cube;->getStyle()Lcom/xueqiu/android/cube/model/Style;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xueqiu/android/cube/model/Style;->getColor0()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 404
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 405
    iget-object v3, v2, Lcom/xueqiu/android/community/a/au;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    iget-object v1, p0, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/av;

    iget-boolean v1, v1, Lcom/xueqiu/android/community/a/av;->c:Z

    if-eqz v1, :cond_13

    .line 408
    iget-object v1, v2, Lcom/xueqiu/android/community/a/au;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 412
    :goto_e
    iget-object v1, v2, Lcom/xueqiu/android/community/a/au;->a:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/xueqiu/android/community/a/at$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/xueqiu/android/community/a/at$3;-><init>(Lcom/xueqiu/android/community/a/at;ILcom/xueqiu/android/cube/model/RecommendCube;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 410
    :cond_13
    iget-object v1, v2, Lcom/xueqiu/android/community/a/au;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_e

    :cond_14
    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x3

    return v0
.end method
