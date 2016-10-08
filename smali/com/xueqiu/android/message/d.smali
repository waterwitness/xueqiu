.class public final Lcom/xueqiu/android/message/d;
.super Lcom/xueqiu/android/common/c;
.source "TalkListFragment.java"


# instance fields
.field a:Lcom/xueqiu/android/message/a/z;

.field b:Z

.field c:Lcom/xueqiu/android/message/client/MessageService;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Talk;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/View;

.field private f:Landroid/content/ServiceConnection;

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 74
    new-instance v0, Lcom/xueqiu/android/message/d$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/message/d$1;-><init>(Lcom/xueqiu/android/message/d;)V

    iput-object v0, p0, Lcom/xueqiu/android/message/d;->f:Landroid/content/ServiceConnection;

    .line 98
    new-instance v0, Lcom/xueqiu/android/message/d$7;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/message/d$7;-><init>(Lcom/xueqiu/android/message/d;)V

    iput-object v0, p0, Lcom/xueqiu/android/message/d;->g:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private C()V
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/xueqiu/android/message/d;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalks(Z)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->a(Ljava/lang/Iterable;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/d$6;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/d$6;-><init>(Lcom/xueqiu/android/message/d;)V

    .line 258
    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/d$5;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/d$5;-><init>(Lcom/xueqiu/android/message/d;)V

    .line 267
    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/c/g;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/d$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/d$4;-><init>(Lcom/xueqiu/android/message/d;)V

    .line 272
    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    .line 286
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/message/d;)Lcom/xueqiu/android/message/a/z;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/message/d;->a:Lcom/xueqiu/android/message/a/z;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/message/d;Lcom/xueqiu/android/message/client/MessageService;)Lcom/xueqiu/android/message/client/MessageService;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/xueqiu/android/message/d;->c:Lcom/xueqiu/android/message/client/MessageService;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/message/d;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/xueqiu/android/message/d;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/message/model/Talk;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 57
    .line 3289
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 3290
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3291
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->getIMGroupById(J)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v0

    .line 3292
    if-eqz v0, :cond_3

    .line 3293
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/model/Talk;->setName(Ljava/lang/String;)V

    .line 3294
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/model/Talk;->setProfileImageUrl(Ljava/lang/String;)V

    .line 3295
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Talk;->setGroupRef(Lcom/xueqiu/android/message/model/IMGroup;)V

    .line 3313
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3314
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/af;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Talk;->setPinyin(Ljava/lang/String;)V

    .line 57
    :cond_2
    return-void

    .line 3297
    :cond_3
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/model/Talk;->setActive(Z)V

    goto :goto_0

    .line 3300
    :cond_4
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    .line 3301
    if-eqz v0, :cond_6

    .line 3302
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3303
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "50x50"

    const-string v3, "100x100"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/model/Talk;->setProfileImageUrl(Ljava/lang/String;)V

    .line 3305
    :cond_5
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/model/Talk;->setName(Ljava/lang/String;)V

    .line 3306
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Talk;->setUserRef(Lcom/xueqiu/android/community/model/User;)V

    goto :goto_0

    .line 3308
    :cond_6
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/model/Talk;->setActive(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/message/d;)Ljava/util/List;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/message/d;->d:Ljava/util/List;

    return-object v0
.end method

