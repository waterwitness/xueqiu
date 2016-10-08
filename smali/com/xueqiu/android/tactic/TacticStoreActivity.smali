.class public Lcom/xueqiu/android/tactic/TacticStoreActivity;
.super Lcom/xueqiu/android/common/b;
.source "TacticStoreActivity.java"


# instance fields
.field final j:I

.field private k:Landroid/support/v7/widget/RecyclerView;

.field private p:Lcom/xueqiu/android/tactic/a/h;

.field private q:Landroid/support/v7/widget/k;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/tactic/d/g;",
            ">;"
        }
    .end annotation
.end field

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/tactic/TacticStoreActivity;->s:I

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/tactic/TacticStoreActivity;->j:I

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/TacticStoreActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticStoreActivity;->r:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/tactic/TacticStoreActivity;)Lcom/xueqiu/android/tactic/a/h;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticStoreActivity;->p:Lcom/xueqiu/android/tactic/a/h;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/tactic/TacticStoreActivity;)V
    .locals 2

    .prologue
    .line 28
    .line 6079
    iget v0, p0, Lcom/xueqiu/android/tactic/TacticStoreActivity;->s:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticStoreActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 6080
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticStoreActivity;->r:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/tactic/d/g;

    .line 6279
    iget-object v0, v0, Lcom/xueqiu/android/tactic/d/g;->categoryName:Ljava/lang/String;

    .line 6080
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/tactic/TacticStoreActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f0301dc

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/tactic/TacticStoreActivity;->setContentView(I)V

    .line 46
    const v0, 0x7f0703f0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/tactic/TacticStoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/tactic/TacticStoreActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p0}, Lcom/xueqiu/android/tactic/TacticStoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_category"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/tactic/TacticStoreActivity;->s:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/tactic/TacticStoreActivity;->r:Ljava/util/List;

    .line 49
    new-instance v0, Landroid/support/v7/widget/k;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/k;-><init>(I)V

    iput-object v0, p0, Lcom/xueqiu/android/tactic/TacticStoreActivity;->q:Landroid/support/v7/widget/k;

    .line 50
    const v0, 0x7f0e06a5

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/tactic/TacticStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/xueqiu/android/tactic/TacticStoreActivity;->k:Landroid/support/v7/widget/RecyclerView;

    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticStoreActivity;->k:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticStoreActivity;->q:Landroid/support/v7/widget/k;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/aa;)V

    .line 52
    new-instance v0, Lcom/xueqiu/android/tactic/a/h;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticStoreActivity;->r:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lcom/xueqiu/android/tactic/a/h;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/tactic/TacticStoreActivity;->p:Lcom/xueqiu/android/tactic/a/h;

    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticStoreActivity;->k:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticStoreActivity;->p:Lcom/xueqiu/android/tactic/a/h;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/s;)V

    .line 4180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 4060
    iget v1, p0, Lcom/xueqiu/android/tactic/TacticStoreActivity;->s:I

    new-instance v2, Lcom/xueqiu/android/tactic/TacticStoreActivity$1;

    invoke-direct {v2, p0, p0}, Lcom/xueqiu/android/tactic/TacticStoreActivity$1;-><init>(Lcom/xueqiu/android/tactic/TacticStoreActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 4364
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->n:Lcom/xueqiu/android/base/b/al;

    .line 5068
    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/base/b/al;->a(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 55
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    const/4 v0, 0x1

    const-string v1, "\u7279\u6743\u7ba1\u7406"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 89
    const v1, 0x7f02041c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 90
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 91
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 6053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 97
    new-instance v2, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v3, 0x8fc

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 99
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/tactic/TacticStoreActivity;->startActivity(Landroid/content/Intent;)V

    .line 103
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
