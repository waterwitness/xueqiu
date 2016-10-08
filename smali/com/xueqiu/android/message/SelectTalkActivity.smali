.class public Lcom/xueqiu/android/message/SelectTalkActivity;
.super Lcom/xueqiu/android/common/b;
.source "SelectTalkActivity.java"


# static fields
.field static final synthetic k:Z


# instance fields
.field j:Landroid/support/v4/content/r;

.field private p:Landroid/widget/ListView;

.field private q:Lcom/xueqiu/android/message/a/z;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Talk;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/xueqiu/android/message/model/Message;

.field private t:Landroid/net/Uri;

.field private u:Landroid/widget/EditText;

.field private v:Landroid/view/View;

.field private w:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/xueqiu/android/message/SelectTalkActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/xueqiu/android/message/SelectTalkActivity;->k:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/message/SelectTalkActivity;)Lcom/xueqiu/android/message/model/Message;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->s:Lcom/xueqiu/android/message/model/Message;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/message/SelectTalkActivity;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 4175
    sget-boolean v0, Lcom/xueqiu/android/message/SelectTalkActivity;->k:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4176
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4177
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->q:Lcom/xueqiu/android/message/a/z;

    iget-object v1, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->r:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/a/z;->c(Ljava/util/List;)Lcom/xueqiu/android/message/a/z;

    .line 4178
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->q:Lcom/xueqiu/android/message/a/z;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/z;->notifyDataSetChanged()V

    .line 4179
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4180
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->w:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    .line 4182
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4183
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4185
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 4186
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 4187
    :cond_3
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getPinyin()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getPinyin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4188
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4191
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->q:Lcom/xueqiu/android/message/a/z;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/a/z;->c(Ljava/util/List;)Lcom/xueqiu/android/message/a/z;

    .line 4192
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->q:Lcom/xueqiu/android/message/a/z;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/z;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/message/SelectTalkActivity;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->t:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method protected final b(I)V
    .locals 6

    .prologue
    .line 197
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->p:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 199
    const-string v2, "talk"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 200
    iget-object v2, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->s:Lcom/xueqiu/android/message/model/Message;

    if-eqz v2, :cond_1

    .line 201
    iget-object v2, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->s:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v2

    .line 4069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 4077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 201
    invoke-virtual {v0, v2, v4, v5}, Lcom/xueqiu/android/message/model/Talk;->allocateMessage(IJ)Lcom/xueqiu/android/message/model/Message;

    move-result-object v0

    .line 202
    iget-object v2, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->s:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/message/model/Message;->setText(Ljava/lang/String;)V

    .line 203
    const-string v2, "extra_message"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 208
    :cond_0
    :goto_0
    const/high16 v0, 0x40880000    # 4.25f

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/SelectTalkActivity;->startActivity(Landroid/content/Intent;)V

    .line 212
    invoke-virtual {p0}, Lcom/xueqiu/android/message/SelectTalkActivity;->finish()V

    .line 213
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->t:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "extra_image_uri"

    iget-object v2, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->t:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->t:Landroid/net/Uri;

    goto :goto_0
.end method

