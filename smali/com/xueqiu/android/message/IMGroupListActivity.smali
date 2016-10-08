.class public Lcom/xueqiu/android/message/IMGroupListActivity;
.super Lcom/xueqiu/android/common/b;
.source "IMGroupListActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/b;",
        "Lcom/xueqiu/android/common/t",
        "<",
        "Lcom/xueqiu/android/message/model/IMGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private j:Lcom/xueqiu/android/common/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/r",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Lcom/xueqiu/android/message/model/Message;

.field private s:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 46
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->j:Lcom/xueqiu/android/common/r;

    .line 59
    iput v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->k:I

    .line 60
    iput-object v1, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->p:Ljava/lang/String;

    .line 61
    iput v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->q:I

    return-void
.end method

.method private a(ILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->p:Ljava/lang/String;

    .line 3307
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->k:Lcom/xueqiu/android/base/b/d;

    invoke-virtual {v0, v1, p1, p2}, Lcom/xueqiu/android/base/b/d;->a(Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 169
    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/message/IMGroupListActivity;)Lcom/xueqiu/android/message/model/Message;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->r:Lcom/xueqiu/android/message/model/Message;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/message/IMGroupListActivity;Lcom/xueqiu/android/message/model/Talk;)V
    .locals 4

    .prologue
    .line 4208
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4209
    const-string v1, "talk"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4210
    iget-object v1, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->r:Lcom/xueqiu/android/message/model/Message;

    if-eqz v1, :cond_1

    .line 4211
    iget-object v1, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->r:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v1

    .line 5069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 5077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 4211
    invoke-virtual {p1, v1, v2, v3}, Lcom/xueqiu/android/message/model/Talk;->allocateMessage(IJ)Lcom/xueqiu/android/message/model/Message;

    move-result-object v1

    .line 4212
    iget-object v2, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->r:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/model/Message;->setText(Ljava/lang/String;)V

    .line 4213
    const-string v2, "extra_message"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4218
    :cond_0
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/IMGroupListActivity;->setResult(I)V

    .line 4219
    invoke-virtual {p0}, Lcom/xueqiu/android/message/IMGroupListActivity;->finish()V

    .line 4220
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/IMGroupListActivity;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void

    .line 4214
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->s:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 4215
    const-string v1, "extra_image_uri"

    iget-object v2, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->s:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4216
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->s:Landroid/net/Uri;

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/message/IMGroupListActivity;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->s:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/message/IMGroupListActivity;)Lcom/xueqiu/android/common/r;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->j:Lcom/xueqiu/android/common/r;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 190
    iget v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->q:I

    if-eq v0, v2, :cond_0

    .line 191
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/IMGroupListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 192
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 193
    iput v2, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->k:I

    .line 194
    iget v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->k:I

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/message/IMGroupListActivity;->a(ILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    .line 196
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/xueqiu/android/base/b/p;->a(Ljava/lang/Object;)V

    .line 197
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 175
    if-nez p1, :cond_1

    .line 176
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 177
    iget v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->k:I

    .line 182
    :goto_0
    if-nez p3, :cond_0

    iget v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->q:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->j:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/r;->c()V

    .line 185
    :cond_0
    return-void

    .line 178
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

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
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 203
    iget v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->k:I

    .line 204
    iget v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->k:I

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/message/IMGroupListActivity;->a(ILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v5, 0x7f0e016d

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 68
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f030195

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/IMGroupListActivity;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/xueqiu/android/message/IMGroupListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_data_typesss"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->q:I

    .line 73
    iget v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->q:I

    if-ne v0, v3, :cond_3

    .line 75
    const v0, 0x7f0701bb

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/IMGroupListActivity;->setTitle(I)V

    .line 76
    invoke-virtual {p0}, Lcom/xueqiu/android/message/IMGroupListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Message;

    iput-object v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->r:Lcom/xueqiu/android/message/model/Message;

    .line 77
    invoke-virtual {p0}, Lcom/xueqiu/android/message/IMGroupListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_photo_stream"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->s:Landroid/net/Uri;

    .line 3093
    invoke-virtual {p0}, Lcom/xueqiu/android/message/IMGroupListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_named"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 3095
    if-eqz v0, :cond_0

    .line 3096
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/base/storage/DBManager;->getIMGroups(Z)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v0

    .line 3101
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/IMGroup;

    .line 3102
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xueqiu/android/base/util/af;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/message/model/IMGroup;->setPinyinHeaders(Ljava/lang/String;)V

    goto :goto_1

    .line 3098
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/storage/DBManager;->getAllOrganize()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v0

    goto :goto_0

    .line 3104
    :cond_1
    new-instance v0, Lcom/xueqiu/android/message/IMGroupListActivity$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/message/IMGroupListActivity$1;-><init>(Lcom/xueqiu/android/message/IMGroupListActivity;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3111
    invoke-virtual {p0, v5}, Lcom/xueqiu/android/message/IMGroupListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 3112
    new-instance v2, Lcom/xueqiu/android/common/r;

    invoke-direct {v2, v0, p0}, Lcom/xueqiu/android/common/r;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v2, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->j:Lcom/xueqiu/android/common/r;

    .line 3113
    iget-object v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->j:Lcom/xueqiu/android/common/r;

    const v2, 0x7f07013b

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/message/IMGroupListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/r;->a(Ljava/lang/CharSequence;)V

    .line 3114
    new-instance v0, Lcom/xueqiu/android/message/a/p;

    const v2, 0x7f03016b

    invoke-direct {v0, p0, v2}, Lcom/xueqiu/android/message/a/p;-><init>(Landroid/content/Context;I)V

    .line 3115
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/a/p;->a(Ljava/util/ArrayList;)V

    .line 3116
    iget-object v1, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->j:Lcom/xueqiu/android/common/r;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 3117
    iget-object v1, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->j:Lcom/xueqiu/android/common/r;

    new-instance v2, Lcom/xueqiu/android/message/IMGroupListActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/message/IMGroupListActivity$2;-><init>(Lcom/xueqiu/android/message/IMGroupListActivity;Lcom/xueqiu/android/message/a/p;)V

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/r;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3144
    iget-object v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->j:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/common/r;->b(Z)V

    .line 89
    :cond_2
    :goto_2
    return-void

    .line 81
    :cond_3
    iget v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 82
    invoke-virtual {p0}, Lcom/xueqiu/android/message/IMGroupListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_stock_symbol"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->p:Ljava/lang/String;

    .line 83
    const v0, 0x7f0703fd

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->p:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/message/IMGroupListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/IMGroupListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 3149
    new-instance v1, Lcom/xueqiu/android/message/a/p;

    const v0, 0x7f03016c

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/message/a/p;-><init>(Landroid/content/Context;I)V

    .line 3150
    invoke-virtual {p0, v5}, Lcom/xueqiu/android/message/IMGroupListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 3151
    new-instance v2, Lcom/xueqiu/android/common/r;

    invoke-direct {v2, v0, p0}, Lcom/xueqiu/android/common/r;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v2, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->j:Lcom/xueqiu/android/common/r;

    .line 3152
    iget-object v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->j:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 3154
    iget-object v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->j:Lcom/xueqiu/android/common/r;

    new-instance v1, Lcom/xueqiu/android/message/IMGroupListActivity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/IMGroupListActivity$3;-><init>(Lcom/xueqiu/android/message/IMGroupListActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/xueqiu/android/message/IMGroupListActivity;->j:Lcom/xueqiu/android/common/r;

    .line 3225
    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/r;->a(Z)V

    goto :goto_2
.end method
