.class public Lcom/xueqiu/android/tactic/MyPushListActivity;
.super Lcom/xueqiu/android/base/j;
.source "MyPushListActivity.java"

# interfaces
.implements Lcom/xueqiu/android/tactic/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/j",
        "<",
        "Lcom/xueqiu/android/tactic/e/a;",
        ">;",
        "Lcom/xueqiu/android/tactic/b/c;"
    }
.end annotation


# instance fields
.field final p:I

.field private q:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:J

.field private u:J

.field private v:Lcom/xueqiu/android/tactic/a/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 25
    invoke-direct {p0}, Lcom/xueqiu/android/base/j;-><init>()V

    .line 33
    iput-wide v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->t:J

    .line 35
    iput-wide v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->u:J

    .line 116
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->p:I

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/MyPushListActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/tactic/MyPushListActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/tactic/d/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->v:Lcom/xueqiu/android/tactic/a/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/tactic/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->v:Lcom/xueqiu/android/tactic/a/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/tactic/a/a;->notifyDataSetChanged()V

    .line 83
    iget-object v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->q:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->f()V

    .line 84
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    .line 113
    iget-object v1, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->s:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 114
    return-void

    .line 113
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final synthetic d()Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 25
    .line 2051
    new-instance v0, Lcom/xueqiu/android/tactic/e/a;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/tactic/e/a;-><init>(Lcom/xueqiu/android/tactic/b/c;)V

    .line 25
    return-object v0
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->q:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->f()V

    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->s:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    return-void
.end method

.method public final k()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->q:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setEmptyView(Landroid/view/View;)V

    .line 107
    iget-object v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->v:Lcom/xueqiu/android/tactic/a/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/tactic/a/a;->notifyDataSetChanged()V

    .line 108
    iget-object v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->q:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->f()V

    .line 109
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/xueqiu/android/base/j;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f0301d6

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/tactic/MyPushListActivity;->setContentView(I)V

    .line 45
    const v0, 0x7f0703e9

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/tactic/MyPushListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/tactic/MyPushListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1055
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1056
    const v1, 0x7f0301d7

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->r:Landroid/view/View;

    .line 1057
    iget-object v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1059
    const v0, 0x7f0e0175

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/tactic/MyPushListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    iput-object v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->q:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 1060
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03021c

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->s:Landroid/view/View;

    .line 1061
    iget-object v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->s:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1062
    iget-object v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->q:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1063
    new-instance v0, Lcom/xueqiu/android/tactic/a/a;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/tactic/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->v:Lcom/xueqiu/android/tactic/a/a;

    .line 1064
    iget-object v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->q:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->v:Lcom/xueqiu/android/tactic/a/a;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1065
    iget-object v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->q:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    new-instance v1, Lcom/xueqiu/android/tactic/MyPushListActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/tactic/MyPushListActivity$1;-><init>(Lcom/xueqiu/android/tactic/MyPushListActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setOnMoreClickListener(Landroid/view/View$OnClickListener;)V

    .line 1071
    iget-object v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->q:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    new-instance v1, Lcom/xueqiu/android/tactic/MyPushListActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/tactic/MyPushListActivity$2;-><init>(Lcom/xueqiu/android/tactic/MyPushListActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setOnRefreshListener(Lcom/xueqiu/android/common/widget/ptr/h;)V

    .line 47
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 120
    const/4 v0, 0x1

    const-string v1, "\u7279\u6743\u7ba1\u7406"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 121
    const v1, 0x7f02041c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 122
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 123
    invoke-super {p0, p1}, Lcom/xueqiu/android/base/j;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 128
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 129
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/xueqiu/android/tactic/TacticSubscribeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/tactic/MyPushListActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/xueqiu/android/base/j;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public refresh(Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/tactic/d/h;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 88
    if-eqz p2, :cond_0

    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->v:Lcom/xueqiu/android/tactic/a/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/tactic/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 90
    iget-object v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->v:Lcom/xueqiu/android/tactic/a/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/tactic/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->v:Lcom/xueqiu/android/tactic/a/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/tactic/a/a;->notifyDataSetChanged()V

    .line 95
    iget-object v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->q:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->f()V

    .line 96
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/tactic/MyPushListActivity;->v:Lcom/xueqiu/android/tactic/a/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/tactic/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_0
.end method