.method public static u()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 340
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 1564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 126
    if-eqz v0, :cond_0

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 127
    const-string v1, "extra_collapsed_boolean"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/message/d;->b:Z

    .line 129
    :cond_0
    iget-boolean v0, p0, Lcom/xueqiu/android/message/d;->b:Z

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/xueqiu/android/message/d;->w()Landroid/support/v7/a/a;

    move-result-object v0

    const v1, 0x7f0703d1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->b(I)V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/d;->e:Landroid/view/View;

    if-nez v0, :cond_2

    .line 133
    const v0, 0x7f03017a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/d;->e:Landroid/view/View;

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/message/d;->e:Landroid/view/View;

    return-object v0

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/message/d;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xueqiu/android/message/d;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/xueqiu/android/message/d;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xueqiu/android/message/d;->f()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/message/client/MessageService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/xueqiu/android/message/d;->f:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 114
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 115
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 143
    invoke-direct {p0}, Lcom/xueqiu/android/message/d;->C()V

    .line 144
    const v0, 0x7f0e0579

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 145
    new-instance v1, Lcom/xueqiu/android/message/a/z;

    invoke-virtual {p0}, Lcom/xueqiu/android/message/d;->g()Landroid/support/v4/a/k;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/message/d;->d:Ljava/util/List;

    iget-boolean v4, p0, Lcom/xueqiu/android/message/d;->b:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/xueqiu/android/message/a/z;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V

    iput-object v1, p0, Lcom/xueqiu/android/message/d;->a:Lcom/xueqiu/android/message/a/z;

    .line 146
    iget-object v1, p0, Lcom/xueqiu/android/message/d;->a:Lcom/xueqiu/android/message/a/z;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    new-instance v1, Lcom/xueqiu/android/message/d$8;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/d$8;-><init>(Lcom/xueqiu/android/message/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 156
    new-instance v1, Lcom/xueqiu/android/message/d$9;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/d$9;-><init>(Lcom/xueqiu/android/message/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    const-string v1, "com.xueqiu.android.action.sendRead"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v1, "com.xueqiu.android.action.setTalkState"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v1, "com.xueqiu.android.action.updateIMGroup"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v1, "com.xueqiu.android.action.updateUser"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/xueqiu/android/message/d;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/message/d;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 183
    sget-object v0, Lcom/xueqiu/android/message/client/c;->a:Lrx/i/c;

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Ljava/lang/Object;Lrx/a;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/d$10;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/d$10;-><init>(Lcom/xueqiu/android/message/d;)V

    new-instance v2, Lcom/xueqiu/android/message/d$11;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/d$11;-><init>(Lcom/xueqiu/android/message/d;)V

    invoke-virtual {v0, v1, v2}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/d;->a(Lrx/j;)V

    .line 194
    sget-object v0, Lcom/xueqiu/android/message/client/c;->c:Lrx/i/c;

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Ljava/lang/Object;Lrx/a;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/d$12;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/d$12;-><init>(Lcom/xueqiu/android/message/d;)V

    new-instance v2, Lcom/xueqiu/android/message/d$13;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/d$13;-><init>(Lcom/xueqiu/android/message/d;)V

    invoke-virtual {v0, v1, v2}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/d;->a(Lrx/j;)V

    .line 205
    sget-object v0, Lcom/xueqiu/android/message/client/c;->b:Lrx/i/c;

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Ljava/lang/Object;Lrx/a;)Lrx/a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/a;->i()Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/d$14;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/d$14;-><init>(Lcom/xueqiu/android/message/d;)V

    new-instance v2, Lcom/xueqiu/android/message/d$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/d$2;-><init>(Lcom/xueqiu/android/message/d;)V

    invoke-virtual {v0, v1, v2}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/d;->a(Lrx/j;)V

    .line 216
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/xueqiu/android/message/d;->a:Lcom/xueqiu/android/message/a/z;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/xueqiu/android/message/d;->a:Lcom/xueqiu/android/message/a/z;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/message/a/z;->b(Ljava/util/List;)V

    .line 323
    :cond_0
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Talk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/xueqiu/android/message/d;->a:Lcom/xueqiu/android/message/a/z;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/xueqiu/android/message/d;->a:Lcom/xueqiu/android/message/a/z;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/message/a/z;->a(Ljava/util/List;)V

    .line 335
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->e()V

    .line 227
    invoke-virtual {p0}, Lcom/xueqiu/android/message/d;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/d;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 228
    return-void
.end method

.method public final o()V
    .locals 0

    .prologue
    .line 220
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->o()V

    .line 221
    invoke-direct {p0}, Lcom/xueqiu/android/message/d;->C()V

    .line 222
    return-void
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/xueqiu/android/message/d;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/d;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 120
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->q()V

    .line 121
    return-void
.end method
