.class public final Lcom/xueqiu/android/tactic/a/j;
.super Lcom/xueqiu/android/tactic/a/c;
.source "TacticSubscribeListAdapter.java"


# instance fields
.field private f:Ljava/util/List;
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
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/tactic/d/i;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p2}, Lcom/xueqiu/android/tactic/a/c;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p1, p0, Lcom/xueqiu/android/tactic/a/j;->f:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/tactic/a/j;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/tactic/a/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;)Landroid/support/v7/widget/ao;
    .locals 4

    .prologue
    .line 35
    new-instance v0, Lcom/xueqiu/android/tactic/a/k;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/a/j;->d:Landroid/view/LayoutInflater;

    const v2, 0x7f0301d5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/tactic/a/k;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public final a(Landroid/support/v7/widget/ao;I)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 40
    check-cast p1, Lcom/xueqiu/android/tactic/a/k;

    .line 1050
    iget-object v0, p0, Lcom/xueqiu/android/tactic/a/j;->f:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/tactic/d/i;

    .line 1119
    iget-object v1, v0, Lcom/xueqiu/android/tactic/d/i;->product:Lcom/xueqiu/android/tactic/d/g;

    .line 1052
    const/4 v0, 0x0

    .line 1199
    iget-object v2, v1, Lcom/xueqiu/android/tactic/d/g;->imageUrl:Ljava/lang/String;

    .line 1053
    if-eqz v2, :cond_0

    .line 1054
    const-string v0, "%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 2199
    iget-object v3, v1, Lcom/xueqiu/android/tactic/d/g;->imageUrl:Ljava/lang/String;

    .line 1054
    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string v4, "!270x162.jpg"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1056
    :cond_0
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v2

    iget-object v3, p1, Lcom/xueqiu/android/tactic/a/k;->m:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/xueqiu/android/tactic/a/j;->e:Lcom/d/a/b/d;

    invoke-virtual {v2, v0, v3, v4}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 1057
    iget-object v0, p1, Lcom/xueqiu/android/tactic/a/k;->n:Landroid/widget/TextView;

    .line 2247
    iget-object v2, v1, Lcom/xueqiu/android/tactic/d/g;->title:Ljava/lang/String;

    .line 1057
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    const-string v0, "OFFSHELF"

    .line 3223
    iget-object v2, v1, Lcom/xueqiu/android/tactic/d/g;->status:Ljava/lang/String;

    .line 1058
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1059
    iget-object v0, p1, Lcom/xueqiu/android/tactic/a/k;->l:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1060
    iget-object v0, p1, Lcom/xueqiu/android/tactic/a/k;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1066
    :goto_0
    iget-object v0, p1, Lcom/xueqiu/android/tactic/a/k;->k:Landroid/view/View;

    new-instance v2, Lcom/xueqiu/android/tactic/a/j$1;

    invoke-direct {v2, p0, v1}, Lcom/xueqiu/android/tactic/a/j$1;-><init>(Lcom/xueqiu/android/tactic/a/j;Lcom/xueqiu/android/tactic/d/g;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void

    .line 1062
    :cond_1
    iget-object v0, p1, Lcom/xueqiu/android/tactic/a/k;->l:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1063
    iget-object v0, p1, Lcom/xueqiu/android/tactic/a/k;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