.method public createTalk(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 244
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/message/SelectUserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    iget-object v1, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->s:Lcom/xueqiu/android/message/model/Message;

    if-eqz v1, :cond_0

    .line 246
    const-string v1, "extra_message"

    iget-object v2, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->s:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->t:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 249
    const-string v1, "extra_forward_image_uri"

    iget-object v2, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->t:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 251
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/message/SelectTalkActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 252
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/xueqiu/android/message/SelectTalkActivity;->finish()V

    .line 240
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 241
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f030174

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/SelectTalkActivity;->setContentView(I)V

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 2186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 1255
    if-eqz v0, :cond_0

    .line 1256
    invoke-static {p0, v1}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    move v0, v1

    .line 65
    :goto_0
    if-eqz v0, :cond_1

    .line 172
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 1259
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/message/SelectTalkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 69
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 72
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v4, :cond_6

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 3193
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->c:Z

    .line 73
    if-nez v0, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/xueqiu/android/message/SelectTalkActivity;->finish()V

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xueqiu/android/message/SelectTalkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/xueqiu/android/common/WelcomeActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    invoke-virtual {p0}, Lcom/xueqiu/android/message/SelectTalkActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const v4, 0x8000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/SelectTalkActivity;->startActivity(Landroid/content/Intent;)V

    .line 81
    :cond_2
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 82
    if-eqz v0, :cond_5

    .line 83
    iput-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->t:Landroid/net/Uri;

    .line 95
    :cond_3
    :goto_2
    const-string v0, "extra_exclude_talk_id"

    invoke-virtual {v3, v0, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 97
    invoke-virtual {p0}, Lcom/xueqiu/android/message/SelectTalkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->j:Landroid/support/v4/content/r;

    .line 98
    const v0, 0x7f0e0574

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/SelectTalkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->p:Landroid/widget/ListView;

    .line 99
    invoke-virtual {p0}, Lcom/xueqiu/android/message/SelectTalkActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalks(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->r:Ljava/util/List;

    .line 100
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 101
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 102
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v6

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/xueqiu/android/base/storage/DBManager;->getIMGroupById(J)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v6

    .line 103
    if-eqz v6, :cond_4

    .line 104
    invoke-virtual {v6}, Lcom/xueqiu/android/message/model/IMGroup;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/xueqiu/android/message/model/Talk;->setName(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v6}, Lcom/xueqiu/android/message/model/IMGroup;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/xueqiu/android/message/model/Talk;->setProfileImageUrl(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, v6}, Lcom/xueqiu/android/message/model/Talk;->setGroupRef(Lcom/xueqiu/android/message/model/IMGroup;)V

    goto :goto_3

    .line 85
    :cond_5
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    new-instance v4, Lcom/xueqiu/android/message/model/Message;

    invoke-direct {v4}, Lcom/xueqiu/android/message/model/Message;-><init>()V

    iput-object v4, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->s:Lcom/xueqiu/android/message/model/Message;

    .line 88
    iget-object v4, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->s:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v4, v2}, Lcom/xueqiu/android/message/model/Message;->setType(I)V

    .line 89
    iget-object v4, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->s:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v4, v0}, Lcom/xueqiu/android/message/model/Message;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 93
    :cond_6
    const-string v0, "extra_message"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Message;

    iput-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->s:Lcom/xueqiu/android/message/model/Message;

    goto/16 :goto_2

    .line 109
    :cond_7
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v6

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v6

    .line 110
    if-eqz v6, :cond_4

    .line 111
    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/xueqiu/android/message/model/Talk;->setName(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/xueqiu/android/message/model/Talk;->setProfileImageUrl(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, v6}, Lcom/xueqiu/android/message/model/Talk;->setUserRef(Lcom/xueqiu/android/community/model/User;)V

    goto :goto_3

    .line 118
    :cond_8
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 119
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 120
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 121
    cmp-long v6, v4, v10

    if-lez v6, :cond_9

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_9

    .line 122
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 124
    :cond_9
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 125
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xueqiu/android/base/util/af;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/xueqiu/android/message/model/Talk;->setPinyin(Ljava/lang/String;)V

    .line 128
    :cond_a
    invoke-virtual {v0, v2}, Lcom/xueqiu/android/message/model/Talk;->setUnread(I)Lcom/xueqiu/android/message/model/Talk;

    goto :goto_4

    .line 132
    :cond_b
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->r:Ljava/util/List;

    sget-object v2, Lcom/xueqiu/android/message/model/Talk;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 133
    new-instance v0, Lcom/xueqiu/android/message/a/z;

    iget-object v2, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->r:Ljava/util/List;

    invoke-direct {v0, p0, v2, v1}, Lcom/xueqiu/android/message/a/z;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->q:Lcom/xueqiu/android/message/a/z;

    .line 134
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->q:Lcom/xueqiu/android/message/a/z;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->p:Landroid/widget/ListView;

    new-instance v1, Lcom/xueqiu/android/message/SelectTalkActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/SelectTalkActivity$1;-><init>(Lcom/xueqiu/android/message/SelectTalkActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 153
    const v0, 0x7f0e0575

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/SelectTalkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->u:Landroid/widget/EditText;

    .line 154
    const v0, 0x7f0e0576

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/SelectTalkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->v:Landroid/view/View;

    .line 155
    const v0, 0x7f0e0573

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/SelectTalkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->w:Landroid/view/View;

    .line 156
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity;->u:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/message/SelectTalkActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/SelectTalkActivity$2;-><init>(Lcom/xueqiu/android/message/SelectTalkActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 221
    const/4 v0, 0x1

    .line 222
    invoke-virtual {p0}, Lcom/xueqiu/android/message/SelectTalkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070127

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020262

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    .line 221
    invoke-static {v0, v1}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 224
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 229
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/xueqiu/android/message/SelectTalkActivity;->finish()V

    .line 232
    :cond_0
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
