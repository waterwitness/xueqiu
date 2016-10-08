.class final Lcom/xueqiu/android/message/TalkProfileActivity$17;
.super Lcom/xueqiu/android/base/b/p;
.source "TalkProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/TalkProfileActivity;->a(Lcom/xueqiu/android/message/model/IMGroup;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/TalkProfileActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/TalkProfileActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$17;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 363
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 359
    check-cast p1, Lcom/xueqiu/android/community/model/User;

    .line 1367
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$17;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->e(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/message/model/IMGroup;->setMaster(Lcom/xueqiu/android/community/model/User;)V

    .line 1368
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$17;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->i(Lcom/xueqiu/android/message/TalkProfileActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u7fa4\u4e3b\uff1a%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xueqiu/android/message/TalkProfileActivity$17;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v4}, Lcom/xueqiu/android/message/TalkProfileActivity;->e(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/IMGroup;->getMaster()Lcom/xueqiu/android/community/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1369
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$17;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->j(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/storage/DBManager;->insertOrUpdateUserByKeepFollowShip(Lcom/xueqiu/android/community/model/User;)Z

    .line 359
    return-void
.end method
