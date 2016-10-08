.class public Lcom/xueqiu/android/community/CommentsPostedByMeActivity;
.super Lcom/xueqiu/android/common/b;
.source "CommentsPostedByMeActivity.java"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/r",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity;->j:Lcom/xueqiu/android/common/r;

    return-void
.end method

.method private a(Lcom/xueqiu/android/base/b/p;Z)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;>;Z)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;>;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity;->j:Lcom/xueqiu/android/common/r;

    .line 1367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 94
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    if-nez p2, :cond_0

    .line 99
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getId()J

    move-result-wide v2

    .line 105
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/community/CommentsPostedByMeActivity;->getApplication()Landroid/app/Application;

    .line 106
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    move-object v6, p1

    .line 107
    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/ai;->b(JJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0

    .line 101
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getId()J

    move-result-wide v0

    move-wide v2, v4

    move-wide v4, v0

    goto :goto_0

    :cond_1
    move-wide v2, v4

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/CommentsPostedByMeActivity;)Lcom/xueqiu/android/common/r;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity;->j:Lcom/xueqiu/android/common/r;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/CommentsPostedByMeActivity;Lcom/xueqiu/android/community/model/Comment;)V
    .locals 3

    .prologue
    .line 2131
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0700b5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b1

    new-instance v2, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3;-><init>(Lcom/xueqiu/android/community/CommentsPostedByMeActivity;Lcom/xueqiu/android/community/model/Comment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    const/4 v2, 0x0

    .line 2157
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 42
    return-void
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
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/community/CommentsPostedByMeActivity;->a(Lcom/xueqiu/android/base/b/p;Z)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
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
    .line 124
    if-nez p1, :cond_0

    .line 125
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 127
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
    .line 117
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/community/CommentsPostedByMeActivity;->a(Lcom/xueqiu/android/base/b/p;Z)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f030195

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/CommentsPostedByMeActivity;->setContentView(I)V

    .line 51
    const v0, 0x7f0700a5

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/CommentsPostedByMeActivity;->setTitle(I)V

    .line 1057
    new-instance v1, Lcom/xueqiu/android/community/a/a;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/a;-><init>(Lcom/xueqiu/android/common/b;)V

    .line 1058
    const v0, 0x7f0e016d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/CommentsPostedByMeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 1059
    new-instance v2, Lcom/xueqiu/android/common/r;

    invoke-direct {v2, v0, p0}, Lcom/xueqiu/android/common/r;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v2, p0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity;->j:Lcom/xueqiu/android/common/r;

    .line 1060
    iget-object v0, p0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity;->j:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 1061
    iget-object v0, p0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity;->j:Lcom/xueqiu/android/common/r;

    new-instance v2, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$1;-><init>(Lcom/xueqiu/android/community/CommentsPostedByMeActivity;Lcom/xueqiu/android/community/a/a;)V

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/r;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1071
    iget-object v0, p0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity;->j:Lcom/xueqiu/android/common/r;

    const v2, 0x7f070137

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/CommentsPostedByMeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/r;->a(Ljava/lang/CharSequence;)V

    .line 1072
    iget-object v0, p0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity;->j:Lcom/xueqiu/android/common/r;

    new-instance v2, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$2;

    invoke-direct {v2, p0, v1}, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$2;-><init>(Lcom/xueqiu/android/community/CommentsPostedByMeActivity;Lcom/xueqiu/android/community/a/a;)V

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/r;->a(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity;->j:Lcom/xueqiu/android/common/r;

    .line 1225
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 54
    return-void
.end method
