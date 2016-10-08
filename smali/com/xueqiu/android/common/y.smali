.class public Lcom/xueqiu/android/common/y;
.super Lcom/xueqiu/android/common/c;
.source "SuggestedFollowsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Lcom/xueqiu/android/common/z;

.field private ak:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private al:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private am:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private an:Landroid/os/Handler;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/GridView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/xueqiu/android/community/a/at;

.field private h:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/xueqiu/android/common/y;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/common/y;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/y;->ak:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/y;->al:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/y;->am:Ljava/util/List;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/y;->an:Landroid/os/Handler;

    .line 346
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/y;)Lcom/xueqiu/android/community/a/at;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->g:Lcom/xueqiu/android/community/a/at;

    return-object v0
.end method

.method private a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 201
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 202
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->d:Landroid/widget/GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/y;JZ)V
    .locals 3

    .prologue
    .line 39
    .line 2153
    if-eqz p3, :cond_1

    .line 2154
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->ak:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2155
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->ak:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    .line 2158
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->ak:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2159
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->ak:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/y;Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/y;->a(Lcom/android/volley/y;)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/y;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 2171
    if-eqz p2, :cond_1

    .line 2172
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->al:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2173
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->al:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    .line 2176
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->al:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2177
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->al:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/y;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->ak:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/y;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 2189
    if-eqz p2, :cond_1

    .line 2190
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->am:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2191
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->am:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    .line 2194
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->am:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2195
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->am:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/common/y;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->al:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/common/y;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->am:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/common/y;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->d:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/common/y;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/xueqiu/android/common/y;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->c:Landroid/view/View;

    .line 70
    :goto_0
    return-object v0

    .line 68
    :cond_0
    const v0, 0x7f030153

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/y;->c:Landroid/view/View;

    .line 69
    iget-object v1, p0, Lcom/xueqiu/android/common/y;->c:Landroid/view/View;

    .line 1074
    const v0, 0x7f0e0365

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/xueqiu/android/common/y;->d:Landroid/widget/GridView;

    .line 1075
    const v0, 0x7f0e030e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/common/y;->e:Landroid/widget/LinearLayout;

    .line 1076
    const v0, 0x7f0e0527

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/y;->f:Landroid/widget/TextView;

    .line 1077
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1079
    const v0, 0x7f0e0526

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/y;->h:Landroid/widget/TextView;

    .line 1080
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->c:Landroid/view/View;

    goto :goto_0
.end method

.method public final a(ZLcom/android/volley/y;)V
    .locals 4

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    invoke-direct {p0, p2}, Lcom/xueqiu/android/common/y;->a(Lcom/android/volley/y;)V

    .line 133
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->an:Landroid/os/Handler;

    new-instance v1, Lcom/xueqiu/android/common/y$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/y$2;-><init>(Lcom/xueqiu/android/common/y;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->c(Landroid/os/Bundle;)V

    .line 86
    new-instance v0, Lcom/xueqiu/android/community/a/at;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/y;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/community/a/at;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/y;->g:Lcom/xueqiu/android/community/a/at;

    .line 87
    new-instance v0, Lcom/xueqiu/android/common/y$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/y$1;-><init>(Lcom/xueqiu/android/common/y;)V

    .line 106
    iget-object v1, p0, Lcom/xueqiu/android/common/y;->g:Lcom/xueqiu/android/community/a/at;

    .line 1157
    iput-object v0, v1, Lcom/xueqiu/android/community/a/at;->b:Lcom/xueqiu/android/community/a/aw;

    .line 107
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->d:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/xueqiu/android/common/y;->g:Lcom/xueqiu/android/community/a/at;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    return-void
.end method

.method public final c_(Z)V
    .locals 3

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->c_(Z)V

    .line 119
    sget-object v0, Lcom/xueqiu/android/common/y;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onHiddenChanged hidden = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public final o()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->o()V

    .line 113
    sget-object v0, Lcom/xueqiu/android/common/y;->b:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 277
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->ak:Ljava/util/List;

    iget-object v1, p0, Lcom/xueqiu/android/common/y;->ak:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    .line 279
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/xueqiu/android/common/y;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/common/y$4;

    .line 281
    invoke-virtual {p0}, Lcom/xueqiu/android/common/y;->g()Landroid/support/v4/a/k;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/common/UserGuideActivity;

    invoke-direct {v3, p0, v1}, Lcom/xueqiu/android/common/y$4;-><init>(Lcom/xueqiu/android/common/y;Lcom/xueqiu/android/base/b/q;)V

    .line 1982
    iget-object v1, v2, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v1, v0, v3}, Lcom/xueqiu/android/base/b/an;->a([Ljava/lang/Long;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->al:Ljava/util/List;

    iget-object v1, p0, Lcom/xueqiu/android/common/y;->al:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 296
    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 297
    invoke-virtual {p0}, Lcom/xueqiu/android/common/y;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/common/y$5;

    .line 298
    invoke-virtual {p0}, Lcom/xueqiu/android/common/y;->g()Landroid/support/v4/a/k;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/common/UserGuideActivity;

    invoke-direct {v3, p0, v1}, Lcom/xueqiu/android/common/y$5;-><init>(Lcom/xueqiu/android/common/y;Lcom/xueqiu/android/base/b/q;)V

    .line 297
    invoke-virtual {v2, v0, v3}, Lcom/xueqiu/android/base/b/ai;->a([Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->am:Ljava/util/List;

    iget-object v1, p0, Lcom/xueqiu/android/common/y;->am:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 313
    if-eqz v0, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    .line 314
    invoke-virtual {p0}, Lcom/xueqiu/android/common/y;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/common/y$6;

    .line 315
    invoke-virtual {p0}, Lcom/xueqiu/android/common/y;->g()Landroid/support/v4/a/k;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/common/UserGuideActivity;

    invoke-direct {v3, p0, v1}, Lcom/xueqiu/android/common/y$6;-><init>(Lcom/xueqiu/android/common/y;Lcom/xueqiu/android/base/b/q;)V

    .line 314
    invoke-virtual {v2, v0, v3}, Lcom/xueqiu/android/base/b/ai;->a([Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 330
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->a:Lcom/xueqiu/android/common/z;

    if-eqz v0, :cond_4

    .line 331
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->a:Lcom/xueqiu/android/common/z;

    invoke-interface {v0}, Lcom/xueqiu/android/common/z;->a()V

    .line 334
    :cond_4
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0xa28

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 335
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto/16 :goto_0

    .line 339
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->a:Lcom/xueqiu/android/common/z;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/xueqiu/android/common/y;->a:Lcom/xueqiu/android/common/z;

    invoke-interface {v0}, Lcom/xueqiu/android/common/z;->b()V

    goto/16 :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x7f0e0526
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
