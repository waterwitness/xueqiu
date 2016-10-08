.class public Lcom/xueqiu/android/community/CommentTalksActivity;
.super Lcom/xueqiu/android/common/b;
.source "CommentTalksActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/b;",
        "Lcom/xueqiu/android/common/t",
        "<",
        "Lcom/xueqiu/android/community/model/Comment;",
        ">;"
    }
.end annotation


# instance fields
.field private j:Lcom/xueqiu/android/common/r;

.field private k:Lcom/xueqiu/android/community/model/Status;

.field private p:J

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/community/CommentTalksActivity;->j:Lcom/xueqiu/android/common/r;

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/CommentTalksActivity;->q:I

    return-void
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
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/xueqiu/android/community/CommentTalksActivity;->getApplication()Landroid/app/Application;

    .line 76
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/community/CommentTalksActivity;->k:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xueqiu/android/community/CommentTalksActivity;->p:J

    iget v6, p0, Lcom/xueqiu/android/community/CommentTalksActivity;->q:I

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/xueqiu/android/base/b/ai;->a(JJILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
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
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/community/CommentTalksActivity;->j:Lcom/xueqiu/android/common/r;

    .line 2367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 93
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 95
    :cond_0
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/CommentTalksActivity;->c(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 97
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/xueqiu/android/base/b/p;->a(Ljava/lang/Object;)V

    .line 98
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 88
    :cond_0
    return-void
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
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 105
    iget v0, p0, Lcom/xueqiu/android/community/CommentTalksActivity;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/CommentTalksActivity;->q:I

    .line 106
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/CommentTalksActivity;->c(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 49
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/xueqiu/android/community/CommentTalksActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    iput-object v0, p0, Lcom/xueqiu/android/community/CommentTalksActivity;->k:Lcom/xueqiu/android/community/model/Status;

    .line 52
    invoke-virtual {p0}, Lcom/xueqiu/android/community/CommentTalksActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_comment_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/CommentTalksActivity;->p:J

    .line 54
    const v0, 0x7f030195

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/CommentTalksActivity;->setContentView(I)V

    .line 1060
    new-instance v1, Lcom/xueqiu/android/community/a/a;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/a;-><init>(Landroid/app/Activity;)V

    .line 1061
    iget-object v0, p0, Lcom/xueqiu/android/community/CommentTalksActivity;->k:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    .line 1367
    iput-wide v2, v1, Lcom/xueqiu/android/community/a/a;->e:J

    .line 1063
    const v0, 0x7f0e016d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/CommentTalksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 1064
    new-instance v2, Lcom/xueqiu/android/common/r;

    invoke-direct {v2, v0, p0}, Lcom/xueqiu/android/common/r;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v2, p0, Lcom/xueqiu/android/community/CommentTalksActivity;->j:Lcom/xueqiu/android/common/r;

    .line 1065
    iget-object v0, p0, Lcom/xueqiu/android/community/CommentTalksActivity;->j:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 1067
    new-instance v0, Lcom/xueqiu/android/community/a;

    iget-object v2, p0, Lcom/xueqiu/android/community/CommentTalksActivity;->k:Lcom/xueqiu/android/community/model/Status;

    invoke-direct {v0, p0, v2, v1}, Lcom/xueqiu/android/community/a;-><init>(Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/community/model/Status;Lcom/xueqiu/android/common/a/d;)V

    .line 2069
    iput-boolean v4, v0, Lcom/xueqiu/android/community/a;->a:Z

    .line 1069
    iget-object v1, p0, Lcom/xueqiu/android/community/CommentTalksActivity;->j:Lcom/xueqiu/android/common/r;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/r;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1071
    const v0, 0x7f0700aa

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/CommentTalksActivity;->setTitle(I)V

    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/community/CommentTalksActivity;->j:Lcom/xueqiu/android/common/r;

    .line 2225
    invoke-virtual {v0, v4}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 57
    return-void
.end method
