.class public Lcom/xueqiu/android/tactic/TacticSubscribeActivity;
.super Lcom/xueqiu/android/common/b;
.source "TacticSubscribeActivity.java"


# instance fields
.field private j:Landroid/support/v7/widget/RecyclerView;

.field private k:Landroid/view/View;

.field private p:Lcom/xueqiu/android/tactic/a/j;

.field private q:Landroid/support/v7/widget/k;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/tactic/d/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/TacticSubscribeActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->r:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/tactic/TacticSubscribeActivity;)Lcom/xueqiu/android/tactic/a/j;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->p:Lcom/xueqiu/android/tactic/a/j;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/tactic/TacticSubscribeActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->j:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/tactic/TacticSubscribeActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->k:Landroid/view/View;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 4180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/xueqiu/android/tactic/TacticSubscribeActivity$2;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/tactic/TacticSubscribeActivity$2;-><init>(Lcom/xueqiu/android/tactic/TacticSubscribeActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 4368
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->n:Lcom/xueqiu/android/base/b/al;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/al;->a(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 94
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->j()V

    .line 104
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f0301dc

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->setContentView(I)V

    .line 44
    const v0, 0x7f0703e8

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->r:Ljava/util/List;

    .line 47
    new-instance v0, Landroid/support/v7/widget/k;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/k;-><init>(I)V

    iput-object v0, p0, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->q:Landroid/support/v7/widget/k;

    .line 48
    const v0, 0x7f0e06a5

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->j:Landroid/support/v7/widget/RecyclerView;

    .line 49
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->j:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->q:Landroid/support/v7/widget/k;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/aa;)V

    .line 50
    new-instance v0, Lcom/xueqiu/android/tactic/a/j;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->r:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lcom/xueqiu/android/tactic/a/j;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->p:Lcom/xueqiu/android/tactic/a/j;

    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->j:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->p:Lcom/xueqiu/android/tactic/a/j;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/s;)V

    .line 52
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->j:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/xueqiu/android/tactic/TacticSubscribeActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/tactic/TacticSubscribeActivity$1;-><init>(Lcom/xueqiu/android/tactic/TacticSubscribeActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/y;)V

    .line 70
    const v0, 0x7f0e06a6

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->k:Landroid/view/View;

    .line 71
    invoke-direct {p0}, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;->j()V

    .line 72
    return-void
.end method
