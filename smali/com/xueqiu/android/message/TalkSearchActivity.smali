.class public Lcom/xueqiu/android/message/TalkSearchActivity;
.super Lcom/xueqiu/android/common/b;
.source "TalkSearchActivity.java"


# instance fields
.field private j:Landroid/widget/EditText;

.field private k:Lcom/xueqiu/android/base/b/x;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Talk;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/view/View;

.field private r:Lcom/xueqiu/android/message/a/u;

.field private s:Landroid/view/View;

.field private t:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

.field private u:Lcom/d/a/b/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/message/TalkSearchActivity;)Lcom/xueqiu/android/message/a/u;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->r:Lcom/xueqiu/android/message/a/u;

    return-object v0
.end method

.method static synthetic a(Ljava/util/List;)Lcom/xueqiu/android/message/a/y;
    .locals 1

    .prologue
    .line 50
    invoke-static {p0}, Lcom/xueqiu/android/message/TalkSearchActivity;->b(Ljava/util/List;)Lcom/xueqiu/android/message/a/y;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/message/TalkSearchActivity;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 50
    .line 6212
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->k:Lcom/xueqiu/android/base/b/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->k:Lcom/xueqiu/android/base/b/x;

    .line 6336
    iget-boolean v0, v0, Lcom/android/volley/n;->h:Z

    .line 6212
    if-nez v0, :cond_0

    .line 6213
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->k:Lcom/xueqiu/android/base/b/x;

    .line 7329
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/volley/n;->h:Z

    .line 6216
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6217
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->p:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 6218
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 6219
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getPinyin()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6220
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/af;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/message/model/Talk;->setPinyin(Ljava/lang/String;)V

    .line 6222
    :cond_2
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isCollapsed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6223
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getPinyin()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getPinyin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 6224
    :cond_3
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6225
    :cond_4
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6230
    :cond_5
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/storage/DBManager;->getIMGroupsByKeyword(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 6231
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6232
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/IMGroup;

    .line 6233
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6236
    :cond_6
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/storage/DBManager;->getUsersByKeyword(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 6237
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6238
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6239
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 6240
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 6242
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 6243
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v7

    if-nez v7, :cond_8

    .line 6244
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 6246
    :cond_8
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 6249
    :cond_9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 6250
    invoke-static {v5}, Lcom/xueqiu/android/message/TalkSearchActivity;->d(Ljava/util/List;)Lcom/xueqiu/android/message/a/y;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6252
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6253
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 6254
    invoke-static {v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->c(Ljava/util/List;)Lcom/xueqiu/android/message/a/y;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6256
    :cond_b
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 6257
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6258
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 6259
    invoke-static {v4}, Lcom/xueqiu/android/message/TalkSearchActivity;->b(Ljava/util/List;)Lcom/xueqiu/android/message/a/y;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6262
    :cond_c
    new-instance v0, Lcom/xueqiu/android/message/TalkSearchActivity$5;

    invoke-direct {v0, p0, v3}, Lcom/xueqiu/android/message/TalkSearchActivity$5;-><init>(Lcom/xueqiu/android/message/TalkSearchActivity;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 8180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v6

    .line 6272
    new-instance v0, Lcom/xueqiu/android/message/TalkSearchActivity$6;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/message/TalkSearchActivity$6;-><init>(Lcom/xueqiu/android/message/TalkSearchActivity;Lcom/xueqiu/android/base/b/q;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 9041
    iget-object v1, v6, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v1, p1, v0}, Lcom/xueqiu/android/base/b/an;->a(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 6272
    iput-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->k:Lcom/xueqiu/android/base/b/x;

    .line 50
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/message/TalkSearchActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method private static b(Ljava/util/List;)Lcom/xueqiu/android/message/a/y;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;)",
            "Lcom/xueqiu/android/message/a/y;"
        }
    .end annotation

    .prologue
    .line 314
    new-instance v2, Lcom/xueqiu/android/message/a/y;

    invoke-direct {v2}, Lcom/xueqiu/android/message/a/y;-><init>()V

    .line 315
    const-string v0, "\u7528\u6237"

    .line 3218
    iput-object v0, v2, Lcom/xueqiu/android/message/a/y;->b:Ljava/lang/String;

    .line 3226
    const/4 v0, 0x2

    iput v0, v2, Lcom/xueqiu/android/message/a/y;->c:I

    .line 317
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 318
    new-instance v4, Lcom/xueqiu/android/message/a/x;

    .line 319
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProfileLargeImageUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProfileLargeImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 320
    :goto_1
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v5

    .line 321
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v1, v5, v6}, Lcom/xueqiu/android/message/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3275
    iput-object v0, v4, Lcom/xueqiu/android/message/a/x;->d:Ljava/lang/Object;

    .line 4206
    iget-object v0, v2, Lcom/xueqiu/android/message/a/y;->a:Ljava/util/List;

    .line 323
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 325
    :cond_1
    return-object v2
.end method

.method static synthetic c(Lcom/xueqiu/android/message/TalkSearchActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->s:Landroid/view/View;

    return-object v0
.end method

.method private static c(Ljava/util/List;)Lcom/xueqiu/android/message/a/y;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;)",
            "Lcom/xueqiu/android/message/a/y;"
        }
    .end annotation

    .prologue
    .line 329
    new-instance v1, Lcom/xueqiu/android/message/a/y;

    invoke-direct {v1}, Lcom/xueqiu/android/message/a/y;-><init>()V

    .line 330
    const-string v0, "\u5df2\u52a0\u5165\u7fa4\u7ec4"

    .line 4218
    iput-object v0, v1, Lcom/xueqiu/android/message/a/y;->b:Ljava/lang/String;

    .line 4226
    const/4 v0, 0x1

    iput v0, v1, Lcom/xueqiu/android/message/a/y;->c:I

    .line 332
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/IMGroup;

    .line 333
    new-instance v3, Lcom/xueqiu/android/message/a/x;

    .line 334
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v4

    .line 335
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getName()Ljava/lang/String;

    move-result-object v5

    .line 336
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/xueqiu/android/message/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4275
    iput-object v0, v3, Lcom/xueqiu/android/message/a/x;->d:Ljava/lang/Object;

    .line 5206
    iget-object v0, v1, Lcom/xueqiu/android/message/a/y;->a:Ljava/util/List;

    .line 338
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 340
    :cond_0
    return-object v1
.end method

.method static synthetic d(Lcom/xueqiu/android/message/TalkSearchActivity;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->t:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    return-object v0
.end method

.method private static d(Ljava/util/List;)Lcom/xueqiu/android/message/a/y;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Talk;",
            ">;)",
            "Lcom/xueqiu/android/message/a/y;"
        }
    .end annotation

    .prologue
    .line 344
    new-instance v1, Lcom/xueqiu/android/message/a/y;

    invoke-direct {v1}, Lcom/xueqiu/android/message/a/y;-><init>()V

    .line 345
    const-string v0, "\u672c\u5730\u5bf9\u8bdd"

    .line 5218
    iput-object v0, v1, Lcom/xueqiu/android/message/a/y;->b:Ljava/lang/String;

    .line 5226
    const/4 v0, 0x0

    iput v0, v1, Lcom/xueqiu/android/message/a/y;->c:I

    .line 347
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 348
    new-instance v3, Lcom/xueqiu/android/message/a/x;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getSummary()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/xueqiu/android/message/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5275
    iput-object v0, v3, Lcom/xueqiu/android/message/a/x;->d:Ljava/lang/Object;

    .line 6206
    iget-object v0, v1, Lcom/xueqiu/android/message/a/y;->a:Ljava/util/List;

    .line 350
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 352
    :cond_0
    return-object v1
.end method

.method static synthetic e(Lcom/xueqiu/android/message/TalkSearchActivity;)Lcom/d/a/b/f;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->u:Lcom/d/a/b/f;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 357
    invoke-virtual {p0, v0, v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->a(II)V

    .line 358
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 65
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f030046

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->setContentView(I)V

    .line 68
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->u:Lcom/d/a/b/f;

    .line 70
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalks(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->p:Ljava/util/List;

    .line 71
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->j:Landroid/widget/EditText;

    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 73
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->j:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/xueqiu/android/message/TalkSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 74
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->j:Landroid/widget/EditText;

    new-instance v2, Landroid/support/v7/a/c;

    invoke-direct {v2, v4}, Landroid/support/v7/a/c;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/a/a;->a(Landroid/view/View;Landroid/support/v7/a/c;)V

    .line 2066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 77
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->d(Z)V

    .line 3066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v3}, Landroid/support/v7/a/a;->c(Z)V

    .line 80
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->j:Landroid/widget/EditText;

    const v1, 0x7f070465

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 81
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->j:Landroid/widget/EditText;

    const v1, 0x7f070348

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/TalkSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/message/TalkSearchActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/TalkSearchActivity$1;-><init>(Lcom/xueqiu/android/message/TalkSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 102
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/message/TalkSearchActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/TalkSearchActivity$2;-><init>(Lcom/xueqiu/android/message/TalkSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 140
    const v0, 0x7f0e018e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->q:Landroid/view/View;

    .line 141
    const v0, 0x7f0e013f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->t:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    .line 142
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->t:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAreHeadersSticky(Z)V

    .line 143
    new-instance v0, Lcom/xueqiu/android/message/a/u;

    invoke-virtual {p0}, Lcom/xueqiu/android/message/TalkSearchActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->u:Lcom/d/a/b/f;

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/message/a/u;-><init>(Landroid/content/Context;Lcom/d/a/b/f;)V

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->r:Lcom/xueqiu/android/message/a/u;

    .line 144
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->t:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->r:Lcom/xueqiu/android/message/a/u;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAdapter(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;)V

    .line 145
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->t:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setEmptyView(Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->q:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->t:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    new-instance v1, Lcom/xueqiu/android/message/TalkSearchActivity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/TalkSearchActivity$3;-><init>(Lcom/xueqiu/android/message/TalkSearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 166
    const v0, 0x7f0e0141

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->s:Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity;->t:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    new-instance v1, Lcom/xueqiu/android/message/TalkSearchActivity$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/TalkSearchActivity$4;-><init>(Lcom/xueqiu/android/message/TalkSearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 209
    return-void
.end method
