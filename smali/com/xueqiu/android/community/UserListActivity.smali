.class public Lcom/xueqiu/android/community/UserListActivity;
.super Lcom/xueqiu/android/common/b;
.source "UserListActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/b;",
        "Lcom/xueqiu/android/common/t",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field private j:I

.field private k:Lcom/xueqiu/android/community/model/User;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Lcom/xueqiu/android/common/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/r",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/xueqiu/android/stock/model/Stock;

.field private t:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/community/UserListActivity;->j:I

    .line 69
    iput-object v1, p0, Lcom/xueqiu/android/community/UserListActivity;->k:Lcom/xueqiu/android/community/model/User;

    .line 70
    iput-object v1, p0, Lcom/xueqiu/android/community/UserListActivity;->p:Ljava/lang/String;

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/UserListActivity;->q:I

    .line 73
    iput-object v1, p0, Lcom/xueqiu/android/community/UserListActivity;->r:Lcom/xueqiu/android/common/r;

    .line 75
    iput-object v1, p0, Lcom/xueqiu/android/community/UserListActivity;->s:Lcom/xueqiu/android/stock/model/Stock;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/UserListActivity;->t:Z

    return-void
.end method

.method private a(ILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 165
    invoke-virtual {p0}, Lcom/xueqiu/android/community/UserListActivity;->getApplication()Landroid/app/Application;

    .line 166
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 167
    iget v2, p0, Lcom/xueqiu/android/community/UserListActivity;->j:I

    if-ne v2, v9, :cond_1

    .line 168
    iget-object v2, p0, Lcom/xueqiu/android/community/UserListActivity;->k:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    .line 4986
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    .line 5232
    new-array v4, v4, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v5, 0x0

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "uid"

    .line 5233
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v7, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pageNo"

    .line 5234
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v4, v8

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "size"

    const-string v5, "20"

    .line 5235
    invoke-direct {v2, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v4, v9

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "key"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v4, v10

    .line 5237
    invoke-virtual {v1, v4, p2}, Lcom/xueqiu/android/base/b/an;->a([Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 179
    :cond_0
    :goto_0
    return-object v0

    .line 169
    :cond_1
    iget v2, p0, Lcom/xueqiu/android/community/UserListActivity;->j:I

    if-ne v2, v8, :cond_2

    .line 170
    iget-object v0, p0, Lcom/xueqiu/android/community/UserListActivity;->k:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/xueqiu/android/base/b/ai;->c(JILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_2
    iget v2, p0, Lcom/xueqiu/android/community/UserListActivity;->j:I

    if-ne v2, v10, :cond_3

    .line 172
    iget-object v0, p0, Lcom/xueqiu/android/community/UserListActivity;->p:Ljava/lang/String;

    const/16 v2, 0x14

    invoke-virtual {v1, v0, p1, v2, p2}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_3
    iget v2, p0, Lcom/xueqiu/android/community/UserListActivity;->j:I

    if-ne v2, v4, :cond_4

    .line 174
    iget-object v0, p0, Lcom/xueqiu/android/community/UserListActivity;->s:Lcom/xueqiu/android/stock/model/Stock;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, p1, -0x1

    mul-int/lit8 v2, v2, 0x14

    .line 6066
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v1, v0, v2, p2}, Lcom/xueqiu/android/base/b/an;->b(Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_4
    iget v2, p0, Lcom/xueqiu/android/community/UserListActivity;->j:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 176
    iget-object v0, p0, Lcom/xueqiu/android/community/UserListActivity;->s:Lcom/xueqiu/android/stock/model/Stock;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 6290
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v1, v0, p1, p2}, Lcom/xueqiu/android/base/b/an;->c(Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/UserListActivity;)Lcom/xueqiu/android/common/r;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/community/UserListActivity;->r:Lcom/xueqiu/android/common/r;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/xueqiu/android/community/UserListActivity;->t:Z

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/xueqiu/android/base/b/p;->a(Ljava/lang/Object;)V

    .line 239
    const/4 v0, 0x0

    .line 245
    :goto_0
    return-object v0

    .line 242
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 243
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 244
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/UserListActivity;->q:I

    .line 245
    iget v0, p0, Lcom/xueqiu/android/community/UserListActivity;->q:I

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/community/UserListActivity;->a(ILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    const v7, 0x7f0e01db

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 188
    if-nez p1, :cond_5

    .line 189
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    iget v0, p0, Lcom/xueqiu/android/community/UserListActivity;->q:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/community/UserListActivity;->q:I

    .line 195
    :goto_0
    iget-boolean v0, p0, Lcom/xueqiu/android/community/UserListActivity;->t:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    .line 196
    iget-object v0, p0, Lcom/xueqiu/android/community/UserListActivity;->r:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/r;->c()V

    .line 198
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/community/UserListActivity;->j:I

    if-eq v0, v6, :cond_1

    iget v0, p0, Lcom/xueqiu/android/community/UserListActivity;->j:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    :cond_1
    instance-of v0, v1, Lcom/xueqiu/android/community/model/FollowerUserGroup;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 200
    check-cast v0, Lcom/xueqiu/android/community/model/FollowerUserGroup;

    .line 201
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/FollowerUserGroup;->hasMore()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/FollowerUserGroup;->getAnonymousCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 202
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 203
    const v3, 0x7f030064

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 204
    const v3, 0x7f07011c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/FollowerUserGroup;->getAnonymousCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/xueqiu/android/community/UserListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/xueqiu/android/community/UserListActivity;->r:Lcom/xueqiu/android/common/r;

    .line 6350
    invoke-virtual {v0}, Lcom/xueqiu/android/common/r;->d()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 215
    :cond_2
    :goto_1
    iget v0, p0, Lcom/xueqiu/android/community/UserListActivity;->j:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/xueqiu/android/community/UserListActivity;->r:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0, v5}, Lcom/xueqiu/android/common/r;->b(Z)V

    .line 219
    :cond_3
    iget v0, p0, Lcom/xueqiu/android/community/UserListActivity;->j:I

    if-ne v0, v6, :cond_4

    .line 220
    sget-object v0, Lcom/xueqiu/android/message/client/c;->k:Lrx/i/c;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/c;->a(Ljava/lang/Object;)V

    .line 222
    :cond_4
    return-void

    .line 192
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-object v1, p1

    goto :goto_0

    .line 208
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/community/UserListActivity;->r:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/r;->d()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_2

    .line 210
    iget-object v2, p0, Lcom/xueqiu/android/community/UserListActivity;->r:Lcom/xueqiu/android/common/r;

    invoke-virtual {v2}, Lcom/xueqiu/android/common/r;->d()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_1
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
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 250
    iget v0, p0, Lcom/xueqiu/android/community/UserListActivity;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/UserListActivity;->q:I

    .line 251
    iget v0, p0, Lcom/xueqiu/android/community/UserListActivity;->q:I

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/community/UserListActivity;->a(ILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    .line 227
    invoke-virtual {p0}, Lcom/xueqiu/android/community/UserListActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserListActivity;->startActivity(Landroid/content/Intent;)V

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/community/UserListActivity;->finish()V

    .line 233
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 81
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v0, 0x7f030195

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserListActivity;->setContentView(I)V

    .line 90
    invoke-virtual {p0}, Lcom/xueqiu/android/community/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_list_type"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/UserListActivity;->j:I

    .line 91
    iget v0, p0, Lcom/xueqiu/android/community/UserListActivity;->j:I

    if-eq v0, v6, :cond_0

    iget v0, p0, Lcom/xueqiu/android/community/UserListActivity;->j:I

    if-ne v0, v8, :cond_1

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/community/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    iput-object v0, p0, Lcom/xueqiu/android/community/UserListActivity;->k:Lcom/xueqiu/android/community/model/User;

    .line 95
    :cond_1
    iget v0, p0, Lcom/xueqiu/android/community/UserListActivity;->j:I

    if-eq v0, v9, :cond_2

    iget v0, p0, Lcom/xueqiu/android/community/UserListActivity;->j:I

    if-ne v0, v10, :cond_3

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/community/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_stock"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Stock;

    iput-object v0, p0, Lcom/xueqiu/android/community/UserListActivity;->s:Lcom/xueqiu/android/stock/model/Stock;

    .line 2113
    :cond_3
    new-instance v1, Lcom/xueqiu/android/community/a/ba;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/ba;-><init>(Landroid/app/Activity;)V

    .line 2114
    const v0, 0x7f0e016d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 2115
    new-instance v2, Lcom/xueqiu/android/common/r;

    invoke-direct {v2, v0, p0}, Lcom/xueqiu/android/common/r;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v2, p0, Lcom/xueqiu/android/community/UserListActivity;->r:Lcom/xueqiu/android/common/r;

    .line 2116
    iget-object v0, p0, Lcom/xueqiu/android/community/UserListActivity;->r:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 2118
    iget-object v0, p0, Lcom/xueqiu/android/community/UserListActivity;->r:Lcom/xueqiu/android/common/r;

    new-instance v2, Lcom/xueqiu/android/community/UserListActivity$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/UserListActivity$1;-><init>(Lcom/xueqiu/android/community/UserListActivity;)V

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/r;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2129
    const-string v0, ""

    .line 2130
    iget-object v2, p0, Lcom/xueqiu/android/community/UserListActivity;->k:Lcom/xueqiu/android/community/model/User;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/xueqiu/android/community/UserListActivity;->j:I

    if-eq v2, v6, :cond_4

    iget v2, p0, Lcom/xueqiu/android/community/UserListActivity;->j:I

    if-ne v2, v8, :cond_5

    .line 2131
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/community/UserListActivity;->k:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 3077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 2131
    cmp-long v0, v2, v4

    if-nez v0, :cond_8

    .line 2132
    const v0, 0x7f070229

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2138
    :cond_5
    :goto_0
    iget v2, p0, Lcom/xueqiu/android/community/UserListActivity;->j:I

    if-ne v2, v8, :cond_9

    .line 2140
    const v1, 0x7f0703fc

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/UserListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2141
    iget-object v0, p0, Lcom/xueqiu/android/community/UserListActivity;->r:Lcom/xueqiu/android/common/r;

    const v1, 0x7f070139

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/UserListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Ljava/lang/CharSequence;)V

    .line 2158
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2159
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2160
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    :cond_7
    invoke-virtual {p0}, Lcom/xueqiu/android/community/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_users"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 103
    iput-boolean v6, p0, Lcom/xueqiu/android/community/UserListActivity;->t:Z

    .line 104
    iget-object v1, p0, Lcom/xueqiu/android/community/UserListActivity;->r:Lcom/xueqiu/android/common/r;

    .line 3367
    iget-object v1, v1, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/a/d;->a(Ljava/util/ArrayList;)V

    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/community/UserListActivity;->r:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0, v7}, Lcom/xueqiu/android/common/r;->b(Z)V

    .line 110
    :goto_2
    return-void

    .line 2134
    :cond_8
    iget-object v0, p0, Lcom/xueqiu/android/community/UserListActivity;->k:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2143
    :cond_9
    iget v2, p0, Lcom/xueqiu/android/community/UserListActivity;->j:I

    if-ne v2, v6, :cond_a

    .line 2144
    const v1, 0x7f070564

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/UserListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2145
    iget-object v0, p0, Lcom/xueqiu/android/community/UserListActivity;->r:Lcom/xueqiu/android/common/r;

    const v1, 0x7f070132

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/UserListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2147
    :cond_a
    iget v0, p0, Lcom/xueqiu/android/community/UserListActivity;->j:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    .line 2148
    const v0, 0x7f070356

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserListActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2150
    :cond_b
    iget v0, p0, Lcom/xueqiu/android/community/UserListActivity;->j:I

    if-ne v0, v9, :cond_c

    .line 3304
    iput-boolean v6, v1, Lcom/xueqiu/android/community/a/ba;->f:Z

    goto :goto_1

    .line 2154
    :cond_c
    iget v0, p0, Lcom/xueqiu/android/community/UserListActivity;->j:I

    if-ne v0, v10, :cond_6

    .line 2155
    const v0, 0x7f0703fc

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xueqiu/android/community/UserListActivity;->s:Lcom/xueqiu/android/stock/model/Stock;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/community/UserListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserListActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 107
    :cond_d
    iget-object v0, p0, Lcom/xueqiu/android/community/UserListActivity;->r:Lcom/xueqiu/android/common/r;

    .line 4225
    invoke-virtual {v0, v6}, Lcom/xueqiu/android/common/r;->a(Z)V

    goto :goto_2
.end method
