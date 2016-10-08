.class public final Lcom/xueqiu/android/community/b;
.super Lcom/xueqiu/android/common/c;
.source "CommentReceiveFragment.java"


# instance fields
.field private a:Lcom/xueqiu/android/common/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/r",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/xueqiu/android/community/a/a;

.field private c:Landroid/app/NotificationManager;

.field private d:Lcom/xueqiu/android/common/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/t",
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
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/xueqiu/android/community/b;->a:Lcom/xueqiu/android/common/r;

    .line 56
    iput-object v0, p0, Lcom/xueqiu/android/community/b;->b:Lcom/xueqiu/android/community/a/a;

    .line 57
    iput-object v0, p0, Lcom/xueqiu/android/community/b;->c:Landroid/app/NotificationManager;

    .line 144
    new-instance v0, Lcom/xueqiu/android/community/b$3;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/b$3;-><init>(Lcom/xueqiu/android/community/b;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/b;->d:Lcom/xueqiu/android/common/t;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/b;)Lcom/xueqiu/android/community/a/a;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/xueqiu/android/community/b;->b:Lcom/xueqiu/android/community/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/b;Lcom/xueqiu/android/community/model/Comment;)V
    .locals 3

    .prologue
    .line 5209
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/b;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0700b5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b1

    new-instance v2, Lcom/xueqiu/android/community/b$4;

    invoke-direct {v2, p0, p1}, Lcom/xueqiu/android/community/b$4;-><init>(Lcom/xueqiu/android/community/b;Lcom/xueqiu/android/community/model/Comment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    const/4 v2, 0x0

    .line 5235
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 52
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/community/b;)Lcom/xueqiu/android/common/r;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/xueqiu/android/community/b;->a:Lcom/xueqiu/android/common/r;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/b;)Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/xueqiu/android/community/b;->c:Landroid/app/NotificationManager;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 75
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 76
    const v0, 0x7f0700a6

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/b;->d(I)V

    .line 77
    const v0, 0x7f03012a

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 79
    iget-object v0, p0, Lcom/xueqiu/android/community/b;->b:Lcom/xueqiu/android/community/a/a;

    if-nez v0, :cond_0

    .line 80
    new-instance v4, Lcom/xueqiu/android/community/a/a;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/b;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    invoke-direct {v4, v0}, Lcom/xueqiu/android/community/a/a;-><init>(Lcom/xueqiu/android/common/b;)V

    iput-object v4, p0, Lcom/xueqiu/android/community/b;->b:Lcom/xueqiu/android/community/a/a;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/xueqiu/android/base/storage/DBManager;->queryComments(I)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 82
    iget-object v4, p0, Lcom/xueqiu/android/community/b;->b:Lcom/xueqiu/android/community/a/a;

    invoke-virtual {v4, v0}, Lcom/xueqiu/android/community/a/a;->a(Ljava/util/ArrayList;)V

    .line 84
    :cond_0
    const v0, 0x7f0e04a7

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 85
    new-instance v4, Lcom/xueqiu/android/common/r;

    iget-object v5, p0, Lcom/xueqiu/android/community/b;->d:Lcom/xueqiu/android/common/t;

    invoke-direct {v4, v0, v5}, Lcom/xueqiu/android/common/r;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v4, p0, Lcom/xueqiu/android/community/b;->a:Lcom/xueqiu/android/common/r;

    .line 86
    iget-object v0, p0, Lcom/xueqiu/android/community/b;->a:Lcom/xueqiu/android/common/r;

    iget-object v4, p0, Lcom/xueqiu/android/community/b;->b:Lcom/xueqiu/android/community/a/a;

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 87
    iget-object v0, p0, Lcom/xueqiu/android/community/b;->a:Lcom/xueqiu/android/common/r;

    new-instance v4, Lcom/xueqiu/android/community/b$1;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/community/b$1;-><init>(Lcom/xueqiu/android/community/b;)V

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/common/r;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/xueqiu/android/community/b;->a:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/r;->d()Landroid/widget/ListView;

    move-result-object v0

    new-instance v4, Lcom/xueqiu/android/community/b$2;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/community/b$2;-><init>(Lcom/xueqiu/android/community/b;)V

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/xueqiu/android/community/b;->a:Lcom/xueqiu/android/common/r;

    const v4, 0x7f070136

    invoke-virtual {p0, v4}, Lcom/xueqiu/android/community/b;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/common/r;->a(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/xueqiu/android/community/b;->a:Lcom/xueqiu/android/common/r;

    const v4, 0x7f020198

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/common/r;->a(I)V

    .line 122
    invoke-virtual {p0}, Lcom/xueqiu/android/community/b;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_4

    .line 125
    const-string v4, "extra_notification"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    .line 128
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/b;->a:Lcom/xueqiu/android/common/r;

    .line 2367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 1385
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->getCount()I

    move-result v0

    .line 128
    if-nez v0, :cond_2

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/b;->a:Lcom/xueqiu/android/common/r;

    .line 3225
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 131
    :cond_2
    return-object v3

    :cond_3
    move v0, v2

    .line 125
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/xueqiu/android/community/b;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/support/v4/a/k;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/xueqiu/android/community/b;->c:Landroid/app/NotificationManager;

    .line 66
    return-void
.end method

.method public final o()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->o()V

    .line 201
    iget-object v0, p0, Lcom/xueqiu/android/community/b;->a:Lcom/xueqiu/android/common/r;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/xueqiu/android/community/b;->a:Lcom/xueqiu/android/common/r;

    .line 4367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 202
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 203
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/community/b;->a:Lcom/xueqiu/android/common/r;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 205
    :cond_0
    return-void

    .line 202
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 136
    const-string v0, "CommentReceiveFragment"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 4193
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->c:Z

    .line 138
    if-eqz v0, :cond_1

    .line 4241
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/community/b;->b:Lcom/xueqiu/android/community/a/a;

    if-eqz v0, :cond_1

    .line 4242
    iget-object v0, p0, Lcom/xueqiu/android/community/b;->b:Lcom/xueqiu/android/community/a/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 4243
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 4244
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v1

    .line 4245
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_0
    const/4 v2, 0x1

    .line 4244
    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/base/storage/DBManager;->insertComments(Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->q()V

    .line 142
    return-void

    .line 4249
    :catch_0
    move-exception v0

    .line 4250
    sget-boolean v1, Lcom/xueqiu/android/base/util/v;->a:Z

    if-eqz v1, :cond_1

    .line 4251
    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
