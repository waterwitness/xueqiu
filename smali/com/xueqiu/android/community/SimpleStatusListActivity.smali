.class public Lcom/xueqiu/android/community/SimpleStatusListActivity;
.super Lcom/xueqiu/android/common/b;
.source "SimpleStatusListActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/b;",
        "Lcom/xueqiu/android/common/t",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private j:I

.field private k:Lcom/xueqiu/android/community/widget/i;

.field private p:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 39
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 45
    iput v1, p0, Lcom/xueqiu/android/community/SimpleStatusListActivity;->j:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/community/SimpleStatusListActivity;->k:Lcom/xueqiu/android/community/widget/i;

    .line 48
    iput v1, p0, Lcom/xueqiu/android/community/SimpleStatusListActivity;->p:I

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/SimpleStatusListActivity;)Lcom/xueqiu/android/community/widget/i;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/community/SimpleStatusListActivity;->k:Lcom/xueqiu/android/community/widget/i;

    return-object v0
.end method

.method private c(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 86
    iget v0, p0, Lcom/xueqiu/android/community/SimpleStatusListActivity;->j:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 2077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 87
    iget v0, p0, Lcom/xueqiu/android/community/SimpleStatusListActivity;->p:I

    .line 2528
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/xueqiu/android/base/b/aj;->b(JILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 88
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/community/SimpleStatusListActivity;->j:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 3077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 89
    const/4 v4, 0x0

    const/16 v5, 0x14

    iget v6, p0, Lcom/xueqiu/android/community/SimpleStatusListActivity;->p:I

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/xueqiu/android/base/b/ai;->a(JIIILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/SimpleStatusListActivity;->p:I

    .line 131
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/SimpleStatusListActivity;->c(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 100
    if-nez p1, :cond_1

    .line 101
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/xueqiu/android/community/SimpleStatusListActivity;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/xueqiu/android/community/SimpleStatusListActivity;->k:Lcom/xueqiu/android/community/widget/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/i;->c()V

    goto :goto_0
.end method

.method public final b(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 136
    iget v0, p0, Lcom/xueqiu/android/community/SimpleStatusListActivity;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/SimpleStatusListActivity;->p:I

    .line 137
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/SimpleStatusListActivity;->c(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    .line 113
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 114
    const-string v0, "delete_status_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 116
    iget-object v0, p0, Lcom/xueqiu/android/community/SimpleStatusListActivity;->k:Lcom/xueqiu/android/community/widget/i;

    .line 3367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 116
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 118
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-nez v5, :cond_0

    .line 119
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/SimpleStatusListActivity;->k:Lcom/xueqiu/android/community/widget/i;

    .line 4367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 123
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->notifyDataSetChanged()V

    .line 125
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 52
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f030196

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/SimpleStatusListActivity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/xueqiu/android/community/SimpleStatusListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_status_source"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/SimpleStatusListActivity;->j:I

    .line 1060
    new-instance v1, Lcom/xueqiu/android/community/a/ak;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/ak;-><init>(Landroid/app/Activity;)V

    .line 1061
    const v0, 0x7f0e016d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/SimpleStatusListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 1062
    new-instance v2, Lcom/xueqiu/android/community/widget/i;

    invoke-direct {v2, v0, p0}, Lcom/xueqiu/android/community/widget/i;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v2, p0, Lcom/xueqiu/android/community/SimpleStatusListActivity;->k:Lcom/xueqiu/android/community/widget/i;

    .line 1063
    iget-object v0, p0, Lcom/xueqiu/android/community/SimpleStatusListActivity;->k:Lcom/xueqiu/android/community/widget/i;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/i;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 1064
    iget-object v0, p0, Lcom/xueqiu/android/community/SimpleStatusListActivity;->k:Lcom/xueqiu/android/community/widget/i;

    new-instance v1, Lcom/xueqiu/android/community/SimpleStatusListActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/SimpleStatusListActivity$1;-><init>(Lcom/xueqiu/android/community/SimpleStatusListActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/i;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1075
    iget v0, p0, Lcom/xueqiu/android/community/SimpleStatusListActivity;->j:I

    if-ne v0, v3, :cond_0

    .line 1076
    const v0, 0x7f070233

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/SimpleStatusListActivity;->setTitle(I)V

    .line 1077
    iget-object v0, p0, Lcom/xueqiu/android/community/SimpleStatusListActivity;->k:Lcom/xueqiu/android/community/widget/i;

    const v1, 0x7f07013a

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/SimpleStatusListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/i;->a(Ljava/lang/CharSequence;)V

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/SimpleStatusListActivity;->k:Lcom/xueqiu/android/community/widget/i;

    .line 1225
    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 57
    return-void

    .line 1079
    :cond_0
    const v0, 0x7f070237

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/SimpleStatusListActivity;->setTitle(I)V

    .line 1080
    iget-object v0, p0, Lcom/xueqiu/android/community/SimpleStatusListActivity;->k:Lcom/xueqiu/android/community/widget/i;

    const v1, 0x7f07013c

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/SimpleStatusListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/i;->a(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
