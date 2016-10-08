.class final Lcom/xueqiu/android/message/TalkProfileActivity$13$1;
.super Ljava/lang/Object;
.source "TalkProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/TalkProfileActivity$13;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/xueqiu/android/message/TalkProfileActivity$13;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/TalkProfileActivity$13;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$13$1;->b:Lcom/xueqiu/android/message/TalkProfileActivity$13;

    iput-object p2, p0, Lcom/xueqiu/android/message/TalkProfileActivity$13$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 271
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$13$1;->b:Lcom/xueqiu/android/message/TalkProfileActivity$13;

    iget-object v0, v0, Lcom/xueqiu/android/message/TalkProfileActivity$13;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->d(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/message/client/MessageService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Lcom/snowballfinance/messageplatform/a/d;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/d;-><init>()V

    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 1077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 273
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1505
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/d;->c:Ljava/lang/Long;

    .line 274
    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$13$1;->b:Lcom/xueqiu/android/message/TalkProfileActivity$13;

    iget-object v1, v1, Lcom/xueqiu/android/message/TalkProfileActivity$13;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/TalkProfileActivity;->c(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1513
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/d;->d:Ljava/lang/Long;

    .line 275
    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$13$1;->b:Lcom/xueqiu/android/message/TalkProfileActivity$13;

    iget-object v1, v1, Lcom/xueqiu/android/message/TalkProfileActivity$13;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/TalkProfileActivity;->c(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1521
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/d;->e:Ljava/lang/Boolean;

    .line 276
    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$13$1;->b:Lcom/xueqiu/android/message/TalkProfileActivity$13;

    iget-object v1, v1, Lcom/xueqiu/android/message/TalkProfileActivity$13;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/TalkProfileActivity;->d(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/message/client/MessageService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/client/MessageService;->a(Lcom/snowballfinance/messageplatform/a/a;)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$13$1;->b:Lcom/xueqiu/android/message/TalkProfileActivity$13;

    iget-object v0, v0, Lcom/xueqiu/android/message/TalkProfileActivity$13;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$13$1;->b:Lcom/xueqiu/android/message/TalkProfileActivity$13;

    iget-object v1, v1, Lcom/xueqiu/android/message/TalkProfileActivity$13;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/TalkProfileActivity;->c(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$13$1;->b:Lcom/xueqiu/android/message/TalkProfileActivity$13;

    iget-object v1, v1, Lcom/xueqiu/android/message/TalkProfileActivity$13;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/TalkProfileActivity;->c(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->deleteMessages(JZ)V

    .line 279
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$13$1;->b:Lcom/xueqiu/android/message/TalkProfileActivity$13;

    iget-object v0, v0, Lcom/xueqiu/android/message/TalkProfileActivity$13;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->c(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setSummary(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$13$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$13$1;->b:Lcom/xueqiu/android/message/TalkProfileActivity$13;

    iget-object v1, v1, Lcom/xueqiu/android/message/TalkProfileActivity$13;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/TalkProfileActivity;->c(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveTalk(Lcom/xueqiu/android/message/model/Talk;)V

    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.clearTalkHistory"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    const-string v1, "extra_talk"

    iget-object v2, p0, Lcom/xueqiu/android/message/TalkProfileActivity$13$1;->b:Lcom/xueqiu/android/message/TalkProfileActivity$13;

    iget-object v2, v2, Lcom/xueqiu/android/message/TalkProfileActivity$13;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v2}, Lcom/xueqiu/android/message/TalkProfileActivity;->c(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 283
    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$13$1;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 284
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$13$1;->b:Lcom/xueqiu/android/message/TalkProfileActivity$13;

    iget-object v0, v0, Lcom/xueqiu/android/message/TalkProfileActivity$13;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/TalkProfileActivity;->setResult(I)V

    .line 285
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$13$1;->b:Lcom/xueqiu/android/message/TalkProfileActivity$13;

    iget-object v0, v0, Lcom/xueqiu/android/message/TalkProfileActivity$13;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->finish()V

    .line 286
    return-void
.end method
